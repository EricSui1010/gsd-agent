# Multi-Agent Orchestration Workflow

> **Source**: GSD-2 enhanced with Matt Pocock methodology
> **Purpose**: Professional team-based execution with specialized agents
> **Scale**: Research(×4) → Plan(2) → Execute(N) → Review(5) → Verify(2)

---

## Team Composition

```
                    ┌─────────────────────────┐
                    │   GSD Agent v3.0        │
                    │   (Orchestrator)        │
                    └───────────┬─────────────┘
                                │
        ┌───────────────────────┼───────────────────────┐
        │                       │                       │
        ▼                       ▼                       ▼
┌───────────────┐     ┌───────────────┐     ┌───────────────┐
│  RESEARCH     │     │  PLANNING     │     │  EXECUTION    │
│  TEAM (×4)    │     │  TEAM (2)     │     │  TEAM (N)     │
│               │     │               │     │               │
│ • R1: Feasibility│    │ • Planner     │     │ • Executor-1  │
│ • R2: Reference │    │ • Checker     │     │ • Executor-2  │
│ • R3: Risks    │     │               │     │ • Executor-N  │
│ • R4: Best     │     │               │     │               │
│   Practices    │     │               │     │               │
└───────────────┘     └───────────────┘     └───────────────┘
        │                       │                       │
        │                       │                       │
        ▼                       ▼                       ▼
┌───────────────┐     ┌───────────────┐     ┌───────────────┐
│  REVIEW       │     │  VERIFICATION │     │  QUALITY      │
│  TEAM (5)     │     │  TEAM (2)     │     │  GATES        │
│               │     │               │     │               │
│ • L0-Basic    │     │ • Verifier    │     │ • TDD Check   │
│ • L1-Design   │     │ • Debugger    │     │ • Coverage ≥80%│
│ • L2-Security │     │               │     │ • Reviews Pass │
│ • ZoomOut     │     │               │     │ • No Critical  │
│ • Consistency │     │               │     │ • Rules Comply │
└───────────────┘     └───────────────┘     └───────────────┘
```

---

## 🔒 Agent Review Separation (IRON RULE #1)

> **优先级**: 强制执行 | **容忍度**: 零 | **违反后果**: 审查结果无效

### 核心原则：干活的人不能审自己干的活

**绝对禁止的情况**:
- ❌ Executor编写代码后，自己进行L0/L1/L2/ZoomOut/Consistency审查
- ❌ 同一个Agent实例同时扮演Execution和Review角色
- ❌ Review团队访问Execution团队的内部决策过程或推理日志
- ❌ Execution团队修改代码以通过特定的Review检查（ gaming the system ）

### 独立性保证机制

#### 1. 团队隔离 (Team Isolation)
```yaml
execution_team:
  scope: "ONLY implementation"
  forbidden_actions:
    - "run_any_review_check"
    - "access_review_criteria"
    - "modify_code_to_pass_review"
    - "communicate_with_reviewers_directly"
  
review_team:
  scope: "ONLY evaluation"
  access_permissions:
    - "final_code_artifacts_only"  # 只能看最终产物
    - "test_results"              # 测试结果
    - "requirements_spec"         # 需求规格
  forbidden_access:
    - "implementation_decisions"  # 不能看实现决策
    - "executor_reasoning_logs"   # 不能看推理过程
    - "internal_comm discussions" # 不能看内部讨论
    - "attempt_history"           # 不能看尝试历史
```

#### 2. 信息屏障 (Information Barrier)
```python
class InformationBarrier:
    """
    确保Review团队只能看到必要信息，防止偏见
    """
    
    def prepare_review_context(self, execution_output):
        """
        过滤Execution输出，只保留Review需要的信息
        """
        review_context = {
            'code_files': execution_output.final_artifacts,
            'test_results': execution_output.test_suite_results,
            'requirements': self._load_original_requirements(),
            'acceptance_criteria': self._load_acceptance_criteria(),
            
            # 明确移除以下内容
            'REMOVED_executor_notes': None,
            'REMOVED_implementation_strategy': None,
            'REMOVED_debug_logs': None,
            'REMOVED_failed_attempts': None,
            'REMOVED_rationale': None
        }
        
        return review_context
    
    def verify_independence(self, reviewer_id, executor_id):
        """
        验证Reviewer和Executor不是同一个Agent实例
        """
        assert reviewer_id != executor_id, \
            f"CRITICAL: Reviewer {reviewer_id} cannot review their own work!"
        
        assert not self._share_context(reviewer_id, executor_id), \
            f"WARNING: Reviewer and Executor may share context memory"
        
        return True
```

