# 问题池

| ID | 问题 | 来源章节 | 状态 | 关联源码 | 输出 |
|----|------|----------|------|----------|------|
| Q01 | 文件页读入内存后以什么结构存在？挂在谁身上？ | ch04 | 待读 | `struct page`, `address_space`, `xarray` | |
| Q02 | read() 命中 Page Cache 与未命中分别走哪条路径？ | ch04 | 待读 | `filemap_read`, `filemap_fault` | |
| Q03 | 内存紧张时文件页如何回收？脏页与干净页差异？ | ch04 | 待读 | `shrink_folio_list`, `kswapd` | |
| Q04 | bio 与 struct page 是什么关系？数据如何进入块层？ | ch04/ch05 | 待读 | `bio`, `submit_bio` | |

状态：待读 / 阅读中 / 已理解 / 已实验验证
