# 面试故事库

## 故事 1：第一次发上游补丁

- 背景：想验证自己能否走完内核提交流程。
- 任务：在 kselftest 中找一个真实警告并修复。
- 行动：checkpatch → 修改 → git send-email → 回应 review。
- 结果：v1 被指出 X 问题，v2 修正后接收。
- 追问预案：
  - 为什么选 kselftest 而不是 fs/？
  - review 意见具体是什么？你怎么改的？

## 故事 2：Page Cache 冷热读对比

- 背景：
- 任务：
- 行动：
- 结果：
- 追问预案：
  - 为什么 `filemap_fault` 在热读时为 0？
  - 预读窗口怎么观察？
