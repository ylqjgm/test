#!/bin/bash

sed -i 's|pcdata(boardinfo.system or "?")|luci.sys.exec("uname -m") or "?"|g' openwrt/feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_status/index.htm
sed -i 's/or "1"%>/or "1"%> ( <%=luci.sys.exec("expr `cat \/sys\/class\/thermal\/thermal_zone0\/temp` \/ 1000") or "?"%> \&#8451; ) /g' openwrt/feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_status/index.htm
sed -i 's/192.168.1.1/192.168.1.2/g' openwrt/package/base-files/files/bin/config_generate
sed -i "s/'UTC'/'CST-8'\n        set system.@system[-1].zonename='Asia\/Shanghai'/g" openwrt/package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/K2P/g' openwrt/package/base-files/files/bin/config_generate