#### 3. 强制独立性检查 (Mandatory Independence Check)
```yaml
pre_review_validation:
  checks:
    - name: "different_agent_instances"
      description: "确认Executor和Reviewer是不同的Agent实例"
      severity: "CRITICAL"
      failure_action: "ABORT_REVIEW_AND_REASSIGN"
      
    - name: "no_shared_memory"
      description: "确认没有共享上下文或记忆"
      severity: "CRITICAL"
      failure_action: "CLEAR_CONTEXT_AND_RETRY"
      
    - name: "clean_handoff"
      description: "确认交接是通过Orchestrator进行的，无直接通信"
      severity: "HIGH"
      failure_action: "LOG_WARNING_AND_CONTINUE"
      
    - name: "time_gap_exists"
      description: "建议Execution完成后至少等待30秒再开始Review"
      severity: "LOW"
      failure_action: "SUGGEST_WAIT_AND_LOG"

  independence_score:
    calculation: "weighted_average_of_all_checks"
    minimum_threshold: 95%  # 低于此分数则审查无效
```

#### 4. 防自我审查协议 (Anti-Self-Review Protocol)
```markdown
## 执行流程

### Execution Phase (干活的团队)
1. Executor接收任务计划
2. 按照TDD流程实现（RED → GREEN → REFACTOR）
3. 运行测试、lint、typecheck
4. **只提交最终产物**（代码+测试+文档）
5. **严禁**在代码中包含解释性注释说明"为什么这样写"
6. 通过Orchestrator将产物交给Review团队

### Review Phase (审查的团队)  
1. Reviewer接收**清洗后的上下文**（只有代码+测试+需求）
2. Reviewer**不知道**这段代码是谁写的
3. Reviewer**不知道**实现过程中遇到了什么困难
4. Reviewer**只能基于代码质量和需求符合度进行评判**
5. 如果发现问题，返回给**不同的**Executor修复（或Debugger）

### 禁止模式
❌ Executor: "我写了这个函数，因为..." 
❌ Reviewer: "根据Executor的笔记..."
❌ Executor: "为了让L1审查通过，我添加了..."
✅ Reviewer: "这段代码的复杂度是15，超过了阈值10，需要重构"
✅ Executor: [收到Review反馈] "正在重构以降低复杂度..."
```

#### 5. Orchestrator作为中间人 (Orchestrator as Intermediary)
```yaml
communication_protocol:
  execution_to_review:
    path: "EXECUTION → ORCHESTRATOR → REVIEW"
    orchestrator_role:
      - "filter_execution_output"
      - "remove_internal_details"
      - "attach_requirements_context"
      - "assign_fresh_reviewer"
      
  review_to_execution:
    path: "REVIEW → ORCHESTRATOR → EXECUTION"
    orchestrator_role:
      - "anonymize_feedback"
      - "prioritize_issues"
      - "assign_different_executor_if_needed"
      
  direct_communication:
    forbidden: true
    exception: "only_via_orchestrator_approved_channels"
```

### 违规检测与惩罚

#### 自动检测机制
```python
class SelfReviewDetector:
    def detect_violations(self, session_log):
        violations = []
        
        if self._same_agent_did_both(session_log):
            violations.append({
                'type': 'SELF_REVIEW',
                'severity': 'CRITICAL',
                'message': '同一个Agent既执行又审查'
            })
            
        if self._reviewer_accessed_internal_logs(session_log):
            violations.append({
                'type': 'INFORMATION_BARRIER_BREACH',
                'severity': 'HIGH',
                'message': 'Reviewer访问了Execution内部日志'
            })
            
        if self._executor_modified_for_review(session_log):
            violations.append({
                'type': 'GAMING_THE_SYSTEM',
                'severity': 'CRITICAL',
                'message': 'Executor为通过审查而修改代码'
            })
            
        return violations
```

