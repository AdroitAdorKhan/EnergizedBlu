#!/usr/bin/python3
# -*- coding: utf-8 -*-

# Energized Blu - Magisk Prop Creator

import urllib.request
import datetime
import os
import time

File = 'zip/Magisk/module.prop'

if not os.path.exists(os.path.dirname(File)):
	os.makedirs(os.path.dirname(File))

with open(File, 'w') as f:
	print('[+ Magisk Module.Prop Updater +]')
	print('[+] Writing to file...')
	f.write('''id=energizedblu''')
	f.write('''\nname=Energized Blu''')
	f.write('''\nversion=1.0.''' + time.strftime("%m.%j", time.gmtime()) + '''''')
	f.write('''\nversionCode=''' + time.strftime("%j", time.gmtime()) + '''''')
	f.write('''\nauthor=AdroitAdorKhan''')
	f.write('''\ndescription=Lightweight Energized Protection.''')
	f.write('''\nminMagisk=1500''')
	print('[+] Done!')
