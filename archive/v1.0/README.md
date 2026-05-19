# GSD Agent v1.0 - AI Code Management Agent (Based on GitShitDone)

<div align="center">

![Version](https://img.shields.io/badge/version-1.0-blue?style=flat-square)
![License](https://img.shields.io/badge/license-MIT-green?style=flat-square)
![Based On](https://img.shields.io/badge/Based_On-GitShitDone-orange?style=flat-square)

**Get Shit Done - With Quality Assurance Built-In**

</div>

---

## 中文

### 🎯 项目简介

GSD Agent v1.0 是一个基于开源项目 [GitShitDone](https://github.com/...) 的 **AI 代码管理智能体**。它通过系统化的**质量保障机制**确保 AI 生成的代码高质量、可维护且符合工程标准。

#### 核心理念

> **"先保证质量，再追求速度"**
>
> **"像代码必须通过编译一样 - 每个产出物都必须通过质量门禁"**

---

### 🔥 v1.0 核心特性

| 特性 | 说明 | 重要性 |
|------|------|--------|
| ✅ **TDD 强制执行** | 先写失败测试 → 再写最小实现 → 最后重构优化 | **核心** ⭐⭐⭐⭐⭐ |
| ✅ **多级代码审查** | L0(基础质量) / L1(设计规范) / L2(安全性能) 三级递进审查 | **核心** ⭐⭐⭐⭐⭐ |
| ✅ **反合理化保护** | 防止 AI 找借口跳过质量流程（如"这个不需要测试"） | **创新** ⭐⭐⭐⭐ |
| ✅ **自动化验证** | lint / test / typecheck 全自动执行，无需手动触发 | **效率** ⭐⭐⭐⭐ |

---

### 🛡️ 质量保障机制详解

#### 1️⃣ TDD 强制执行 (Test-Driven Development)

```
开发循环:
┌─────────────┐    ┌─────────────┐    ┌─────────────┐
│   RED       │ → │   GREEN     │ → │   REFACTOR  │
│ 写失败测试   │    │ 最小实现     │    │ 重构优化     │
└─────────────┘    └─────────────┘    └─────────────┘
     ↑                                        │
     └────────────────────────────────────────┘
              (强制循环，不可跳过)
```

**规则：**
- ❌ 不允许先写实现再补测试
- ❌ 不允许"这个太简单不需要测试"
- ✅ 每个功能必须有对应的测试用例
- ✅ 测试失败时禁止进入下一步

#### 2️⃣ 多级代码审查 (L0/L1/L2)

| 级别 | 名称 | 检查内容 | 触发时机 |
|------|------|---------|----------|
| **L0** | 基础质量检查 | 命名规范、格式化、死代码检测 | 每次 commit |
| **L1** | 设计规范审查 | SOLID原则、DRY、复杂度<10 | 每个 PR/MR |
| **L2** | 安全性能扫描 | SQL注入、XSS、N+1查询、资源泄漏 | 发布前 |

#### 3️⃣ 反合理化保护 (Anti-Rationalization Guard)

**常见 AI 借口及拦截：**

| AI 借口 | 拦截响应 |
|---------|----------|
| "这个函数太简单了，不需要测试" | ❌ 简单函数也需要边界测试 |
| "时间不够，先跳过 lint" | ❌ lint 是强制性步骤 |
| "这是临时代码，后面会重构" | ❌ 没有临时代码，只有技术债 |
| "用户不会这样使用" | ❌ 必须考虑所有边界情况 |

#### 4️⃣ 自动化验证 (Automated Verification)

```yaml
verification_pipeline:
  pre_commit:
    - eslint --fix
    - prettier --write
    - tsc --noEmit
  
  pre_push:
    - npm test
    - npm run lint
    - npm run typecheck
  
  on_pr:
    - security scan
    - dependency audit
    - coverage report (threshold: 80%)
```

---

## English

### 🎯 Project Overview

GSD Agent v1.0 is an **AI code management agent** based on the open-source project GitShitDone. It ensures high-quality, maintainable code through systematic **quality assurance mechanisms**.

#### Core Philosophy

> **"Quality First, Speed Second"**
>
> **"Like code must compile before running - every deliverable must pass quality gates"**

---

### 🔥 v1.0 Core Features

| Feature | Description | Priority |
|---------|-------------|----------|
| ✅ **TDD Enforcement** | Write failing test → Min implementation → Refactor (mandatory cycle) | **Core** ⭐⭐⭐⭐⭐ |
| ✅ **Multi-Level Code Review** | L0(Basic) / L1(Design) / L2(Security) progressive review | **Core** ⭐⭐⭐⭐⭐ |
| ✅ **Anti-Rationalization Guard** | Prevents AI from skipping quality steps with excuses | **Innovation** ⭐⭐⭐⭐ |
| ✅ **Automated Verification** | Auto-run lint/test/typecheck without manual trigger | **Efficiency** ⭐⭐⭐⭐ |

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

**Version 1.0** | **Based on GitShitDone** | **Initial Release**

</div>