#### 违规处理流程
```
检测到违规
    │
    ▼
┌─────────────────────────────────┐
│  记录违规到审计日志              │
│  (audit_log.md)                 │
└──────────────┬──────────────────┘
                 │
                 ▼
┌─────────────────────────────────┐
│  根据严重程度处理               │
│                                 │
│  CRITICAL:                      │
│  - 作废当前审查结果              │
│  - 重新分配全新的Reviewer       │
│  - 可能需要重新实现             │
│                                 │
│  HIGH:                          │
│  - 清除共享上下文               │
│  - 警告并重新开始审查           │
│                                 │
│  MEDIUM:                        │
│  - 记录警告                     │
│  - 继续但增加监控               │
└─────────────────────────────────┘
```

---

## Phase 1: Research Team (×4 Parallel)

### Role Definitions

#### R1: Feasibility Researcher
**Mission**: Can this actually be built? What are the technical blockers?

```yaml
research_scope:
  - Technical feasibility of each module
  - Technology compatibility analysis
  - Known limitations of chosen stack
  - Prototype/PoC requirements identification
  
output_format:
  feasibility_report:
    - module_name: string
    feasible: boolean
    confidence: float (0-1)
    blockers: list[string]
    mitigations: list[string]
    proof_of_concept_needed: boolean
```

#### R2: Reference Researcher  
**Mission**: Find existing implementations, libraries, and patterns to learn from.

```yaml
research_scope:
  - Similar open-source implementations
  - Library/package ecosystem analysis
  - Industry best practices research
  - Competitor solution analysis (if applicable)
  
output_format:
  reference_report:
    - pattern_name: string
    source: string (url/file)
    relevance_score: float (0-1)
    key_insights: list[string]
    applicability: "direct" | "adapted" | "inspiration_only"
```

#### R3: Risk Analyst
**Mission**: What could go wrong? Dependencies, edge cases, failure modes.

```yaml
research_scope:
  - Dependency risk assessment
  - Edge case identification
  - Failure mode analysis
  - Security vulnerability scan
  - Performance bottleneck prediction
  
output_format:
  risk_report:
    - risk_id: string
    category: "technical" | "dependency" | "security" | "performance"
    severity: "critical" | "high" | "medium" | "low"
    probability: "likely" | "possible" | "unlikely"
    impact_description: string
    mitigation_strategy: string
    contingency_plan: string
```

#### R4: Best Practices Researcher
**Mission**: What's the RIGHT way to do this according to experts?

```yaml
research_scope:
  - Framework-specific best practices
  - Community-recommended patterns
  - Official documentation deep dive
  - Recent blog posts/talks from experts
  - RFC/standards compliance check
  
output_format:
  practices_report:
    - practice_name: string
    source_authority: string
    category: "must_do" | "should_do" | "nice_to_have"
    implementation_notes: string
    conflicts_with_existing: boolean
```

### Research Execution

```
┌─────────────────────────────────────────────┐
│  LAUNCH RESEARCH TEAM (×4 PARALLEL)         │
└─────────────────┬───────────────────────────┘
                  │
                  ▼
┌─────────────────────────────────────────────┐
│  Context Mode Auto-Build                    │
│  ├─ Pull relevant project artifacts         │
│  ├─ Load prior session state               │
│  ├─ Include milestone/slice signals        │
│  └─ Attach execution metadata              │
└─────────────────┬───────────────────────────┘
                  │
         ┌────────┴────────┐
         ▼                 ▼
┌─────────────┐   ┌─────────────┐
│  R1 Start   │   │  R2 Start   │
│  (Feasible) │   │  (Reference)│
└──────┬──────┘   └──────┬──────┘
       │                 │
┌──────┴──────┐   ┌──────┴──────┐
│  R3 Start   │   │  R4 Start   │
│  (Risks)    │   │  (Practices)│
└──────┬──────┘   └──────┬──────┘
       │                 │
       └────────┬────────┘
                ▼
┌─────────────────────────────────────────────┐
│  COLLECT ALL REPORTS                        │
│  ├─ Merge findings                          │
│  ├─ Resolve contradictions                 │
│  ├─ Generate consolidated research summary  │
│  └─ Hand off to Planning Team              │
└─────────────────────────────────────────────┘
```

