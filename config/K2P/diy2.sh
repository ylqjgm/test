#!/bin/bash

# 替换默认IP
sed -i 's#192.168.1.1#192.168.1.2#g' package/base-files/files/bin/config_generate
# 替换默认主题
sed -i 's#luci-theme-bootstrap#luci-theme-rosy#g' feeds/luci/collections/luci/Makefile