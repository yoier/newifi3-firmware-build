## 下载
软件包均相同；LEDE版系统当主路由接旁路由网关，旁路由防火墙LAN区域需要开启IP动态伪装，否则国内网站不通；而openwrt官方版本不需要，原因暂时未知。当前已安装包(sqm,ttyd,mtwifi；闭源无线驱动)。

为什么选择21.02.7？该版本21.02.x作为最后使用iptable的版本，同时内核支持闭源驱动mt7602e,mt7603e。

### OPENWRT官方源(接旁路网关推荐)
(2025.04.21-0337)[https://github.com/yoier/newifi3-firmware-build/releases/tag/2025.04.21-0337]
### LEDE源(不接旁路网关推荐)
(2025.04.19-2018)[https://github.com/yoier/newifi3-firmware-build/releases/tag/2025.04.19-2018]

## 配置
OPENWRT官方源需要自己改时区，ntp服务器。推荐开启sqm后不启用数据包引导和路由/NAT 分载。首次启动需要手动开启wifi，建议2.4G和5G wifi同时开启并且名称不同。

重要: 接口>设备>br-lan需要自己添加无线适配器ra0，rai0到网桥(默认只桥接了4个lan口)。否则连接WiFi设备无法访问lan口(没有跟lan在一个网桥上)。

## newifi3-d2固件编译
- 2025.04.21经过测试LEDE版系统当主路由接旁路由网关，旁路由防火墙LAN区域需要开启IP动态伪装，否则国内网站不通；而openwrt官方版本不需要，原因暂时未知。当前版本openwrt 21.02.7(sqm,ttyd,mtwifi闭源驱动)
- 2025.04.20更改使用openwrt官方源码21.02.7，无线mt闭源驱动
- 2025.04.19更改qos为sqm
- 2025.04.19上传配置，仅包含ttyd qos包

## Credits

- [Microsoft Azure](https://azure.microsoft.com)
- [GitHub Actions](https://github.com/features/actions)
- [OpenWrt](https://github.com/openwrt/openwrt)
- [coolsnowwolf/lede](https://github.com/coolsnowwolf/lede)
- [Mikubill/transfer](https://github.com/Mikubill/transfer)
- [softprops/action-gh-release](https://github.com/softprops/action-gh-release)
- [Mattraks/delete-workflow-runs](https://github.com/Mattraks/delete-workflow-runs)
- [dev-drprasad/delete-older-releases](https://github.com/dev-drprasad/delete-older-releases)
- [peter-evans/repository-dispatch](https://github.com/peter-evans/repository-dispatch)
- [P3TERX/Actions-OpenWrt](https://github.com/P3TERX/Actions-OpenWrt)

## License

[MIT](https://github.com/P3TERX/Actions-OpenWrt/blob/main/LICENSE) © [**P3TERX**](https://p3terx.com)