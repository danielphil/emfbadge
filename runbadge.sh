#!/bin/bash
python micropython/tools/pyboard.py --no-soft-reset -d /dev/tty.usbmodem1234561 -f cp sandbox/* :/apps/test/ --command 'exec(open("/apps/test/hello.py").read())'