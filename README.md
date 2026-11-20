# dotconfig

我的 Arch Linux 桌面配置，主要用于 Niri / Wayland 环境。

## 配置一览

| 部分 | 路径 | 用途 |
| --- | --- | --- |
| Niri 桌面 | [`niri/`](niri/) | 管理显示器、输入设备、快捷键、窗口布局和桌面会话。 |
| 字体配置 | [`fontconfig/fonts.conf`](fontconfig/fonts.conf) | 设置字体渲染、网页字体映射和多语言字体回退，使用 Noto CJK、Iosevka Term 与 Symbols Nerd Font。 |
| GTK 输入法 | [`gtk-3.0/settings.ini`](gtk-3.0/settings.ini)、[`gtk-4.0/settings.ini`](gtk-4.0/settings.ini) | 为 GTK 3 和 GTK 4 设置 Fcitx 输入法模块。 |
| Microsoft Edge | [`microsoft-edge-stable-flags.conf`](microsoft-edge-stable-flags.conf) | 配置 Linux 硬件视频解码（NVIDIA）相关参数。 |
| QQ | [`qq-flags.conf`](qq-flags.conf) | 指定 QQ 使用 Wayland。 |
| uv | [`uv/uv.toml`](uv/uv.toml) | 修改PyPI 镜像。 |

## Niri 配置结构

[`niri/config.kdl`](niri/config.kdl) 是入口，通过 `include` 加载 [`niri/cfg/`](niri/cfg/) 下的各个模块：

| 模块 | 用途 |
| --- | --- |
| [`animation.kdl`](niri/cfg/animation.kdl) | 桌面和窗口动画。 |
| [`autostart.kdl`](niri/cfg/autostart.kdl) | 启动 Noctalia、Fcitx 5 和 v2rayN。 |
| [`display.kdl`](niri/cfg/display.kdl) | 显示器位置、分辨率、刷新率和旋转方向。 |
| [`input.kdl`](niri/cfg/input.kdl) | 键盘和指针设备设置。 |
| [`keybinds.kdl`](niri/cfg/keybinds.kdl) | 应用启动、窗口操作和工作区切换等快捷键。 |
| [`layout.kdl`](niri/cfg/layout.kdl) | 窗口间距、列宽等布局设置。 |
| [`rules.kdl`](niri/cfg/rules.kdl) | 按应用匹配的窗口规则。 |
| [`misc.kdl`](niri/cfg/misc.kdl) | 环境变量、光标、模糊效果和其他会话设置。 |

## 使用说明

备份现有文件后，按需将配置复制到 `~/.config/` 下的对应位置。使用 Niri 时，请一起复制 `config.kdl` 和 `cfg/`，并用 `niri msg outputs` 查看自己的显示器名称，再调整 `display.kdl`。也请确认自启动程序和所需字体已安装。