### Research Timeout & Fallback
- **Per-researcher timeout**: 5 minutes max
- **Fallback**: If researcher stuck, use partial results + flag gaps
- **Quality gate**: Must have at least 3/4 reports before proceeding

---

## Phase 2: Planning Team (Planner + Checker Loop)

### Planner Role
**Mission**: Convert research into detailed, executable task plans.

```yaml
planner_output:
  task_plan:
    - task_id: string
      title: string
      description: string
      acceptance_criteria: list[string]
      dependencies: list[task_id]
      estimated_complexity: "low" | "medium" | "high"
      files_to_create: list[string]
      files_to_modify: list[string]
      tests_required: list[string]
      risks_referenced: list[risk_id]
      references_used: list[reference_id]
      
  execution_order:
    waves:
      - wave_id: int
        tasks: list[task_id]
        parallelizable: boolean
        estimated_duration: string
```

### Checker Role
**Mission**: Validate plan completeness and correctness.

```yaml
checker_validation:
  checks_performed:
    - check_type: string
      status: "pass" | "fail" | "warning"
      details: string
      
  quality_gates:
    - gate: "all_tasks_have_acceptance_criteria"
      required: true
    - gate: "dependencies_are_valid_dag"
      required: true
    - gate: "no_orphaned_tasks"
      required: true
    - gate: "estimates_are_reasonable"
      required: true
    - gate: "test_coverage_planned"
      required: true
    - gate: "risks_addressed"
      required: true
      
  loop_behavior:
    max_iterations: 5
    auto_fix_minor_issues: true
    escalate_major_issues: true
```

### Planner-Checker Loop

```
Planner generates plan
        │
        ▼
   Checker validates
        │
        ├── PASS → Plan approved ✓
        │
        ├── MINOR ISSUES → Auto-fix → Re-check
        │     (max 3 auto-fix rounds)
        │
        └── MAJOR ISSUES → Return to Planner with feedback
              (max 5 iterations total)
              
              If still failing after 5 iterations:
              → Escalate to Orchestrator for human decision
```

---

## Phase 3: Execution Team (N Executors, Parallel by Wave)

### Executor Role
**Mission**: Implement tasks following TDD vertical slice methodology.

```yaml
executor_protocol:
  tdd_workflow:
    red_phase:
      - Write ONE failing test
      - Verify test fails
      - Commit test (atomic)
      
    green_phase:
      - Write MINIMAL code to pass
      - Verify test passes
      - No extra functionality!
      
    refactor_phase:
      - Improve code structure
      - Keep tests green
      - Commit refactoring
      
  quality_checks_per_task:
    - lint_passes: true
    - type_check_passes: true
    - tests_pass: true
    - coverage_threshold_met: true
    
  commit_strategy:
    - atomic_commits: true
    - descriptive_messages: true
    - link_to_task_id: true
```

### Wave-Based Parallel Execution

```
Wave 1 (No Dependencies):
┌─────────────────────────────────────────┐
│ Executor-1: Task T001 (Infrastructure) │
│ Executor-2: Task T002 (Models)         │
│ Executor-3: Task T003 (Utils)         │
└─────────────────────────────────────────┘
                    │
                    ▼ (All Wave 1 complete)
                    
Wave 2 (Depends on Wave 1):
┌─────────────────────────────────────────┐
│ Executor-1: Task T004 (Service Layer) │
│ Executor-2: Task T005 (API Routes)    │
└─────────────────────────────────────────┘
                    │
                    ▼ (All Wave 2 complete)
                    
Wave 3 (Depends on Wave 2):
┌─────────────────────────────────────────┐
│ Executor-1: Task T006 (Integration)   │
│ Executor-2: Task T007 (E2E Tests)     │
└─────────────────────────────────────────┘
```

### Stuck Detection (per Executor)

```yaml
stuck_detection:
  triggers:
    - same_error_3_times_consecutively
    - no_progress_for_5_minutes
    - loop_detected_in_code_changes
    - test_flapping_more_than_3_times
    
  recovery_actions:
    attempt_1: "retry_with_fresh_context"
    attempt_2: "try_alternative_approach"
    attempt_3: "consult_research_findings"
    
  escalation:
    after_3_failed_attempts: "notify_orchestrator"
    action: "pause_and_request_human_or Debugger_intervention"
```

---

