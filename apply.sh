#!/bin/bash
# encoding:utf-8
#
# Copyright 2023 Yoshihiro Tanaka
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#
# Author: Yoshihiro Tanaka <contact@cordea.jp>
# date  : 2023-04-29

path=$(find ~/Library/Application\ Support/Google -type d -name "AndroidStudio*" | sort | tail -n 1)
if [ ! -d "$path" ]
then
    exit 1
fi
echo "$path was found."

cp keymaps/*.xml "$path/keymaps/"
cp -r options/* "$path/options/"
