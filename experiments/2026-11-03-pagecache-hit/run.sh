```bash
#!/usr/bin/env bash
set -euo pipefail

KERNEL_VER="$(uname -r)"
TEST_FILE="${TEST_FILE:-/tmp/test.bin}"
SIZE_MB="${SIZE_MB:-100}"

echo "[*] kernel: ${KERNEL_VER}"

if [[ ! -f "${TEST_FILE}" ]]; then
    echo "[*] create test file: ${TEST_FILE} (${SIZE_MB}MB)"
    dd if=/dev/zero of="${TEST_FILE}" bs=1M count="${SIZE_MB}" status=none
fi

echo "[*] drop caches"
sync
echo 3 > /proc/sys/vm/drop_caches

echo "[*] first read (cold)"
cat "${TEST_FILE}" > /dev/null

echo "[*] second read (warm)"
cat "${TEST_FILE}" > /dev/null

echo "[*] done"