## Phase 4: Review Team (5 Specialized Reviewers)

### L0 Reviewer: Basic Quality
```yaml
l0_review:
  checks:
    - naming_conventions_followed
    - proper_formatting
    - no_dead_code
    - no_console_logs_in_production
    - no_todo_comments_without_issues
    - imports organized correctly
    - file_length_within_limits
    - function_length_within_limits
  output: pass/fail + list_of_issues
  severity_filter: "warning_and_above"
```

### L1 Reviewer: Design Review
```yaml
l1_review:
  checks:
    - solid_principles_followed
    - dry_principle_respected
    - cyclomatic_complexity < 10
    - cohesion_high_coupling_low
    - appropriate_design_patterns_used
    - separation_of_concerns_maintained
    - error_handling_consistent
    - abstraction_levels_appropriate
  output: grade (A+/A/B/C/F) + detailed_feedback
  blocking_if_grade_below: "B"
```

### L2 Reviewer: Security & Performance
```yaml
l2_review:
  security_checks:
    - sql_injection_vulnerable
    - xss_vulnerable
    - csrf_protection_present
    - authentication_properly_implemented
    - authorization_checked
    - secrets_not_hardcoded
    - input_validation_present
    - safe_deserialization
    
  performance_checks:
    - n_plus_one_queries_absent
    - memory_leaks_unlikely
    - resource_cleanup_present
    - caching_appropriate
    - async_where_needed
    
  output: pass/fail + security_report + performance_report
  blocking_on_critical_issues: true
```

### Zoom-Out Reviewer: Global Consistency (Matt Pocock)
```yaml
zoom_out_review:
  philosophy: "Understand code within ENTIRE system context"
  
  checks:
    - fits_overall_architecture: "Does this belong here?"
    - consistent_with_domain_language: "Uses CONTEXT.md terms?"
    - maintains_architectural_boundaries: "No leakage between modules?"
    - follows_established_patterns: "Matches PATTERNS.md?"
    - doesn't_introduce_coupling: "New dependencies justified?"
    - documentation_updated: "Docs reflect changes?"
    - adr_created_if_needed: "Architectural decisions recorded?"
    
  context_analysis:
    - read_surrounding_modules
    - understand_data_flow
    - trace_impact_on_other_features
    - verify_no_regressions
    
  output: global_consistency_score (0-100) + recommendations
  minimum_acceptable_score: 75
```

### Consistency Reviewer: Requirement Alignment
```yaml
consistency_review:
  checks:
    - all_requirements_addressed: "From grill-me session"
    - acceptance_criteria_met: "Each task verified"
    - technical_decisions_honored: "From assumptions/planning"
    - non_functional_requirements_met: "Performance, security, etc."
    - edge_cases_handled: "From risk analysis"
    
  cross_reference:
    - grill_me_decisions.md
    - assumptions_report.md
    - task_plan.xml
    - risk_report.md
    
  output: alignment_percentage + gap_list
  minimum_alignment: 95%
```

---

## Phase 5: Verification Team (Verifier + Debugger)

### Verifier Role
**Mission**: Prove that implementation matches requirements end-to-end.

```yaml
verification_protocol:
  test_execution:
    - run_full_test_suite
    - verify_coverage_thresholds
    - run_integration_tests
    - run_e2e_tests_if_available
    
  behavioral_verification:
    - test_happy_paths
    - test_edge_cases_from_risk_analysis
    - test_error_scenarios
    - test_boundary_conditions
    
  regression_check:
    - run_existing_tests (ensure no breakage)
    - compare_before_after_metrics
    - verify_no_performance_regression
    
  output: verification_report with pass/fail per criterion
```

### Debugger Role
**Mission**: Fix any issues found during verification.

```yaml
debugging_protocol:
  issue_triage:
    - categorize: "test_failure" | "lint_error" | "runtime_error" | "logic_bug"
    - prioritize: "critical" > "high" > "medium" > "low"
    - root_cause_analysis: always required
    
  fix_strategy:
    - write_failing_test_first (if not exists)
    - minimal_fix_only
    - verify_fix_resolves_issue
    - check_for_side_effects
    
  iteration_limit: 3 attempts per issue
  escalation: if unfixed after 3 attempts → escalate to Orchestrator
```

---

## Orchestrator Coordination Protocol

