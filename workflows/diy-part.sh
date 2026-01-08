#!/bin/bash

git clone https://github.com/YL2209/openwrt_app_luic.git package/openwrt_app_luic
./scripts/feeds install luci-app-strongswan-swanctl
echo "CONFIG_ALL_NONSHARED=n" > .config
echo "CONFIG_ALL_KMODS=n" >> .config
echo "CONFIG_ALL=n" >> .config
echo "CONFIG_AUTOREMOVE=n" >> .config
echo "CONFIG_LUCI_LANG_zh_Hans=y" >> .config
echo "CONFIG_PACKAGE_luci-app-strongswan-swanctl=m" >> .config
echo "CONFIG_PACKAGE_strongswan=m" >> .config
echo "CONFIG_STRONGSWAN_ROUTING_TABLE=\"220\"" >> .config
echo "CONFIG_STRONGSWAN_ROUTING_TABLE_PRIO=\"220\"" >> .config
echo "CONFIG_PACKAGE_luci-app-strongswan-swanctl=m" >> .config
echo "CONFIG_PACKAGE_strongswan-mod-vici=m" >> .config
echo "CONFIG_PACKAGE_strongswan-swanctl=m" >> .config