#!/bin/bash
pip3 install virtualenv

mkdir /data/tf_env
cat>/data/tf_env/test.py<<EOF
#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import tensorflow as tf
a = tf.add(3,5)
sess = tf.Session()
print(sess.run(a))
sess.close()
EOF
cd /data/tf_env
python3 test.py
cd