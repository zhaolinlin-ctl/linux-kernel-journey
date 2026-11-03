# 简历条目

## 存储 / 文件系统方向

### 条目 1：Page Cache 读路径分析

- 问题：版本构建中关注根文件系统读取性能，但缺乏内核侧量化依据。
- 方案：在 QEMU（6.6.x）中用 bpftrace 追踪 `filemap_fault`、`add_to_page_cache_lru`、预读函数，对比冷读/热读场景。
- 证据：冷读触发 N 次缺页与 M 次预读，热读 `filemap_fault`≈0；报告见 <GitCode 链接>。
- 状态：草稿 / 可投递

### 条目 2：上游补丁

- 问题：kselftest/mm 下某文件存在编译警告。
- 方案：修复并通过 checkpatch，走 git send-email 提交。
- 证据：邮件线程 <lore 链接>，`Signed-off-by` 记录。
- 状态：已发送 / 已接收
