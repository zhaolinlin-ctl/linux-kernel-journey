# 调用链：<主题>

- 内核版本：6.6.x
- 源码路径：`fs/...`、`mm/...`
- 追踪工具：ftrace / bpftrace / perf

## 调用链

```mermaid
graph TD
    A[vfs_read] --> B[filemap_read]
    B --> C{Page Cache 命中?}
    C -->|是| D[copy_page_to_iter]
    C -->|否| E[filemap_fault / 预读]
    E --> F[submit_bio]
