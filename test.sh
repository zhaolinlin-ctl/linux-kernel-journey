#!/usr/bin/env bash
set -euo pipefail

# notes
mkdir -p notes/ch04-memory
touch notes/README.md notes/questions.md notes/reading-log.md \
      notes/callchain-template.md notes/ch04-memory/README.md \
      notes/ch04-memory/page-cache.md

# experiments
mkdir -p experiments/2026-11-03-pagecache-hit/data
touch experiments/README.md \
      experiments/2026-11-03-pagecache-hit/README.md \
      experiments/2026-11-03-pagecache-hit/run.sh \
      experiments/2026-11-03-pagecache-hit/trace.bt \
      experiments/2026-11-03-pagecache-hit/data/.gitkeep
chmod +x experiments/2026-11-03-pagecache-hit/run.sh

# patches
mkdir -p patches/0001-kselftest-mm-fix-warning
touch patches/README.md \
      patches/0001-kselftest-mm-fix-warning/README.md \
      patches/0001-kselftest-mm-fix-warning/v1.patch \
      patches/0001-kselftest-mm-fix-warning/checkpatch.log \
      patches/0001-kselftest-mm-fix-warning/thread.md

# reports
mkdir -p reports
touch reports/README.md reports/template.md \
      reports/2026-11-10-pagecache-read-path.md

# resume
mkdir -p resume
touch resume/README.md resume/entries.md resume/stories.md resume/jd-tracking.md

echo "[*] templates created"
tree -a
