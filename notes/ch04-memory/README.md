# 第04章 内存管理解析

## 本章目标

围绕存储方向，建立 Page Cache 的机制直觉，不追求通读全章。

## 问题清单

- [ ] Q01 文件页的结构与归属
- [ ] Q02 Page Cache 查找与缺页/预读路径
- [ ] Q03 文件页回收路径
- [ ] Q04 页到 bio 的转换

## 产出

- [ ] `page-cache.md` 调用链图
- [ ] 一次 bpftrace 观测实验（见 experiments/）
