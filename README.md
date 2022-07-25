# emfbadge
Playing around with the EMF 2022 conference badge.

## Setup
```
git submodule update --init

brew install micropython
/usr/local/opt/python@3.10/bin/python3 -m venv env
source env/bin/activate
```
## Useful commands
```
python micropython/tools/pyboard.py --no-soft-reset -d /dev/tty.usbmodem1234561 -f ls /

python micropython/tools/pyboard.py --no-soft-reset -d /dev/tty.usbmodem1234561 -f cp sandbox/hello.py :/apps/test/hello.py

emfbadge % screen /dev/tty.usbmodem1234561 115200
(Ctrl+A k to exit)
```