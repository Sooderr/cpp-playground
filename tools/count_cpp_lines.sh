#!/usr/bin/env bash
# Скрипт для подсчёта строк во всех .cpp файлах

set -euo pipefail
total=0

for f in $(find . -type f -name "*.cpp"); do
  lines=$(wc -l < "$f")
  echo "$lines $f"
  total=$(( total + lines ))
done

echo "Total lines: $total"
