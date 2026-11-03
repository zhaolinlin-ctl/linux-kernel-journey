# experiments

每个实验一个子目录，命名：`YYYY-MM-DD-<topic>`。

## 索引

| 日期 | 主题 | 状态 | 报告链接 |
|------|------|------|----------|
| 2026-11-03 | pagecache-hit | 进行中 | reports/2026-11-10-pagecache-read-path.md |

## 实验目录约定

- `README.md`：问题、环境、复现步骤、预期结果、结论
- `run.sh`：一键复现脚本
- `trace.bt` / `*.ftrace`：追踪脚本
- `data/`：原始数据（csv/log），不放大文件，只放可复现的小样本
