#!/bin/bash

sed -i 's/ +luci-theme-bootstrap//g' openwrt/feeds/luci/collections/luci/Makefile
sed -i 's/or "1"%>/or "1"%> ( <%=luci.sys.exec("expr `cat \/sys\/class\/thermal\/thermal_zone0\/temp` \/ 1000") or "?"%> \&#8451; ) /g' openwrt/feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_status/index.htm
