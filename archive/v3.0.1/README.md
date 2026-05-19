# GSD Agent v3.0.1 - AI Code Management Expert (Security Iron Rule #0 + Modular Pipeline)

<div align="center">

![Version](https://img.shields.io/badge/version-3.0.1-blue?style=flat-square)
![License](https://img.shields.io/badge/license-MIT-green?style=flat-square)
![Security](https://img.shields.io/badge/Security-Iron_Rule_%230-red?style=flat-square)
![Pipeline](https://img.shields.io/badge/Pipeline-Automatic-brightgreen?style=flat-square)

**Get Shit Done, But Do It Right & Securely**

</div>

---

## 中文

### 🎯 项目简介

GSD Agent v3.0.1 在 v3.0 基础上，新增**安全铁律 #0** 和 **模块化自动流转管道**，将安全性提升到最高优先级。

#### 核心理念

> **"安全第一，永远不妥协"**
>
> **"模块完成后自动流转，无需手动启动下一个"**

---

### 🆕 v3.0.1 新特性

#### 🔴🔴🔴 项目第一原则：安全保密铁律 (IRON RULE #0)

> **优先级**: 超越所有其他规则 | **执行**: 强制 | **容忍度**: 零

**绝对禁止：**
- ❌ 密钥 / 密码 / 静态 IP / 账号信息 / 证书 / 连接字符串
- ❌ 任何敏感数据以明文方式存储在代码中

**强制规则：**

| 规则 | 说明 | 违反后果 |
|------|------|---------|
| **❌ 禁止明文存储** | 使用环境变量 (`process.env.XXX`) | 拦截提交 |
| **❌ 禁止索取敏感信息** | 不要求用户填入密码/密钥 | 立即停止 |
| **✅ 必须指导变量化** | 教用户用 `.env` / 配置文件 / 密钥管理服务 | 必须执行 |
| **✅ 公网同步前强制审核** | GitHub 推送前必须完整安全扫描 | 未通过则阻止 |

**触发时机：**
- Phase 1: 询问是否涉及敏感数据处理
- Planning: 规划环境变量策略
- 每个 Wave 前: 检查无硬编码密钥
- Review L2: 完整安全扫描
- Pre-Git Push: Pre-Push 严格审核

---

#### 🔄 模块化自动流转 (Modular Pipeline)

```
流转条件（全部满足）:
┌─────────────────────────────────────────────┐
│ ✅ TDD 测试 100% 通过                        │
│ ✅ 测试覆盖率 ≥ 80%                         │
│ ✅ 五维审查通过 (L0/L1/L2/ZoomOut/Consistency)│
│ ✅ 安全扫描无硬编码密钥                      │
│ ✅ Checkpoint 已保存                         │
│ ✅ 依赖已完成                                │
└─────────────────────────────────────────────┘
                    ↓
        自动启动 M-XXX+1
```

**控制命令：**

| 命令 | 功能 |
|------|------|
| `/pipeline-status` | 查看当前管道状态 |
| `/pipeline-pause` | 暂停自动流转 |
| `/pipeline-resume` | 恢复自动流转 |
| `/pipeline-skip [M-XXX]` | 跳过指定模块 |

---

## English

### 🎯 Project Overview

GSD Agent v3.0.1 adds **Security Iron Rule #0** and **Modular Auto-Pipeline** on top of v3.0, elevating security to the highest priority.

---

### 🆕 v3.0.1 New Features

#### 🔴🔴🔴 Security Iron Rule #0 (Absolute Priority)

**Absolutely Forbidden:**
- ❌ Keys / Passwords / Static IPs / Account info / Certificates / Connection strings
- ❌ Any sensitive data in plaintext in code

**Mandatory Rules:**
- Use environment variables (`process.env.XXX`)
- Never ask users to fill in passwords/secrets
- Guide users to use `.env` files or key management services
- Force security scan before any public sync (GitHub push)

#### 🔄 Modular Auto-Pipeline

Automatic module transition when all quality gates pass:
- ✅ TDD tests 100% passing
- ✅ Test coverage ≥80%
- ✅ 5D review passed
- ✅ Security scan clean
- ✅ Checkpoint saved
- ✅ Dependencies completed

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

**Version 3.0.1** | **Security First** | **Auto-Pipeline**

</div>
