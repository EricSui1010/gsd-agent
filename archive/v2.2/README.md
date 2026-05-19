# GSD Agent v2.2 - AI Code Management Agent (Modular Architecture + Solo Coder Mode)

<div align="center">

![Version](https://img.shields.io/badge/version-2.2-blue?style=flat-square)
![License](https://img.shields.io/badge/license-MIT-green?style=flat-square)
![Architecture](https://img.shields.io/badge/Architecture-Modular-purple?style=flat-square)
![Mode](https://img.shields.io/badge/Mode-Solo_Coder-orange?style=flat-square)

**Get Shit Done, But Do It Right - Modular, Autonomous & Tool-Aware**

</div>

---

## 中文

### 🎯 项目简介

GSD Agent v2.2 引入**模块化架构**和 **Solo Coder 模式**，让 AI 像独立开发者一样工作：

- 📦 **模块化开发**：每个模块完成后自动 Review + 建立里程碑
- 🤖 **Solo Coder 模式**：第一轮严谨确认后，自主执行无需频繁介入
- 🔧 **外部工具集成**：可调用其他智能体、Android Studio 等外部工具
- 📋 **规则驱动**：重大变化自动更新项目基础规则文档

#### 核心理念

> **"第一轮搞清楚，后面像 Solo Coder 一样自主执行"**
>
> **"只在真正需要你的时候才打扰你"**

---

### 🆕 v2.2 新特性总览

#### 📦 模块化架构 (Modular Architecture)

```
开发流程:
┌──────────┐    ┌──────────┐    ┌──────────┐
│ Module A │ →  │ Auto     │ →  │ Milestone│
│ 开发完成 │    │ Review   │    │ 建立     │
└──────────┘    └──────────┘    └─────┬────┘
                                      │
                    ┌─────────────────┼─────────────────┐
                    ▼                 ▼                 ▼
              ┌──────────┐    ┌──────────┐    ┌──────────┐
              │ Module B │    │ Module C │    │ Module D │
              │ (新任务)  │    │ (新任务)  │    │ (新任务)  │
              └──────────┘    └──────────┘    └──────────┘
```

**模块完成后的自动检查清单：**

```yaml
module_completion_checklist:
  review:
    - [ ] 代码质量审查 (L0/L1/L2)
    - [ ] 测试覆盖率检查 (≥80%)
    - [ ] 文档完整性验证
    - [ ] 安全扫描通过
  
  milestone:
    - [ ] 创建里程碑标记
    - [ ] 记录关键决策到 DECISIONS.md
    - [ ] 更新 CHANGELOG.md
    - [ ] 如有重大变化 → 更新 BASE_RULES.md
  
  handoff:
    - [ ] 启动下一个模块的新任务
    - [ ] 传递上下文包（相关文件+决策记录）
```

#### 🤖 Solo Coder 模式 (Autonomous Execution)

**两阶段工作流：**

```
Phase 1: 深度共识 (需要用户参与)
┌─────────────────────────────────────────────┐
│ 🎯 GRILL-ME 深度追问                        │
│    - 16-50 个问题确保需求完全理解            │
│    - 边界条件、异常处理、性能要求            │
│    - 技术选型、依赖约束、兼容性              │
│                                             │
│ ✅ 用户确认后 → 进入 Phase 2                │
└─────────────────────────────────────────────┘
         ↓
Phase 2: 自主执行 (无需用户介入)
┌─────────────────────────────────────────────┐
│ 🤖 Solo Coder 模式                          │
│    - 自主拆分任务为子任务                   │
│    - 自主执行 TDD 循环                      │
│    - 自主调用外部工具                       │
│    - 自主进行代码审查                       │
│    - 遇到问题自主解决 (3次恢复机制)         │
│                                             │
│ ⚠️ 仅在以下 2 种情况请求人工介入:           │
│    1. 高危操作 (如删除文件/目录)            │
│    2. 无法自主执行 (如需 ADB 连接调试)      │
└─────────────────────────────────────────────┘
```

**人工介入的 2 种场景详解：**

| 场景 | 示例 | AI 行为 |
|------|------|---------|
| **高危操作** | `rm -rf` / 删除数据库 / 修改生产配置 | ⛔ 停止执行，请求用户确认 |
| **无法自主执行** | ADB 连接 / GUI 操作 / 物理设备调试 | 🟡 请求用户协助，提供详细步骤 |

#### 🔧 外部工具集成 (External Tools)

```yaml
supported_tools:
  ide:
    - Android Studio (ADB调试)
    - VS Code (扩展开发)
  
  ai_agents:
    - 其他专业智能体 (委派子任务)
  
  build_tools:
    - Gradle (Android 构建)
    - npm/yarn (Node.js)
    - pip (Python)
  
  version_control:
    - Git (完整工作流)
    - GitHub (PR/MR)
```

**调用示例：**

```
AI: "我需要连接 ADB 来调试这个 Android 设备"
   → 请求用户协助连接
   →用户提供连接后继续自主执行

AI: "这个任务涉及复杂的图像处理"
   → 调用专业的图像处理智能体
   → 接收结果并集成
```

#### 📋 规则驱动系统 (Rule-Driven Development)

```
规则更新流程:
┌──────────────────┐     ┌──────────────────┐
│ 发现重大变化      │ →   │ 自动更新规则      │
│ (新架构决策/     │     │ BASE_RULES.md    │
│  新技术选型/     │     │                 │
│  新编码规范)     │     │ 下次新功能开始前  │
└──────────────────┘     │ 必须重新读取     │
                         └──────────────────┘
```

**每次新大功能开始前：**

```yaml
pre_feature_checklist:
  - [ ] 读取 BASE_RULES.md (最新版本)
  - [ ] 读取 DECISIONS.md (历史决策)
  - [ ] 读取 CONTEXT.md (领域术语)
  - [ ] 确认当前实现符合所有规则
  - [ ] 如有规则冲突 → 先讨论再实现
```

---

## English

### 🎯 Project Overview

GSD Agent v2.2 introduces **modular architecture** and **Solo Coder mode**, enabling AI to work like an independent developer with minimal human intervention.

---

### 🆕 v2.2 New Features

#### 📦 Modular Architecture
- Each module auto-reviews after completion
- Milestone establishment between modules
- Automatic rule updates for significant changes

#### 🤖 Solo Coder Mode
- **Phase 1**: Deep consensus (user involvement required)
- **Phase 2**: Autonomous execution (no intervention needed)
- Only 2 scenarios require human help:
  1. High-risk operations (file deletion, etc.)
  2. Cannot execute autonomously (ADB debugging, etc.)

#### 🔧 External Tools Integration
- IDE support (Android Studio, VS Code)
- Other AI agents delegation
- Build tools (Gradle, npm, pip)

#### 📋 Rule-Driven System
- Auto-update BASE_RULES.md on significant changes
- Re-read rules before each new feature

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

**Version 2.2** | **Modular + Solo Coder + Tool Integration**

</div>
