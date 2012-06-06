#!/usr/bin/python
# -*- coding: iso-8859-15 -*-

#adding path of audio player to the lib
import sys
from configUi import *

if config.root + 'ui/' not in sys.path:
    sys.path.append(config.root + 'ui/')

#ui is calling the database
if config.root + 'db-tools/' not in sys.path:
    sys.path.append(config.root + 'db-tools/')

#running server
import run
