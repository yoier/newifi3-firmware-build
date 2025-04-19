#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
# This script was created by yoier <https://github.com/yoier/r3s-firmware-build/blob/main/diy-part1.sh>
mkdir pkgLean && cd pkgLean
git init
git remote add origin https://github.com/coolsnowwolf/lede.git
git sparse-checkout init --cone
git sparse-checkout set package/lean
git pull origin master
cd ../
cp -ar pkgLean/package/lean package
rm -rf pkgLean