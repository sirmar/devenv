#!/bin/sh -e

which git && echo "ok: git client installed" || (echo "fail: git client not installed"; exit 1)
which ssh && echo "ok: ssh client installed" || (echo "fail: ssh client not installed"; exit 1)
which docker && echo "ok: docker installed" || (echo "fail: docker not installed"; exit 1)

which meta && echo "ok: meta installed" || (echo "fail: meta not installed"; exit 1)
[ -d ~/.meta ] && echo "ok: meta configuration directory found" || (echo "fail: meta configuration directory not gound"; exit 1)
