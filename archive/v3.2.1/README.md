# GSD Agent v3.2.1 - AI Code Management Expert (6D Review + Gatekeeper + Build-Level Verification)

<div align="center">

![Version](https://img.shields.io/badge/version-3.2.1-blue?style=flat-square)
![License](https://img.shields.io/badge/license-MIT-green?style=flat-square)
![Review](https://img.shields.io/badge/Review-6D-red?style=flat-square)
![Gatekeeper](https://img.shields.io/badge/Gatekeeper-Constitutional-orange?style=flat-square)
![Verification](https://img.shields.io/badge/Verification-Build_Level-purple?style=flat-square)

**Get Shit Done, But Do It Right, Securely & With Zero Hallucination**

</div>

---

## 中文

### 🎯 项目简介

GSD Agent v3.2.1 是一次**质量与安全双重升级**，引入 **6D 增强审查系统**、**Gatekeeper 宪法级守护**、**编译级验证逻辑**和 **智能上下文压缩系统**。

#### 核心理念

> **"像编译器一样严格验证，像宪法一样守护规则"**
>
> **"零容忍幻觉，零妥协质量"**

---

### 🔥 v3.2.1 核心特性 (2026-05-16)

| 特性 | 说明 | 创新程度 |
|------|------|----------|
| 🔍 **6D 增强审查系统** | 在 5D 基础上增加 D6: AI 反幻觉维度，6 维全方位覆盖 | **革命性** ⭐⭐⭐⭐⭐ |
| 🛡️ **Gatekeeper 宪法级守护** | 预提交拦截 + 推送前审核 + 文件白名单/黑名单 + 安全扫描 | **企业级** ⭐⭐⭐⭐⭐ |
| 🧪 **编译级验证逻辑** | 像编译器一样在代码生成前进行语法/类型/依赖预检 | **创新性** ⭐⭐⭐⭐⭐ |
| 📦 **智能上下文自动压缩** | Token 使用减少 70-90%，支持超大型项目 (>25,000 文件) | **效率飞跃** ⭐⭐⭐⭐⭐ |
| 🤖 **AI 反幻觉检测 (FactVerifier)** | 自动验证 API 存在性、库用法正确性、文档引用真实性 | **安全标杆** ⭐⭐⭐⭐⭐ |
| 🌐 **联网方案审计 (SolutionAudit)** | 自动搜索最佳实践，对比当前方案与社区标准 | **专业级** ⭐⭐⭐⭐ |

---

### 🆕 v3.2.1 详细特性

#### 🔍 1. 6D 增强审查系统

```
传统 5D 审查:
┌─────────────────────────────────────┐
│ L0   → 基础质量 (命名/格式/死代码)  │
│ L1   → 设计规范 (SOLID/DRY/复杂度) │
│ L2   → 安全性能 (SQL注入/XSS/N+1)   │
│ Zoom-Out → 全局一致性 (Score≥75)    │
│ Consistency → 需求对齐 (≥95%)       │
└─────────────────────────────────────┘

v3.2.1 新增:
┌─────────────────────────────────────┐
│ D6   → AI 反幻觉检测                │
│       ✓ API 存在性验证              │
│       ✓ 库用法正确性检查            │
│       ✓ 文档引用真实性确认          │
│       ✓ 置信度标注                  │
│       ✓ 虚假声明拦截                │
└─────────────────────────────────────┘
```

#### 🛡️ 2. Gatekeeper 宪法级守护系统

```yaml
gatekeeper_system:
  pre_commit_hook:
    file_whitelist:
      - "^\\.gitignore$"
      - "^README\\.md$"
      "^LICENSE$"
      - "^package\\.json$"
      - "^\\.trae/"
      - "^\\.codegraph/"
    
    file_blacklist:
      - "\\.ps1$"           # PowerShell脚本
      - "test-.*\\.ts$"     # 测试文件
      - "_REPORT\\.md$"     # 报告文档
    
    action: "BLOCK if invalid files detected"
  
  pre_push_hook:
    security_scan:
      - "Check for hardcoded secrets"
      - "Check for sensitive data"
      - "Check for credentials"
    
    version_check:
      - "SKILL.md version == README.md version"
    
    size_limit:
      max_size_mb: 2
    
    action: "BLOCK if any check fails"
  
  enforcement_level: "CONSTITUTIONAL"
  # 意味着：不可绕过、不可禁用、不可降级
```

**三层防御架构：**

```
Layer 1: .gitignore        → 防止跟踪无效文件
         ↓
Layer 2: Pre-commit Hook   → 阻止包含无效文件的提交
         ↓
Layer 3: Pre-push Hook     → 最终防线：安全扫描+版本检查
```

#### 🧪 3. 编译级验证逻辑 (Build-Level Verification)

```
传统流程:
需求 → 设计 → 实现 → 测试 → 发现错误 → 回去修改

v3.2.1 流程 (编译级验证):
需求 → 设计 → [预验证] → 实现 → 测试
              ↑
              └─ 在实现前就检查:
                 ├─ 语法正确性
                 ├─ 类型兼容性
                 ├─ 依赖可用性
                 ├─ API 签名匹配
                 └─ 配置完整性
```

**验证矩阵：**

| 验证项 | 检查内容 | 失败处理 |
|--------|---------|---------|
| **语法预检** | 代码是否符合语言语法规范 | ❌ 阻止生成，要求修正 |
| **类型预检** | 类型是否匹配，泛型是否正确 | ❌ 阻止生成，提示类型错误 |
| **依赖预检** | 所依赖的模块/API 是否存在 | ❌ 要求先创建依赖或调整方案 |
| **API 签名** | 函数参数/返回值是否匹配调用方 | ❌ 提示签名不匹配 |
| **配置完整** | 所需配置项是否都已定义 | ❌ 列出缺失配置 |

#### 📦 4. 智能上下文自动压缩系统

```
问题: 大型项目上下文超出 Token 限制
解决方案: Context Mode V1 智能压缩

原始上下文: 150k+ tokens (超限)
         ↓ 智能分析
压缩后:    15k-45k tokens (减少 70-90%)

压缩策略:
┌──────────────────────────────────────────┐
│ 1. 相关性排序                             │
│    → 只保留与当前任务直接相关的文件       │
│                                          │
│ 2. 符号提取                              │
│    → 用函数签名替代完整函数体             │
│                                          │
│ 3. 层级摘要                              │
│    → 不相关文件只保留文件头注释           │
│                                          │
│ 4. 动态裁剪                              │
│    → 根据任务进展实时更新上下文           │
└──────────────────────────────────────────┘
```

**性能提升：**

| 指标 | 压缩前 | 压缩后 | 提升 |
|------|-------|-------|------|
| Token 使用量 | 150k+ | 15-45k | **70-90% 减少** |
| 响应速度 | 慢 | 快 | **10-60x 加速** |
| 支持项目规模 | <5k 文件 | >25k 文件 | **5x 扩展** |
| 成本 | 高 | 低 | **显著降低** |

#### 🤖 5. AI 反幻觉检测 (FactVerifier)

```yaml
fact_verifier:
  verification_types:
    api_existence:
      method: "查阅官方文档/TypeScript定义"
      confidence_threshold: 95%
      
    library_usage:
      method: "对照库的示例代码和API参考"
      confidence_threshold: 90%
      
    documentation_reference:
      method: "验证链接有效性和内容匹配"
      confidence_threshold: 95%
      
  response_on_failure:
    - "阻止使用未验证的信息"
    - "标记为需要人工确认"
    - "提供正确的替代方案"
```

**检测示例：**

| AI 声称 | FactVerifier 结果 | 处理方式 |
|---------|------------------|---------|
| "`axios.getJSON()` 存在" | ❌ 不存在，只有 `axios.get()` | 纠正为正确 API |
| "React 推荐 Hooks" | ✅ 官方文档确认 | 通过验证 |
| "根据 Vue 3 最佳实践..." | ⚠️ 需要具体链接 | 要求提供来源 |

#### 🌐 6. 联网方案审计 (SolutionAudit)

```
审计流程:
┌──────────┐    ┌──────────┐    ┌──────────┐
│ 当前方案 │ →  │ 搜索最佳 │ →  │ 对比分析 │
│          │    │ 实践     │    │          │
└──────────┘    └──────────┘    └─────┬────┘
                                      │
                    ┌─────────────────┼─────────────────┐
                    ▼                 ▼                 ▼
               ✅ 一致      ⚠️ 有更好方案    ❌ 方案有问题
               继续执行     记录建议       阻止并推荐
```

---

## English

### 🎯 Project Overview

GSD Agent v3.2.1 is a **dual upgrade in quality and security**, introducing the **6D Enhanced Review System**, **Constitutional Gatekeeper**, **Build-Level Verification Logic**, and **Intelligent Context Compression System**.

---

### 🔥 v3.2.1 Core Features (2026-05-16)

| Feature | Description | Innovation Level |
|---------|-------------|------------------|
| 🔍 **6D Review System** | Adds D6: AI Anti-Hallucination dimension to existing 5D | **Revolutionary** ⭐⭐⭐⭐⭐ |
| 🛡️ **Constitutional Gatekeeper** | Pre-commit block + Pre-push audit + Whitelist/Blacklist + Security scan | **Enterprise** ⭐⭐⭐⭐⭐ |
| 🧪 **Build-Level Verification** | Compiler-like syntax/type/dependency pre-check before code generation | **Innovative** ⭐⭐⭐⭐⭐ |
| 📦 **Smart Context Compression** | Token reduction 70-90%, supports >25,000 file projects | **Efficiency Leap** ⭐⭐⭐⭐⭐ |
| 🤖 **AI Anti-Hallucination (FactVerifier)** | Auto-verify API existence, library usage, doc reference authenticity | **Security Benchmark** ⭐⭐⭐⭐⭐ |
| 🌐 **Online Solution Audit** | Auto-search best practices, compare with community standards | **Professional** ⭐⭐⭐⭐ |

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

**Version 3.2.1** | **6D Review** | **Gatekeeper** | **Build-Level Verification**

</div>
