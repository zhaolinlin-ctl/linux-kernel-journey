# kernel-storage-journey

```text
kernel-storage-journey/
├── notes/          # 第04章问题式笔记、调用链图
├── experiments/    # bpftrace/ftrace 脚本、QEMU 配置、数据
├── patches/        # 补丁草稿、checkpatch 输出、邮件线程链接
├── reports/        # 每篇“问题—方法—数据—结论”报告
└── resume/         # 简历条目迭代、面试故事库
```

## 提交规范

### Commit Message 结构

```text
<type>(<scope>): <imperative summary>        # 首行 ≤ 50 字符，小写开头，句尾不加句号

<英文 bullet，单行 ≤ 72 字符，超长换行缩进>
<对应中文翻译>

<英文 bullet>
<对应中文翻译>

Signed-off-by: 姓名 <邮箱>                     # 用 git commit -s 自动生成
```

- `type`：必填，见下表
- `scope`：可选，如 `docs(readme): ...`、`feat(trace): ...`
- 首行用**祈使句**（`fix` / `add` / `update`，不用 `fixed` / `adds`）
- body 中英文各占一行，中文紧跟在对应英文 bullet 下方
- `Signed-off-by` 放最后，中间空一行，用 `git commit -s` 自动追加

### type 对照表

| type | 用途 | 中文 |
|---|---|---|
| `feat` | new feature | 新功能 |
| `fix` | bug fix | 修复缺陷 |
| `docs` | documentation only | 文档 |
| `style` | formatting, no logic change | 格式（不影响逻辑） |
| `refactor` | code refactoring | 重构 |
| `perf` | performance | 性能优化 |
| `test` | adding/fixing tests | 测试 |
| `build` | build system / deps | 构建/依赖 |
| `ci` | CI config | 持续集成 |
| `chore` | misc maintenance | 杂务（脚手架、目录等） |

### 示例

```text
docs: fix README heading and directory tree rendering

- Add a blank line after the H1 heading so the following lines are not
  parsed as part of the title.
  H1 标题后补空行，避免后续内容被解析进标题。

- Wrap the directory tree in a fenced code block to preserve line breaks
  and monospace alignment.
  目录树改用围栏代码块包裹，保留换行与等宽对齐。

Signed-off-by: zhaolin01 <zl07285@163.com>
```