```yaml
orchestrator_state_machine:
  
  states:
    - IDLE
    - GRILL_ME_ACTIVE
    - ASSUMPTIONS_MODE
    - RESEARCHING
    - PLANNING
    - EXECUTING
    - REVIEWING
    - VERIFYING
    - COMPLETE
    - PAUSED (human intervention)
    - ERROR_RECOVERY
    
  transitions:
    - from: IDLE
      to: GRILL_ME_ACTIVE
      trigger: new_feature_request
      
    - from: GRILL_ME_ACTIVE
      to: ASSUMPTIONS_MODE
      trigger: grill_me_complete
      
    - from: ASSUMPTIONS_MODE
      to: RESEARCHING
      trigger: assumptions_confirmed
      
    - from: RESEARCHING
      to: PLANNING
      trigger: all_researchers_complete
      
    - from: PLANNING
      to: EXECUTING
      trigger: plan_approved_by_checker
      
    - from: EXECUTING
      to: REVIEWING
      trigger: all_waves_complete
      
    - from: REVIEWING
      to: VERIFYING
      trigger: all_reviews_passed
      
    - from: VERIFYING
      to: COMPLETE
      trigger: verification_passed
      
    - from: ANY_STATE
      to: PAUSED
      trigger: high_risk_operation_detected || cannot_auto_execute
      
    - from: ANY_STATE
      to: ERROR_RECOVERY
      trigger: stuck_loop_detected || crash_detected
      
  error_recovery:
    - attempt_1: auto_retry_with_context_refresh
    - attempt_2: try_alternative_approach
    - attempt_3: reduce_scope_and_continue
    - final: pause_and_notify_human
```

---

## Progress Reporting Format

```markdown
## 🔄 GSD v3.0 Execution Dashboard

### Current State: EXECUTING (Wave 2/3)

**Overall Progress**: ██████████░░░░░░░ 65%
**Estimated Time Remaining**: ~45min
**Interventions Required**: 0

---

### Phase Completion Status

| Phase | Status | Duration | Issues |
|-------|--------|----------|--------|
| 🎯 Grill-Me | ✅ Complete | 18m | 0 |
| 📋 Assumptions | ✅ Complete | 8m | 0 |
| 🔬 Research (×4) | ✅ Complete | 12m | 0 |
| 📝 Planning | ✅ Complete | 7m | 2 iterations |
| 💻 Execution | 🔄 65% | 28m | In progress |
| 🔍 Review (5) | ⏳ Pending | - | - |
| ✅ Verification | ⏳ Pending | - | - |

---

### Research Team Results

| Researcher | Status | Key Finding |
|------------|--------|-------------|
| R1: Feasibility | ✅ | All modules technically feasible |
| R2: Reference | ✅ | Found 3 similar implementations |
| R3: Risks | ✅ | 2 medium risks identified |
| R4: Practices | ✅ | 12 best practices documented |

---

### Execution Wave Progress

**Wave 1** ✅ Complete (3/3 tasks)
- T001: Infrastructure setup ✅ (8m)
- T002: Data models ✅ (12m)  
- T003: Utility functions ✅ (6m)

**Wave 2** 🔄 In Progress (2/3 tasks)
- T004: Service layer ✅ (15m) 💾 checkpoint
- T005: API routes 🔄 (step 7/10)
- T006: Middleware ⏳ Waiting for T005

**Wave 3** ⏳ Pending
- T007: Integration tests
- T008: E2E scenarios
- T009: Documentation

---

### Quality Metrics So Far

| Metric | Target | Actual | Status |
|--------|--------|--------|--------|
| Test Coverage | ≥80% | 87% | ✅ |
| Tests Passing | 100% | 100% | ✅ |
| L0 Issues | 0 | 0 | ✅ |
| L1 Grade | ≥B | A- | ✅ |
| L2 Critical | 0 | 0 | ✅ |
| Zoom-Out Score | ≥75 | 82 | ✅ |

---

### Knowledge Base Updates

- 📝 CONTEXT.md: +5 new terms added
- 📋 DECISIONS.md: +3 decisions recorded
- 📄 ADR/: +1 new ADR created
- 🔄 PATTERNS.md: +2 patterns confirmed

---

*Next update in 5 minutes or at next milestone*
```
