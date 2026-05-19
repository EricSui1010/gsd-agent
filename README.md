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

| 特性 | 说明 | 创新程度 |
|------|------|----------|
| 🔮 **深度共识机制** | Grill-Me 16-50问 + Assumptions Mode = 需求零误解 | **核心** ⭐⭐⭐⭐⭐ |
| 👥 **多Agent团队** | Research×4 / Plan×2 / Execute×N / Review×6 / Verify×2 | **核心** ⭐⭐⭐⭐⭐ |
| 🧪 **TDD强制执行** | RED→GREEN→REFACTOR 循环，不可跳过 | **基础** ⭐⭐⭐⭐⭐ |
| 🔍 **6D审查系统** | Basic/FactVerify/Logic/Solution/Complete/Test + ZoomOut + Consistency | **质量** ⭐⭐⭐⭐⭐ |
| 🛡️ **Gatekeeper安全** | Pre-commit白名单/黑名单 + Pre-push安全扫描 + 三权分立 | **安全** ⭐⭐⭐⭐⭐ |
| 📊 **CodeGraph集成** | Context Mode V2智能子图 + Impact Analyzer + 结构化搜索 | **效率** ⭐⭐⭐⭐⭐ |
| 🌐 **跨平台支持** | Trae/Claude/VSCode/Cursor/QCoder/WorkBuddy/OpenClaw/Hermes | **通用** ⭐⭐⭐⭐⭐ |

---

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
