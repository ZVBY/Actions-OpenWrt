#!/bin/bash
#====================================================================
# Copyright (c) 2019-2020 iplcdn <https://iplcdn.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/iplcdn/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#====================================================================

# fw876/helloworld (Uncomment a feed source)
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

sed -i "s/https:/R20.12.12 iplcdn/g"  package/lean/default-settings/files/zzz-default-settings

sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
sed -i '$a src-git jerrykuku https://github.com/jerrykuku/openwrt-package' feeds.conf.default
sed -i '$a src-git OpenClash https://github.com/vernesong/OpenClash' feeds.conf.default
#====================================================================
sed -i '$a src-git OpenAppFilter https://github.com/destan19/OpenAppFilter' feeds.conf.default

