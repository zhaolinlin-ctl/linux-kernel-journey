# patches

每个补丁一个子目录，命名：`NNNN-<subsystem>-<short-desc>`。

## 状态跟踪

| 编号 | 主题 | 子系统 | 版本 | 状态 | 邮件线程 |
|------|------|--------|------|------|----------|
| 0001 | kselftest mm fix warning | kselftest/mm | v1 | 已发送 | <lore 链接> |

状态：草稿 / 已发送 / review 中 / 已接收 / 已拒绝

## 目录约定

- `README.md`：补丁说明、状态、review 记录摘要
- `v1.patch` / `v2.patch`：每个版本的补丁文件
- `checkpatch.log`：`checkpatch.pl` 输出
- `thread.md`：邮件线程记录与回复要点
