# Page Cache 机制笔记

## 1. 文件页如何进入 Page Cache

<源码路径 + 自己的话>

## 2. 查找路径

<`find_get_page` / `filemap_get_pages` 的逻辑>

## 3. 缺页与预读

<`filemap_fault` / `page_cache_sync_readahead` 的触发条件>

## 4. 回收与回写

<干净页 vs 脏页的回收路径差异>

## 5. 待验证

- [ ] bpftrace 观测命中/未命中场景下 `filemap_fault` 的触发次数
