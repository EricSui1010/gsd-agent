# GSD Agent v3.0 - AI Code Management Expert (Matt Pocock Deep Methodology Integration)

<div align="center">

![Version](https://img.shields.io/badge/version-3.0-blue?style=flat-square)
![License](https://img.shields.io/badge/license-MIT-green?style=flat-square)
![Methodology](https://img.shields.io/badge/Methodology-Matt_Pocock-purple?style=flat-square)
![Agents](https://img.shields.io/badge/agents-13-blueviolet?style=flat-square)

**Get Shit Done, But Do It Right - With Deep Understanding & Professional Execution**

</div>

---

## 中文

### 🎯 项目简介

GSD Agent v3.0 是一次**方法论级升级**，集成了 **Matt Pocock 的深度理解能力**与 **GSD-2 的工程执行力**，专为 Trae IDE 设计。

**v3.0 = Matt Pocock 深度方法论 + GSD-2 工程能力 + Trae 便捷性**

#### 核心理念

> **"深度共识一次达成，专业团队自主执行"**
>
> **"像专家一样思考，像工程师一样执行"**

---

### 🆕 v3.0 新特性总览

#### 🧠 1. 更深的理解 (Deeper Understanding)

**Grill-Me 深度追问机制**

```
Phase 1: 深度共识（唯一人工确认点）
┌─────────────────────────────────────────────────┐
│                                                 │
│  🔍 GRILL-ME: 16-50 个问题                      │
│     ┌─────────────────────────────────────┐    │
│     │ Q1: 核心问题是什么？                 │    │
│     │ Q2: 成功的标准是什么？               │    │
│     │ Q3: 有哪些边界条件？                 │    │
│     │ Q4: 异常情况如何处理？               │    │
│     │ Q5: 性能要求是什么？                 │    │
│     │ ... (继续深入到完全理解)             │    │
│     │ Q16-Q50: 技术细节、依赖、兼容性...   │    │
│     └─────────────────────────────────────┘    │
│                                                 │
│  📝 ASSUMPTIONS MODE:                          │
│     → 扫描代码库生成结构化假设                  │
│     → 只请求用户纠正（而非从头解释）            │
│     → 结果：需求零误解 ✅                       │
│                                                 │
└─────────────────────────────────────────────────┘
```

#### 👥 2. 更强的执行 (Stronger Execution)

**13 个专业角色团队**

| 团队 | 角色 | 数量 | 核心职责 |
|------|------|------|---------|
| **Research** | Feasibility / Reference / Risk / Best Practices | ×4 | 并行调研 |
| **Planning** | Planner / Checker | ×2 | 计划生成+验证循环 |
| **Execution** | Executor | ×N | TDD 垂直切片实现 |
| **Review** | L0 / L1 / L2 / ZoomOut / Consistency | ×5 | 五维审查 |
| **Verification** | Verifier / Debugger | ×2 | 需求证明+修复 |

#### 🛡️ 3. 更好的质量 (Better Quality)

**五维审查系统 (5D Review)**

| 维度 | 名称 | 覆盖范围 |
|------|------|---------|
| **L0** | 基础质量检查 | 命名规范、格式化、死代码 |
| **L1** | 设计规范审查 | SOLID、DRY、复杂度<10 |
| **L2** | 安全性能扫描 | SQL注入、XSS、N+1查询 |
| **Zoom-Out** | 全局一致性审查 | Score≥75/100 |
| **Consistency** | 需求对齐检查 | Alignment≥95% |

#### 🔄 4. 更可靠 (More Reliable)

```yaml
reliability_system:
  stuck_detection:
    pattern: "同一类型错误重复出现"
    threshold: 3次
    recovery_attempts:
      1: "尝试不同方法"
      2: "简化问题范围"
      3: "寻求外部帮助(文档/搜索)"
      4: "升级到用户"
  
  crash_recovery:
    auto_checkpoint: "每个关键节点保存状态"
    resume_from_checkpoint: "崩溃后从最近检查点恢复"
    context_preservation: "保留完整执行上下文"
```

#### 📚 5. 持续进化 (Continuous Evolution)

```
知识库系统 (.gsd/knowledge/)
├── CONTEXT.md        # 共享领域语言 (每次发现新术语时更新)
├── DECISIONS.md      # 决策日志 (每次重要决策时记录)
├── ADR/              # 架构决策记录 (重大架构变更时创建)
├── PATTERNS.md       # 模式/反模式库 (架构审查时更新)
└── GLOSSARY.md       # 项目术语表 (新术语出现时添加)

效果: 项目越做越聪明 ✅
```

#### 🤫 6. 更低打扰 (Less Interruption)

**仍然只在 2 种情况下介入：**

| 场景 | v2.2 | v3.0 (提升) |
|------|------|-------------|
| **高危操作** | 删除文件等 | 同上 + 自动备份 |
| **无法自主执行** | ADB 调试等 | 同上 + 提供详细步骤 |

**但执行质量和效率有数量级提升：**
- ✅ 问题理解更深入（16-50个问题 vs 表面确认）
- ✅ 代码质量更高（五维审查 vs 三级）
- ✅ 更可靠（自动恢复 vs 卡住就停）
- ✅ 持续进化（知识沉淀 vs 每次从零开始）

---

## English

### 🎯 Project Overview

GSD Agent v3.0 is a **methodology-level upgrade**, integrating **Matt Pocock's deep understanding capabilities** with **GSD-2's engineering execution power**, designed specifically for Trae IDE.

**v3.0 = Matt Pocock Deep Methodology + GSD-2 Engineering Power + Trae Convenience**

---

### 🆕 v3.0 New Features Overview

#### 🧠 1. Deeper Understanding
- **Grill-Me**: 16-50 questions for zero misunderstanding
- **Assumptions Mode**: Generate structured assumptions, only ask for corrections

#### 👥 2. Stronger Execution
- **13 Professional Roles**: Each with clear responsibilities and quality standards
- Teams: Research(×4) / Planning(×2) / Execution(×N) / Review(×5) / Verification(×2)

#### 🛡️ 3. Better Quality
- **5D Review System**: L0 / L1 / L2 / Zoom-Out / Consistency
- Coverage from local to global, from syntax to architecture

#### 🔄 4. More Reliable
- **Stuck Detection**: Auto-recover with 3 attempts before escalating
- **Crash Recovery**: Auto-checkpoint and resume capability

#### 📚 5. Continuous Evolution
- **Knowledge Base System**: Context/Decisions/ADR/Patterns/Glossary
- Project gets smarter over time

#### 🤫 6. Less Interruption
- Still only 2 scenarios require human intervention
- But execution quality improved by orders of magnitude

---

## 🚀 Quick Start

```bash
git clone https://github.com/EricSui1010/gsd-agent.git
cd gsd-agent
```

---

## 📄 License

MIT License

---

<div align="center">

**Version 3.0** | **Matt Pocock Methodology** | **13 Agents** | **5D Review**

</div>
