# emfbadge
Playing around with the EMF 2022 conference badge.

## Setup
```
git submodule update --init

brew install micropython
brew install fswatch
/usr/local/opt/python@3.10/bin/python3 -m venv env
source env/bin/activate
```
## Useful commands
```bash
python micropython/tools/pyboard.py --no-soft-reset -d /dev/tty.usbmodem1234561 -f ls /

python micropython/tools/pyboard.py --no-soft-reset -d /dev/tty.usbmodem1234561 -f cp sandbox/hello.py :/apps/test/hello.py

# Upload aioble
python micropython/tools/pyboard.py --no-soft-reset -d /dev/tty.usbmodem1234561 -f cp micropython-lib/micropython/bluetooth/aioble/aioble/* :/lib/aioble/

# Watch and upload files on change
fswatch -o sandbox/ | xargs -n1 -I{} python micropython/tools/pyboard.py --no-soft-reset -d /dev/tty.usbmodem1234561 -f cp sandbox/* :/apps/test/

screen /dev/tty.usbmodem1234561 115200
(Ctrl+A k to exit)

Run test script with `exec(open("/apps/test/hello.py").read())`

from upysh import ls; ls('/')

# Upload and run script
python micropython/tools/pyboard.py --no-soft-reset -d /dev/tty.usbmodem1234561 -f cp sandbox/* :/apps/test/ --command 'exec(open("/apps/test/hello.py").read())'
```