# GSD Agent v2.1 - AI Code Management Agent (Conflict Detection + Git Sync)

<div align="center">

![Version](https://img.shields.io/badge/version-2.1-blue?style=flat-square)
![License](https://img.shields.io/badge/license-MIT-green?style=flat-square)
![Git Sync](https://img.shields.io/badge/Git-Sync_&_Rollback-brightgreen?style=flat-square)

**Get Shit Done, With Conflict Awareness & Version Control**

</div>

---

## 中文

### 🎯 项目简介

GSD Agent v2.1 在 v2.0 的 8 大防护机制基础上，新增 **状态冲突检测** 和 **Git 同步回滚能力**，确保每个执行步骤都与之前的需求保持一致，并支持完整的版本控制。

#### 核心理念

> **"每一步都要回头看，确保没有偏离方向"**
>
> **"随时可以回滚到任何之前的状态"**

---

### 🆕 v2.1 新特性

#### 🔍 状态冲突检测 (State Conflict Detection)

```
执行流程:
┌──────────┐    ┌──────────────┐    ┌──────────┐
│ 执行前   │ →  │ 执行动作     │ →  │ 执行后   │
│ 快照状态 │    │ (代码变更)   │    │ 冲突检测 │
└──────────┘    └──────────────┘    └─────┬────┘
                                           │
                              ┌────────────┼────────────┐
                              ▼            ▼            ▼
                         ✅ 一致      ⚠️ 偏离      ❌ 冲突
                         继续执行     记录警告     阻止+报告
```

**检测维度：**

| 维度 | 检查内容 | 处理方式 |
|------|---------|----------|
| **需求一致性** | 当前实现是否偏离原始需求？ | 偏离 > 10% 时警告 |
| **实现方式** | 是否与之前的架构决策矛盾？ | 矛盾时要求解释或回滚 |
| **代码风格** | 是否引入了新的模式/反模式？ | 不一致时提示统一 |
| **依赖关系** | 新增的依赖是否合理？ | 异常依赖需确认 |

#### 🔄 Git 同步和回滚 (Git Sync & Rollback)

```yaml
git_workflow:
  pre_execution:
    - git status          # 检查工作区干净
    - git stash           # 保存当前状态（如有未提交）
    - git checkout -b feature/current-task  # 创建功能分支
  
  post_execution:
    - git diff --stat     # 查看变更统计
    - git add .           # 暂存所有变更
    - git commit -m "feat: [task-description]"
  
  rollback_capability:
    - git log --oneline -10          # 查看最近10个提交
    - git revert <commit-hash>      # 撤销特定提交（保留历史）
    - git reset --hard <hash>       # 强制回滚到某状态（慎用）
    - git reflog                    # 查找回丢失的提交
```

**回滚场景：**

| 场景 | 回滚方式 | 安全等级 |
|------|---------|---------|
| 单个提交有误 | `git revert` | ✅ 安全（保留历史） |
| 整个任务方向错误 | `git reset` 到任务开始前 | ⚠️ 中等（需 force push） |
| 完全搞砸了 | `git reflog` 找到好的状态 | 🔴 最后手段 |

---

## English

### 🎯 Project Overview

GSD Agent v2.1 adds **state conflict detection** and **Git sync/rollback capabilities** on top of v2.0's 8-layer protection system, ensuring every execution step remains consistent with prior requirements.

---

### 🆕 v2.1 New Features

#### 🔍 State Conflict Detection

After each execution state, the agent checks for:
- **Requirement consistency**: Is implementation drifting from original requirements?
- **Implementation approach**: Any contradictions with previous architecture decisions?
- **Code style consistency**: New patterns or anti-patterns introduced?
- **Dependency sanity**: Are new dependencies justified?

#### 🔄 Git Sync & Rollback

Full Git workflow integration:
- Pre-execution: Clean workspace, create feature branch
- Post-execution: Commit with descriptive messages
- Rollback support: `git revert`, `git reset`, `git reflog`

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

**Version 2.1** | **Conflict Detection** | **Git Sync & Rollback**

</div>
