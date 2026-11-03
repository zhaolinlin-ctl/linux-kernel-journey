# 实验：Page Cache 命中与未命中路径对比

## 问题

首次读大文件与二次读同一文件，`filemap_fault`、`add_to_page_cache_lru`、预读函数的触发次数差异是什么？

## 环境

- 内核版本：6.6.x（QEMU 中运行）
- 文件系统：ext4
- 工具：bpftrace 0.20 / ftrace
- 测试文件：`dd if=/dev/zero of=/tmp/test.bin bs=1M count=100`

## 复现步骤

```bash
# 1. 清理 Page Cache
echo 3 > /proc/sys/vm/drop_caches

# 2. 首次读
cat /tmp/test.bin > /dev/null

# 3. 二次读
cat /tmp/test.bin > /dev/null
```

## 预期结果
```bash
首次读：触发缺页与预读，filemap_fault > 0

二次读：Page Cache 命中，filemap_fault ≈ 0
```

## 实际数据
见 data/。

## 结论
<填写>

## 遗留问题
□ 预读窗口大小与文件访问模式的关系
