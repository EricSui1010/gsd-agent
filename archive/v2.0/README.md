# GSD Agent v2.0 - AI Code Management Agent (8-Layer Protection System)

<div align="center">

![Version](https://img.shields.io/badge/version-2.0-blue?style=flat-square)
![License](https://img.shields.io/badge/license-MIT-green?style=flat-square)
![Protection](https://img.shields.io/badge/protection-8_layers-red?style=flat-square)

**Get Shit Done, But Do It Right - With Global Architecture Awareness**

</div>

---

## 中文

### 🎯 项目简介

GSD Agent v2.0 是一个**具备全局架构审视能力**的 AI 代码管理智能体。在 v1.0 质量保障机制的基础上，新增 **8 大防护系统**，确保 AI 能够：

- 🔍 **全局审视**：及时更新架构和功能实现方式
- 🔗 **关联感知**：多个关联任务时，每个子任务都重新读取标准并开启新上下文
- 🛡️ **全方位防护**：从无效代码到幻觉信息，8 层防护覆盖所有风险点

#### 核心理念

> **"不仅要写对代码，更要理解全局架构"**
>
> **"每个子任务都是独立的，必须重新加载上下文和标准"**

---

### 🆕 v2.0 新特性总览

#### 🛡️ 8 大防护机制

| # | 防护类型 | 防止的问题 | 核心规则 |
|---|---------|-----------|----------|
| **1** | **无效代码防护** | 无实际作用的代码 / 过度工程 / 死代码 / 重复代码 | 每行代码必须有明确目的 |
| **2** | **逻辑死结防护** | 无限循环 / 循环依赖 / 重复失败 | 最大100次迭代，最多3次重试 |
| **3** | **幻觉防护** | 不存在的API / 错误的库用法 / 虚假文档引用 | 所有声明必须有官方文档证据 |
| **4** | **未验证信息防护** | 无证据的信息 / 未测试的功能 | 必须标注置信度 + 测试验证 |
| **5** | **阶段清理机制** | 残留调试代码 / 注释代码 / 过时文档 | 每个阶段完成后自动清理 |
| **6** | **需求演进支持** | 需求变化时架构滞后 | 显著性 > 30% 自动触发全局审查 |
| **7** | **多任务上下文管理** | 任务间污染 / 上下文溢出 | 独立上下文 + 150k tokens 限制 |
| **8** | **遗留项目处理** | "擦屁股"项目无序状态 | 系统化评估→测试→重构→优化 |

---

### 🔬 防护机制详解

#### 1️⃣ 无效代码防护 (Invalid Code Protection)

```
拦截规则:
┌─────────────────────────────────────────────┐
│ ❌ 无实际作用的代码                          │
│    例: 定义了但从未调用的函数/变量           │
│    → 删除或标记为 @deprecated               │
│                                             │
│ ❌ 过度工程的解决方案                        │
│    例: 用工厂模式解决只有2个子类的问题      │
│    → 简化为直接实现                         │
│                                             │
│ ❌ 死代码                                   │
│    例: if(false) { ... } / 永远不会执行的分支 │
│    → 直接删除                               │
│                                             │
│ ❌ 重复代码                                 │
│    例: 复制粘贴超过3次的逻辑                │
│    → 提取为公共函数/工具方法                │
└─────────────────────────────────────────────┘
```

#### 2️⃣ 逻辑死结防护 (Logic Deadlock Protection)

```yaml
limits:
  max_iterations: 100        # 最大迭代次数
  max_retry_attempts: 3       # 最大重试次数
  
detection:
  infinite_loop:              # 无限循环检测
    pattern: "while(true) / for(;;)"
    action: "强制终止 + 报告"
  
  circular_dependency:        # 循环依赖检测
    check: "模块A→B→A 或 函数A调用B调用A"
    action: "重构为单向依赖"
  
  repeated_failure:           # 重复失败检测
    threshold: 3              # 同一错误出现3次
    action: "升级到人工介入"
```

#### 3️⃣ 幻觉防护 (Hallucination Protection)

**AI 常见幻觉及应对：**

| 幻觉类型 | 示例 | 验证方式 |
|---------|------|---------|
| **不存在的 API** | `axios.getJSON()` (不存在的方法) | 查阅官方文档 |
| **错误的库用法** | `useState([])` 参数错误 | 查阅 TypeScript 类型定义 |
| **虚假的文档引用** | "根据 React 官方建议..." (实际没有) | 要求提供链接 |

**防护流程：**
```
AI 声称某 API 存在 → 
  ↓
要求提供官方文档链接 → 
  ↓
验证链接有效性 → 
  ↓
✅ 通过 / ❌ 拦截并纠正
```

#### 4️⃣ 未验证信息防护 (Unverified Info Protection)

```markdown
## 信息置信度标注规范

- ✅ **已验证** (Confidence: 95%+): 有官方文档 + 已通过测试
- ⚠️ **可能正确** (Confidence: 70-94%): 有间接证据，需进一步验证
- ❓ **未确认** (Confidence: <70%): 仅凭经验，必须标注并测试
- ❌ **不可信** (Confidence: 0%): 无法找到任何来源，禁止使用
```

#### 5️⃣ 阶段清理机制 (Phase Cleanup)

```yaml
phase_completion_checklist:
  - [ ] 自动清理所有 console.log / debugger
  - [ ] 移除所有注释掉的代码块
  - [ ] 运行架构审查 (是否有新增的技术债?)
  - [ ] 更新相关文档 (README/CHANGELOG/API docs)
  - [ ] 确认无 TODO/FIXME/HACK 残留
```

#### 6️⃣ 需求演进支持 (Requirement Evolution)

```
需求变化检测:
┌─────────────────────────────────────────┐
│ 当前理解 vs 新需求                      │
│                                         │
│ 差异显著性 = |新需求 - 当前理解| / 总体 │
│                                         │
│ if (显著性 > 30%):                      │
│   → 触发全局架构审查                    │
│   → 更新架构设计文档                    │
│   → 重构受影响的代码                    │
│   → 更新所有相关测试                    │
│ else:                                  │
│   → 正常增量开发                        │
└─────────────────────────────────────────┘
```

#### 7️⃣ 多任务上下文管理 (Multi-Task Context)

```
多任务处理流程:
┌──────────┐     ┌──────────┐     ┌──────────┐
│ Task A   │     │ Task B   │     │ Task C   │
│          │     │          │     │          │
│ Context  │     │ Context  │     │ Context  │
│ A Only   │     │ B Only   │     │ C Only   │
└────┬─────┘     └────┬─────┘     └────┬─────┘
     │                │                │
     ▼                ▼                ▼
  ┌─────────────────────────────────────┐
  │  每个 Task 开始前:                   │
  │  1. 清空上下文                       │
  │  2. 重新加载 BASE_RULES.md          │
  │  3. 加载项目标准文档                 │
  │  4. 检查上下文大小 (< 150k tokens)  │
  │  5. 启动实时健康监控                 │
  └─────────────────────────────────────┘
```

#### 8️⃣ 遗留项目处理 (Legacy Project Handler)

```markdown
## "擦屁股"项目处理流程

### Phase 1: 项目评估和质量分析
- [ ] 代码复杂度分析 (圈复杂度、耦合度)
- [ ] 测试覆盖率评估
- [ ] 安全漏洞扫描
- [ ] 性能瓶颈识别

### Phase 2: 测试补充
- [ ] 为无测试的核心模块添加单元测试
- [ ] 为关键路径添加集成测试
- [ ] 建立回归测试基线

### Phase 3: 架构重构
- [ ] 识别并消除循环依赖
- [ ] 模块解耦和职责分离
- [ ] 引入设计模式简化复杂逻辑

### Phase 4: 性能优化
- [ ] 数据库查询优化 (N+1 问题)
- [ ] 前端渲染优化 (虚拟列表/懒加载)
- [ ] 缓存策略实施

### Phase 5: 安全加固
- [ ] 输入验证强化
- [ ] 权限控制审计
- [ ] 敏感数据加密
```

---

## English

### 🎯 Project Overview

GSD Agent v2.0 is an **AI code management agent with global architecture awareness**. Built on v1.0's quality assurance foundation, it introduces an **8-layer protection system** covering all risk points from invalid code to hallucinated information.

---

### 🆕 v2.0 New Features: 8-Layer Protection

| # | Protection Type | Prevents | Core Rule |
|---|-----------------|----------|-----------|
| **1** | Invalid Code | Useless code / Over-engineering / Dead code | Every line must have purpose |
| **2** | Logic Deadlock | Infinite loops / Circular deps / Repeated failures | Max 100 iterations, 3 retries |
| **3** | Hallucination | Fake APIs / Wrong library usage / False references | All claims need official docs |
| **4** | Unverified Info | Unproven info / Untested features | Must label confidence + test |
| **5** | Phase Cleanup | Debug code残留 / Commented-out code | Auto-clean after each phase |
| **6** | Requirement Evolution | Architecture lag when requirements change | >30% significance triggers global review |
| **7** | Multi-Task Context | Cross-task pollution / Context overflow | Independent contexts, 150k limit |
| **8** | Legacy Projects | Chaotic legacy codebases | Systematic assess→test→refactor→optimize |

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

**Version 2.0** | **8-Layer Protection System** | **Global Architecture Awareness**

</div>
