# GSD Agent v1.0 - AI Code Management Expert

<div align="center">

![Version](https://img.shields.io/badge/version-1.0-blue?style=flat-square)
![License](https://img.shields.io/badge/license-MIT-green?style=flat-square)
![Security](https://img.shields.io/badge/security--first-red?style=flat-square)

**Get Shit Done, But Do It Right - With Deep Consensus & Professional Execution**

</div>

---

## 中文

### 🎯 项目简介

GSD Agent 是一个专业的 **AI 代码管理智能体**（v1.0），深度融合：

- 🧠 **Matt Pocock 深度方法论**（Grill-Me 追问 + Zoom-Out 审查）
- 🔧 **GSD-2 专业工程能力**（多Agent编排 + TDD强制执行）
- 📊 **CodeGraph 代码知识图谱引擎**（智能上下文 + 影响分析）
- 🛡️ **Gatekeeper 安全模型**（Pre-commit + Pre-push 全套检查）
- 🌐 **跨平台支持**（8个AI编程环境统一体验）

#### 核心理念

> **"深度共识一次达成，专业团队自主执行，知识持续进化"**
>
> **"像代码运行前必须编译通过一样 - 每个产出物在交付前都必须通过验证"**

---

### 🔥 核心特性

| 特性 | 详细说明 | 创新程度 |
|------|----------|----------|
| 🔮 **深度共识机制** | **Grill-Me深度追问**: 16-50个问题逐层展开(问题理解技术方案实现细节验收标准)，每个问题推荐答案但走遍决策树每个分支，不假设、不跳过、不急躁。<br>**Assumptions Mode智能假设**: 扫描代码库生成结构化假设(架构/技术栈/模式/测试策略)只请求纠正而非从头描述。两者结合实现需求零误解 | **核心** ⭐⭐⭐⭐⭐ |
| 👥 **多Agent团队编排** | **Research4并行调研**: Feasibility(技术可行性) / Reference(类似实现参考) / Risk(风险识别缓解) / BestPractices(最佳实践) 四路同时出击<br>**Plan2循环验证**: Planner生成XML结构化计划  Checker验证(完整性8项+一致性5项+质量门禁7项)  最多5轮循环<br>**ExecuteN Wave并行**: 按依赖图分批执行，TDD垂直切片(REDGREENREFACTOR)<br>**Review6六维审查**: Basic/FactVerify(反幻觉)/Logic/Solution(联网择优)/Complete/Test + ZoomOut全局评分 + Consistency需求对齐<br>**Verify2双重验证**: Verifier证明需求满足 + Debugger修复问题 | **核心** ⭐⭐⭐⭐⭐ |
| 🧪 **TDD强制执行** | **铁律**: 没有失败的测试就不能写生产代码！严格遵循 REDGREENREFACTOR 循环不可跳过。<br>**RED阶段**: 先写一个失败测试，验证测试确实失败<br>**GREEN阶段**: 写最小代码让测试通过，绝不添加额外功能<br>**REFACTOR阶段**: 改善代码结构，保持测试全绿<br>**Wave约束**: 每个执行Wave必须先有测试才能写实现代码，覆盖率80%才能进入下一Wave | **基础** ⭐⭐⭐⭐⭐ |
| ✅ **编译级验证体系** | 类似编译器的**8层验证金字塔**，任何一层失败即阻止交付：<br> L0语法检查 - 命名规范/格式化/死代码检测<br> L1类型推断 - SOLID/DRY原则/复杂度<10/函数<50行<br> L2安全扫描 - SQL注入/XSS/N+1查询/资源泄漏<br> FactVerify事实核查 - AI反幻觉4层检测(本地知识库+在线API+语义分析+置信度60%=CRITICAL)<br> Logic逻辑验证 - 控制流图深度分析完整性/严密性<br> Solution方案审计 - 联网搜索多源对比(GitHub/SO/官方文档)加权评分<br> Complete完整性检查 - 项目完备性扫描/功能依赖分析/重复代码检测<br> Test测试验证 - 智能测试生成+实际运行收集错误 | **质量** ⭐⭐⭐⭐⭐ |
| 📦 **上下文智能压缩** | **Context Mode V2智能子图提取**: 根据当前任务动态构建相关代码子图，避免上下文过长导致信息丢失或Token浪费<br>**Token预算控制**: 默认1000 Token上限，智能裁剪优先保留高相关代码<br>**自动包含依赖项**: 提取目标文件时自动纳入其import/require的所有依赖<br>**自动包含调用者**: 反向追踪谁调用了目标函数，确保修改影响可评估<br>**效果**: 原本5000Token的上下文压缩至800-1200Token，信息保留率95% | **效率** ⭐⭐⭐⭐⭐ |
| 🛡️ **Gatekeeper安全模型** | **三层防御体系**:<br>Layer1 **.gitignore基础过滤** - 从源头排除敏感文件(node_modules/.env/*.log等)<br>Layer2 **Pre-commit主动拦截** - 白名单(.md/.json/.yaml/.ts/.js/.py)+黑名单(密钥/日志/临时文件)+文件大小限制(100KB)<br>Layer3 **Pre-push全套审查** - 安全扫描(Grep敏感词)+版本一致性(机械化搜索所有文件)+术语对照+README强制审阅<br>**三权分立架构**: Executor写码并自检声明  Gatekeeper独立执行全套检查拥有一票否决权  Orchestrator验证许可有效性后执行push。三者互相独立，禁止自我审查 | **安全** ⭐⭐⭐⭐⭐ |
| 🔄 **自动流转管道** | **Modular Pipeline模块化自动流转**: M-001完成(质量+安全全部通过)  自动Checkpoint保存状态  自动启动M-002  ... 无需人工干预<br>**流转条件**(全部满足才触发): ✅TDD测试100%通过且覆盖率80% ✅五维审查(L0/L1/L2/ZoomOut/Consistency)全部通过 ✅安全扫描无硬编码密钥 ✅Checkpoint已保存且依赖Module已完成<br>**控制命令**: `/pipeline-status`查看进度仪表板 `/pipeline-pause`暂停 `/pipeline-resume`恢复 `/pipeline-skip[M]`跳过指定模块 | **自动化** ⭐⭐⭐⭐⭐ |
| ⚔️ **冲突检测与Git回滚** | **Pre-Push冲突审查四维度**:<br> 版本号冲突检测 - Grep机械化搜索当前版本号(v1.0)确认所有位置已更新，同时Grep旧版本(v3.x/v2.x)确认只在历史记录中出现<br> 术语不一致检测 - 新旧术语对比搜索，生成替换建议<br> 文档缺失检测 - 对照项目结构树扫描缺失文档<br> 安全违规检测 - 敏感词模式匹配(password/secret/key/token等)<br>**回滚策略**: 发现任何问题立即阻止push  回滚到上一个干净Checkpoint  Executor从干净状态修复  重新走完整检查流程  全部通过才允许推送 | **可靠性** ⭐⭐⭐⭐⭐ |
| 📊 **CodeGraph集成** | **Impact Analyzer影响分析器**: 修改某文件时自动分析会影响到哪些其他文件(调用者/被调用者/共享依赖)，评估变更风险<br>**结构化搜索**: 超越文本匹配的模糊搜索+类型信息理解，支持按函数签名/类定义/接口实现搜索<br>**调用链追踪(Call Sites)**: 追踪函数的完整调用路径，理解数据流向和执行顺序<br>**本地优先原则**: 所有索引和知识图谱存储在本地`.codegraph/`目录，不上传任何代码到远程服务器，保护知识产权 | **效率** ⭐⭐⭐⭐⭐ |
| 🌐 **跨平台支持** | **统一API适配8个AI编程环境**: Trae IDE / Claude Code / VS Code / Cursor / QCoder / WorkBuddy / OpenClaw / Hermes<br>**一套规则到处运行**: SKILL.md技能定义/BASE_RULES规则/.gsd知识库 在所有平台通用<br>**平台适配器层**: Platform Adapter抽象差异，核心引擎无需关心底层平台<br>**MCP协议支持**: 通过Model Context Protocol标准化与IDE通信，降低新平台接入成本 | **通用** ⭐⭐⭐⭐⭐ |
| 🤖 **Agent Skill技能系统** | **可扩展技能框架**: 核心gsd-agent技能定义完整工作流(Phase1共识Phase2执行Phase3交付)和规则体系(IRON RULES/质量门槛/进度追踪)<br>**技能加载机制**: 通过.skill文件定义新技能，支持参数传递和结果返回<br>**未来扩展方向**: code-review(代码审查专用)、debugger(调试专用)、test-generator(测试生成)、doc-generator(文档生成)等专项技能<br>**技能隔离**: 每个技能独立作用域，互不干扰，可组合使用 | **扩展性** ⭐⭐⭐⭐⭐ |
### 🏗️ 架构总览

```
┌─────────────────────────────────────────────────────────────┐
│                    GSD Agent v1.0 Architecture               │
├─────────────────────────────────────────────────────────────┤
│                                                             │
│  ═══════════════════════════════════════════════════════    │
│              PHASE 1: DEEP CONSENSUS                        │
│              （唯一人工确认点）                               │
│  ═══════════════════════════════════════════════════════    │
│                                                             │
│  Step 1: 读取项目规则 (.gsd/rules/)                         │
│  Step 2: GRILL-ME 深度追问 (16-50个问题)                    │
│  Step 3: ASSUMPTIONS MODE (生成假设+请求纠正)                │
│  Step 4: 知识库初始化 (CONTEXT.md/ADR)                      │
│                     ↓                                       │
│            [用户确认] ⏸                                      │
│                     ↓                                       │
│  ═══════════════════════════════════════════════════════    │
│           PHASE 2: PROFESSIONAL ORCHESTRATION               │
│           （全自主执行）                                     │
│  ═══════════════════════════════════════════════════════    │
│                                                             │
│  ┌─────────────────┐                                        │
│  │ RESEARCH (×4)   │ ← 可行性/参考/风险/最佳实践             │
│  └────────┬────────┘                                        │
│           ↓                                                 │
│  ┌─────────────────┐                                        │
│  │ PLANNING (×2)   │ ← Planner↔Checker 循环(最多5轮)        │
│  └────────┬────────┘                                        │
│           ↓                                                 │
│  ┌─────────────────┐                                        │
│  │ EXECUTION (×N)  │ ← Wave并行 + TDD (RED→GREEN→REFACTOR) │
│  └────────┬────────┘                                        │
│           ↓                                                 │
│  ┌─────────────────┐                                        │
│  │ REVIEW (6D+)    │ ← L0/L1/L2/FactVerify/Solution/        │
│  │                 │   Complete/Test + ZoomOut + Consistency │
│  └────────┬────────┘                                        │
│           ↓                                                 │
│  ┌─────────────────┐                                        │
│  │ VERIFY (×2)     │ ← Verifier + Debugger (最多3次修复)     │
│  └─────────────────┘                                        │
│                     ↓                                       │
│  ═══════════════════════════════════════════════════════    │
│          PHASE 3: QUALITY DELIVERY                          │
│  ═══════════════════════════════════════════════════════    │
│                                                             │
│  完整报告 → 知识库更新 → 规则文档更新                        │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

---

### 🛡️ 安全机制详解

#### IRON RULE #0: 安全保密铁律

> **优先级**: 最高 | **执行**: 强制 | **容忍度**: 零

| 规则 | 说明 |
|------|------|
| ❌ **禁止明文存储** | 密钥/密码/IP/账号 → 用 `process.env.XXX` |
| ❌ **禁止索取敏感信息** | 不要求用户填入密码/密钥 |
| ✅ **必须指导变量化** | 教用户用 `.env` / 配置文件 / 密钥管理服务 |
| ✅ **公网同步前强制审核** | GitHub推送前必须完整安全扫描 |

#### Gatekeeper 三层防御

```
Layer 1: .gitignore        → 防止跟踪无效文件
         ↓
Layer 2: Pre-commit Hook   → 阻止包含无效文件的提交
         ↓
Layer 3: Pre-push Hook     → 最终防线：安全扫描+版本检查+README审阅
```

#### 推送前强制检查（4步全套）

```
Step 1: 安全检查 ✓
├── Grep: password\|secret\|key\|token\|credential
└── 确认零硬编码密钥

Step 2: 版本号一致性 ⭐
├── Grep当前版本(v1.0): 确认所有位置已更新
├── Grep旧版本: 确认只在历史记录中出现
└── PASS / FAIL

Step 3: 术语一致性 ⭐
├── Grep新术语: 确认关键位置已更新
├── Grep旧术语: 确认只在历史/对比表出现
└── PASS / FAIL

Step 4: README完整审阅 ⭐⭐⭐ ⭐⭐⭐
├── ✅✅✅ 必须逐行阅读 README.md 全文!
├── [ ] 标题/Badge版本号正确?
├── [ ] 项目简介描述准确?
├── [ ] 特性表与实际功能一致?
├── [ ] Version History正确?
├── [ ] 无残留旧版本引用?
└── PASS / FAIL → 发现问题立即修复!
```

---

### 🤖 人工介入原则

**仅在以下 2 种情况请求人工介入：**

| 场景 | 示例 | 处理方式 |
|------|------|---------|
| 🔴 **高危操作** | 删除文件、数据库DROP、生产配置修改 | 停止执行，请求确认 |
| 🟡 **无法自行执行** | ADB调试、GUI操作、物理设备连接 | 提供详细步骤，请求协助 |

**其他所有决定自己做** - 技术选型、代码实现、测试编写、文档生成等

---

## English

### 🎯 Project Overview

GSD Agent is a professional **AI Code Management Agent** (v1.0), deeply integrating:

- 🧠 **Matt Pocock Deep Methodology** (Grill-Me interrogation + Zoom-Out review)
- 🔧 **GSD-2 Professional Engineering** (Multi-Agent orchestration + TDD enforcement)
- 📊 **CodeGraph Knowledge Graph Engine** (Smart context + Impact analysis)
- 🛡️ **Gatekeeper Security Model** (Pre-commit + Pre-push full checks)
- 🌐 **Cross-Platform Support** (8 AI coding environments unified experience)

#### Core Philosophy

> **"Deep consensus achieved once, professional team executes autonomously, knowledge evolves continuously"**
>
> **"Like code must compile before running - every deliverable must pass verification before delivery"**

---

### 🔥 Core Features

| Feature | Description | Innovation Level |
|---------|-------------|------------------|
| 🔮 **Deep Consensus** | Grill-Me 16-50Q + Assumptions Mode = Zero misunderstanding | **Core** ⭐⭐⭐⭐⭐ |
| 👥 **Multi-Agent Team** | Research×4 / Plan×2 / Execute×N / Review×6 / Verify×2 | **Core** ⭐⭐⭐⭐⭐ |
| 🧪 **TDD Enforcement** | RED→GREEN→REFACTOR cycle, non-skippable | **Foundation** ⭐⭐⭐⭐⭐ |
| 🔍 **6D Review System** | Basic/FactVerify/Logic/Solution/Complete/Test + ZoomOut + Consistency | **Quality** ⭐⭐⭐⭐⭐ |
| 🛡️ **Gatekeeper Security** | Pre-commit whitelist/blacklist + Pre-push security scan + Separation of powers | **Security** ⭐⭐⭐⭐⭐ |
| 📊 **CodeGraph Integration** | Context Mode V2 smart subgraph + Impact Analyzer + Structured search | **Efficiency** ⭐⭐⭐⭐⭐ |
| 🌐 **Cross-Platform** | Trae/Claude/VSCode/Cursor/QCoder/WorkBuddy/OpenClaw/Hermes unified | **Universal** ⭐⭐⭐⭐⭐ |

---

## 🚀 Quick Start

```bash
git clone https://github.com/EricSui1010/gsd-agent.git
cd gsd-agent
```

---

## 📊 Quality Thresholds

| Metric | Minimum | Target |
|--------|---------|--------|
| Test Coverage | ≥80% | ≥90% |
| L1 Design Grade | ≥B | ≥A |
| Zoom-Out Score | ≥75 | ≥85 |
| Consistency Alignment | ≥95% | ≥98% |
| Critical Issues | =0 | =0 |

---

## 📋 Project Structure

```
gsd-agent/
├── .trae/
│   └── skills/
│       └── gsd-agent/
│           ├── SKILL.md          # Core skill definition
│           └── workflows/        # Detailed workflow docs
├── .codegraph/
│   └── config.json              # CodeGraph configuration
├── .gsd/
│   └── rules/
│       └── BASE_RULES.md        # Project base rules
├── .gitignore
├── LICENSE
├── package.json
└── README.md                    # This file
```

---

## 📄 License

MIT License

---

<div align="center">

**Version 1.0** | **Initial Release** | **2026-05-19**

*Built with ❤️ using GSD Methodology*

</div>
