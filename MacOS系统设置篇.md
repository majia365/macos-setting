
MacOSX装机：0x0系统设置篇
========================


[toc]


## 系统偏好设置 ##


**注意，先设置机器名称，再登录Apple ID。**

**查看并修改机器名**

```
[共享]
电脑名称 = ZhongMBA
```

or 

``` 
% scutil --get HostName
% scutil --get ComputerName
or:
% hostname
then:
% sudo scutil —-set HostName zhongmba
% sudo scutil --set ComputerName ZhongMBA
```

### Apple ID ###

``` 
[Apple ID]
; 登录
; iCloud
优化Mac存储空间 = ON
使用iCloud的App = ALL
; iCloud - iCloud云盘
存储App = 图书/邮件/地图/系统偏好设置
```

### 通用 ### 

```
[通用]
# 外观 = 深色
% defaults write NSGlobalDomain AppleInterfaceStyle -string Dark;
# 强调色 = 蓝色
% defaults write NSGlobalDomain AppleAccentColor -int 4;
# 高亮显示颜色 = 蓝色
% defaults write NSGlobalDomain AppleHighlightColor -string "0.698039 0.843137 1.000000 Blue";
边栏图标大小 = 小
允许基于墙纸调整窗口色调 = ON
# 显示滚动条 = 始终
% defaults write NSGlobalDomain AppleShowScrollBars -string Always;
在滚动条中点按 = 跳至下一页
默认网页浏览器 = Safari
首选以标签页方式打开文稿 = 永不
关闭文稿时要求保存更改 = OFF
退出App时关闭窗口 = ON
最近使用的项目 = 5
允许使用接力 = OFF
```

~~使用平滑字体 = ON~~
~~自动隐藏和显示菜单栏 = OFF~~

### 桌面与屏幕保护程序 ###

```
[桌面与屏幕保护程序]
; 桌面
; 屏幕保护程序
开始前闲置 = 1分钟
屏幕保护程序 = 信息
使用随机屏幕保护程序 = OFF
与时钟一起显示 = OFF
; 屏幕保护程序 - 屏幕保护程序选项
信息 = Windows XP
; 屏幕保护程序 - 触发角
# 右下 = 锁定屏幕
% defaults write com.apple.dock wvous-br-corner -int 13;
% defaults write com.apple.dock wvous-br-modifier -int 0;
% killall Dock;
```

```
# 触发角相关
Hot corners Possible values:
  0: no-op
  2: Mission Control
  3: Show application windows
  4: Desktop
  5: Start screen saver
  6: Disable screen saver
  7: Dashboard
 10: Put display to sleep
 11: Launchpad
 12: Notification Center
 13: Lock

% defaults write com.apple.dock wvous-tl-corner -int 0;
% defaults write com.apple.dock wvous-tl-modifier -int 0;
% defaults write com.apple.dock wvous-tr-corner -int 0;
% defaults write com.apple.dock wvous-tr-modifier -int 0;
% defaults write com.apple.dock wvous-bl-corner -int 0;
% defaults write com.apple.dock wvous-bl-modifier -int 0;
% defaults write com.apple.dock wvous-br-corner -int 13;
% defaults write com.apple.dock wvous-br-modifier -int 0;
% killall Dock;
```

### 程序坞与菜单栏 ### 

```
[程序坞与菜单栏]
# 大小（default value 48）
% defaults write com.apple.dock tilesize -int 48;
放大 = OFF
% defaults write com.apple.dock largesize -int 64;
# 置于屏幕上的位置 = 右边（取值：left/bottom/right）
% defaults write com.apple.dock orientation -string right;
# 最小化窗口时使用 = 缩放效果（取值：genie/scale/suck）
% defaults write com.apple.dock mineffect -string scale;
# 连按窗口标题栏以 = 缩放（Minimize:最小化/Maximize:缩放）
% defaults write NSGlobalDomain AppleActionOnDoubleClick -string Maximize;
将窗口最小化为应用程序图标 = OFF
弹跳打开应用程序 = ON
# 自动显示和隐藏程序坞 = OFF
% defaults write com.apple.dock autohide -bool false;
% defaults write com.apple.dock autohide-time-modifier -float 0;
% defaults write com.apple.Dock autohide-delay -float 0;
为打开的应用程序显示指示灯 = ON
# 在程序坞中显示最近使用的应用程序 = OFF
% defaults write com.apple.dock show-recents -bool false;
自动隐藏和显示菜单栏 = OFF
# 控制中心 - Wi-Fi
在菜单栏中显示 = ON
# 控制中心 - 蓝牙
在菜单栏中显示 = OFF
# 控制中心 - 隔空投送
在菜单栏中显示 = OFF
# 控制中心 - 勿扰模式
在菜单栏中显示 = ON
在菜单栏中显示 = 始终
# 控制中心 - 键盘亮度
在菜单栏中显示 = OFF
# 控制中心 - 屏幕镜像
在菜单栏中显示 = ON
在菜单栏中显示 = 活跃时
# 控制中心 - 显示器
在菜单栏中显示 = OFF
# 控制中心 - 声音
在菜单栏中显示 = ON
在菜单栏中显示 = 始终
# 控制中心 - 播放中
在菜单栏中显示 = OFF
# 其他模块 - 辅助功能快捷键
在菜单栏中显示 = OFF
在控制中心中显示 = OFF
# 其他模块 - 电池
在菜单栏中显示 = ON
在控制中心中显示 = OFF
# 显示百分比 = OFF
% defaults write com.apple.menuextra.battery ShowPercent -string "NO";
# 其他模块 - 快速用户切换
在菜单栏中显示 = OFF
在控制中心中显示 = OFF
# 仅菜单栏 - 时钟
# 显示星期 = ON
% defaults write com.apple.menuextra.clock ShowDayOfWeek -bool true;
# 显示日期 = ON
% defaults write com.apple.menuextra.clock ShowDayOfMonth -bool true;
% defaults write com.apple.menuextra.clock DateFormat -string "EEE d MMM HH:mm";
# 时间选项 = 数码
% defaults write com.apple.menuextra.clock IsAnalog -bool false;
# 使用24小时格式时钟
% defaults write com.apple.menuextra.clock Show24Hour -bool true;
显示上午/下午 = OFF
# 闪动时间分隔符 = OFF
% defaults write com.apple.menuextra.clock FlashDateSeparators -bool false;
# 在时间中显示秒钟 = OFF
% defaults write com.apple.menuextra.clock ShowSeconds -bool false;
语音报时 = OFF
# 仅菜单栏 - 聚焦
在菜单栏中显示 = OFF
# 仅菜单栏 - Siri
在菜单栏中显示 = OFF
# 仅菜单栏 - 时间机器
在菜单栏中显示 = OFF
% killall SystemUIServer;
% killall Dock;
```

### 调度中心 ### 

```
[调度中心]
#根据最近的使用情况自动重新排列空间 = OFF
% defaults write com.apple.dock mru-spaces -bool false;
# 切换到某个应用程序时，会切换到包含该应用程序的打开窗口的空间 = ON
% defaults write NSGlobalDomain AppleSpacesSwitchOnActivate -bool true;
使窗口按应用程序成组 = OFF
显示器具有单独的空间 = ON
---
调度中心 = Ctl+上
应用程序窗口 = Ctl+下
显示桌面 = F11
killall Dock;
```

### Siri ### 

```
[Siri]
启用询问Siri = OFF
在菜单栏中显示Siri = OFF
; Siri建议与隐私
在App中显示Siri建议 = OFF
基于此App进行学习 = OFF
```

### 聚焦 ### 

```
[聚焦]
; 搜索结果
Siri建议 = OFF
日程与提醒事项 = OFF
; 隐私
防止聚焦搜索这些位置 = bt/xfile
```

~~允许在查询结果中包含聚焦建议 = OFF~~

### 语言与地区 ### 

```
[语言与地区]
; 通用
首选语言 = 简体中文/English
地区 = 中国大陆
每周的第一天 = 星期一
日历 = 公历
时间格式 = 24小时制
温度 = 摄氏度
列表排列顺序 = 中文拼音排序
; 通用 - 高级 - 时间
正午前 = AM
正午后 = PM
```

### 通知 ### 

```
[通知]
显示预览 = 解锁时
_通知中心排列顺序_ = 最近使用
; 勿扰模式
当显示器进入睡眠状态时 = OFF
当屏幕锁定时 = ON
当镜像到电视机和投影仪时 = ON
允许任何人呼叫 = OFF
允许重复来电 = OFF
; FaceTime通话/信息/屏幕使用时间/提醒事项/日历/智能卡配对
允许通知 = ON
提示样式 = 横幅
在锁定屏幕上显示通知 = OFF
在通知中心中显示 = OFF
标记App图标 = ON
播放通知的声音 = ON
显示预览 = 解锁时
通知分组 = 自动
; Wallet/图书/备忘录/家庭/游戏/照片/邮件
允许通知 = ON
提示样式 = 无
在锁定屏幕上显示通知 = OFF
在通知中心中显示 = OFF
标记App图标 = ON
播放通知的声音 = OFF
显示预览 = 解锁时
通知分组 = 自动
;第三方应用
允许通知 = OFF
```

### 互联网帐户 ### 

```
[互联网帐户]
; iCloud
全选
; iCloud云盘 - 选项
图书.app = ON
邮件.app = ON
地图.app = ON
系统偏好设置.app = ON
```

### 触控ID ### 

```
[触控ID]
录入 = 右手中指/右手拇指/左手中指
解锁Mac = ON
Apple Pay = ON
iTunes Store = ON
自动填充密码 = ON
使用触控ID传感器进行快速用户切换 = OFF
```

### 用户与群组 ### 

```
[用户与群组]
; 登录选项
自动登录 = 关闭
将登陆窗口显示为 = 名称和密码
显示睡眠重新启动和关机按钮 = ON
在登录窗口中显示输入法菜单 = OFF
显示密码提示 = ON
将快速用户切换菜单显示 = OFF
; 登录选项 - 辅助功能选项
所有选项 = OFF
; 当前用户
允许用户使用Apple ID重设密码 = ON
允许用户管理这台电脑 = ON
; 当前用户 - 登录项
登录项 = Caffeine/Alfred
; 客人用户 - 关闭
```

### 辅助功能 ### 

```
[辅助功能]
所有选项 = OFF
```

### 屏幕使用时间 ### 

```
[屏幕使用时间]
选项 = 关闭
```

### 扩展 ### 

```
[扩展]
所有选项 = OFF
```

### 安全性与隐私 ### 

```
[安全性与隐私]
; 通用
# 要求输入密码 = 立即
% defaults write com.apple.screensaver askForPassword -bool true;
% defaults write com.apple.screensaver askForPasswordDelay -int 0;
在屏幕锁定时显示信息 = OFF
停用自动登录 = ON
# 允许从以下位置下载的App = 任何来源
% sudo spctl --master-disable
; 通用 - 高级
不活跃后退出登录 = OFF
访问系统范围的偏好设置需要输入管理员密码 = OFF
; 文件保险箱 = 停用
; 防火墙
防火墙 = 打开
; 防火墙 - 防火墙选项
阻止所有传入连接 = OFF
自动允许内建软件接收传入连接 = ON
自动允许已下载的签名软件接收传入连接 = ON
启用隐身模式 = OFF
; 隐私
; 隐私 - 定位服务
# 启用定位服务 = ON
% sudo nvram LocationServicesEnabled=%01;
允许确定您的位置 = 地图/查找
; 隐私 - 定位服务 - 系统服务详细信息
基于位置的建议 = OFF
时区与系统自定义 = ON
重要地点 = OFF
查找我的Mac = ON
HomeKit = OFF
Wi-Fi网络 = ON
当系统服务请求您的位置时，在菜单栏中显示位置图标 = ON
; Apple广告
个性化广告 = OFF
; 分析与改进 
所有选项 = OFF
```

### 软件更新 ### 

```
[软件更新]
自动保持我的Mac最新 = OFF
; 高级
# 检查更新 = ON
% softwareupdate --schedule on
下载可用的更新 = OFF
安装系统数据文件和安全性更新 = ON
```

```
# softwareupdate 相关
# 列出可用的软件更新
softwareupdate --list
# 安装指定的软件更新
sudo softwareupdate --install Apple-1.5.2;
# 安装所有可用的软件更新
sudo softwareupdate -ia
# 安装所有推荐的软件更新
sudo softwareupdate -ir
# 如果安装后要求重启
sudo shutdown -r now

# 检查可用的macOS安装包
softwareupdate --list-full-installers
Title: macOS Ventura, Version: 13.5, Size: 11934300398K
Title: macOS Monterey, Version: 12.6.8, Size: 12409936411K
Title: macOS Big Sur, Version: 11.7.9, Size: 12416731958K
# 下载最新推荐的macOS安装包
softwareupdate --fetch-full-installer
# 下载指定版本的macOS安装包
softwareupdate --fetch-full-installer --full-installer-version 10.15;

# 检查更新开关状态
softwareupdate --schedule
# 设置更新开关状态
softwareupdate --schedule on/off
```

### 网络 ### 

```
[网络]
; Wi-Fi
在菜单栏中显示Wi-Fi状态 = ON
; Wi-Fi - 高级 - Wi-Fi
记住这台电脑所加入的网络 = ON
; Wi-Fi - 高级 - DNS
DNS服务器 = 208.67.220.220/208.67.222.222
; 蓝牙PAN = 不活跃
; 雷雳网桥 = 不活跃
```

### 蓝牙 ### 

```
[蓝牙]
蓝牙 = 关闭
在菜单栏中显示蓝牙 = OFF
; 高级
允许蓝牙设备唤醒这台电脑 = OFF
```

### 声音 ### 

```
[声音]
; 声音效果
# 启动时播放声音 = ON
% sudo nvram StartupMute=％00
or off
% sudo nvram StartupMute=％01
# 播放用户界面声音效果 = OFF
% defaults write com.apple.systemsound com.apple.sound.uiaudio.enabled -int 0;
当更改音量时播放反馈 = OFF
在菜单栏中显示音量 = ON
; 输出
; 输入
```

### 打印机与扫描仪 ### 

```
[打印机与扫描仪]
无
```

### 键盘 ### 

```
[键盘]
; 键盘
按键重复 = 快-2
重复前延迟 = 短-1
在光线较弱时调整键盘亮度 = ON
闲置关闭键盘背景灯 = OFF
按下fn键时 = 更改输入法
# 将F1F2等键用作标准功能键 = ON
% defaults write NSGlobalDomain com.apple.keyboard.fnState -bool true;
; 键盘 - 修饰键
中英键 = 中英
Control键 = Ctl
Option键 = Opt
Command键 = Cmd
地球仪键 = 地球仪键
; 文本
# 自动纠正拼写 = OFF
% defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false;
% defaults write NSGlobalDomain WebAutomaticSpellingCorrectionEnabled -bool false;
# 自动大写字词的首字母 = OFF
% defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false;
# 连按两下空格键插入句号 = OFF
% defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false;
# 拼写 - 按照语言自动拼写 = OFF
% defaults write NSGlobalDomain NSSpellCheckerAutomaticallyIdentifiesLanguages -bool false;
# 拼写 = U.S.English
% defaults write NSGlobalDomain NSPreferredSpellServerLanguage -string en;
# 使用智能引号和破折号 = OFF
% defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false;
% defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false;
双引号样式 = "abc"
单引号样式 = 'abc'
defaults read NSGlobalDomain NSUserQuotesArray 
(
    "\\"",
    "\\"",
    "'",
    "'"
)
; 快捷键
使用键盘导航在控制间移动焦点 = ON
; 快捷键 - 启动台与程序坞
全部选项 = OFF
; 快捷键 - 调度中心
调度中心 = Ctl+上
应用程序窗口 = Ctl+下
显示桌面 = F11
向左移动一个空间 = Ctl+左
向右移动一个空间 = Ctl+右
; 快捷键 - 键盘
将焦点移到菜单栏 = Ctl+F2
; 快捷键 - 输入法
选择上一个输入法 = Ctl+空格键
; 快捷键 - 截屏
将屏幕图片存储为文件 = Cmd+F3
将所选区域的图片存储为文件 = Ctl+F3
; 快捷键 - 服务
全部选项 = OFF
; 快捷键 - 聚焦
显示聚焦搜索 = Cmd+空格键
; 快捷键 - 辅助功能
全部选项 = OFF
; 快捷键 - App快捷键
全部选项 = OFF
; 输入法
在菜单栏中显示输入法菜单 = ON
使用中英键切换ABC输入法 = ON
自动切换到文稿的输入法 = OFF
; 输入法 - 简体拼音
候选字窗口方向 = 水平
候选字窗口字体大小 = 16
显示联想词语 = ON
纠正拼写 = OFF
纠正模糊拼音 = ON
调整词频 = ON
使用半角标点符号 = OFF
显示繁体字符及生僻字符 = OFF
; 听写
听写 = 关闭
```

### 触控板 ### 

```
[触控板]
; 光标与点按
查询与数据检测器 = OFF
辅助点按:双指点按或轻点 = ON
轻按来点按:单指轻点 = ON
点按 = 中
跟踪速度 = 中
静默点按 = ON
用力点按和触感反馈 = OFF
; 滚动缩放
滚动方向:自然 = ON
放大或缩小 = ON
智能缩放 = ON
旋转 = ON
; 更多手势
在页面之间轻扫 = OFF
在全屏幕显示的App之间轻扫 = ON
通知中心 = OFF
调度中心 = ON
# AppExpose = OFF
% defaults write com.apple.dock showAppExposeGestureEnabled -bool false;
# 启动台 = OFF
% defaults write com.apple.dock showLaunchpadGestureEnabled -bool false;
# 显示桌面 = OFF
% defaults write com.apple.dock showDesktopGestureEnabled -bool false;
% killall Dock;
```

### 鼠标 ### 

```
[鼠标]
滚动方向自然 = ON
跟踪速度 = 5
滚动速度 = 4
连按速度 = 5
鼠标主按钮 = 左
```

### 显示器 ### 

```
[显示器]
隔空显示显示器 = 关闭
在菜单栏中显示镜像选项 = ON
; 显示器
分辨率 = 显示器默认
自动调节亮度 = OFF
原彩显示 = ON
; 颜色
显示描述文件 = DisplayP3
; 夜览
设定时间 = 22:00-06:00
手动:明天前保持打开 = OFF
色温 = 中间
```

### 随航 ### 

```
[随航]
显示边栏:在左侧 = ON
显示触控栏:在底部 = ON
再Apple Pencil上启用轻点两下 = OFF
```

### 电池 ### 

```
[电池]
; 用量历史
; 电池
在菜单栏中显示电池状态 = ON
此时间段后关闭显示器 = 5分钟
使用电池电源时使显示屏略暗一些 = ON
电池供电时优化视频流播放 = ON
优化电池充电 = ON
; 电源适配器
此时间段后关闭显示器 = 10分钟
防止电脑自动进入睡眠 = OFF
唤醒以供网络访问 = OFF
; 定时
启动或唤醒 = OFF
```

### 日期与时间 ### 

```
[日期与时间]
; 日期与时间
自动设置日期与时间 = ON
时间服务器 = time.apple.com
; 时区
使用当前位置自动设定时区 = OFF
时区 = 中国标准时间
```

### 共享 ### 

```
[共享]
# 电脑名称 = ZhongMBA
% sudo scutil —-set ComputerName ZhongMBA;
本地网络地址 = ZhongMBA.local
共享服务 = OFF
```

### 时间机器 ### 

```
[时间机器]
自动备份 = OFF
在菜单栏中显示时间机器 = OFF
; 选项
允许电池供电时进行备份 = OFF
```

```
# 时间机器其他
# 时间机器 - 连接新磁盘时不询问是否作为备份卷 = ON
% defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true;
```

### 启动磁盘 ### 

```
[启动磁盘]
无
```

### 描述文件 ### 

```
[描述文件]
无
```


## 系统应用偏好设置 ##


### 访达 ### 

```
[访达 - 偏好设置]
; 通用
# 在桌面上显示这些项目 = 硬盘/外置磁盘/CDDVD和iPod/已连接的服务器
% defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true;
% defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true;
% defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true;
% defaults write com.apple.finder ShowMountedServersOnDesktop -bool true;
# 开启新访达窗口时打开 = $用户根目录
% defaults write com.apple.finder NewWindowTarget -string "PfHm"
% defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"
在标签页中打开文件夹 = ON
; 标签
; 边栏
# 最近项目 = OFF
% defaults write com.apple.finder ShowRecentTags -bool false;
隔空投送 = ON
应用程序 = ON
桌面 = OFF
文稿 = ON
下载 = ON
影片 = OFF
音乐 = OFF
图片 = OFF
用户根目录 = ON
iCloud云盘 = ON
用户主机 = OFF
# 硬盘 = ON
% defaults write com.apple.sidebarlists systemitems -dict-add ShowHardDisks -bool true;
# 外置磁盘 = ON
% defaults write com.apple.sidebarlists systemitems -dict-add ShowRemovable -bool true;
% defaults write com.apple.sidebarlists systemitems -dict-add ShowEjectables -bool true;
CDDVD和iOS设备 = ON
云端存储空间 = ON
Bonjour电脑 = ON
# 已连接的服务器 = ON
% defaults write com.apple.sidebarlists systemitems -dict-add ShowServers -bool true;
最近使用的标签 = OFF
; 高级
# 显示所有文件扩展名 = ON
% defaults write NSGlobalDomain AppleShowAllExtensions -bool true;
# 更改扩展名之前显示警告 = OFF
% defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false;
从iCloud云盘中移除前显示警告 = ON
# 清倒废纸篓之前显示警告 = OFF
% defaults write com.apple.finder WarnOnEmptyTrash -bool false;
# 30天后移除废纸篓中的项目 = ON
% defaults write com.apple.finder FXRemoveOldTrashItems -bool true;
# 文件夹保持在顶部 = ON
% defaults write com.apple.finder _FXSortFoldersFirst -bool true;
# 执行搜索时 = 搜索当前文件夹 {SCev:这台Mac; SCcf:当前文件夹; SCsp:上次的搜索范围}
% defaults write com.apple.finder FXDefaultSearchScope -string SCcf;
% killall Finder;
```

```
[访达 - 显示菜单]
# 显示为列表 {icnv:图标; Nlsv:列表; clmv:分栏; glyv:画廊}
% defaults write com.apple.finder FXPreferredViewStyle -string Nlsv;
使用群组 = OFF
排序方式 = 名称
# 显示边栏 = ON
% defaults write com.apple.finder ShowSidebar -bool true;
显示预览 = OFF
显示工具栏 = ON
显示所有标签页 = OFF
# 显示标签页栏 = OFF
% defaults write com.apple.finder ShowTabView -bool flase;
# 显示路径栏 = ON
% defaults write com.apple.finder ShowPathbar -bool true;
# 显示状态栏 = OFF
% defaults write com.apple.finder ShowStatusBar -bool false;
; 显示选项
始终以列表视图打开 = ON
以列表视图浏览 = ON
分组方式 = 无
排序方式 = 名称
图标大小 = 小
文字大小 = 13
显示分栏 = 大小/种类
使用相对日期 = ON
计算所有大小 = OFF
显示图标预览 = OFF
显示资源库文件夹 = OFF
% killall Finder;
```

```
# 访达相关
# 显示退出菜单项
% defaults write com.apple.finder QuitMenuItem -bool true;
# 显示隐藏文件 = OFF
% defaults write com.apple.finder AppleShowAllFiles -bool flase;
% killall Finder;
```

### AppStore ###

```
[AppStore - 偏好设置]
自动更新 = OFF
自动下载 = OFF
视频自动播放 = OFF
App内评分及评论 = OFF
```

### Safari浏览器 ###

```
[Safari浏览器 - 偏好设置]
; 通用
浏览器打开方式 = 新建窗口
新窗口打开方式 = 个人收藏
新标签页打开方式 = 空白页面
主页 = about:blank
移除历史记录项 = 一个月以后
个人收藏显示 = 个人收藏
常用站点显示 = 6个站点
文件下载位置 = $下载
移除下载列表项 = 一天以后
下载后打开安全的文件 = OFF
; 标签页
在标签页中打开页面 = 自动
按住Cmd键点按会在新标签页中打开链接 = ON
打开新标签页或者窗口后，使其成为活跃标签页或窗口 = OFF
使用Cmd-1至Cmd-9切换标签页 = ON
在标签页中显示网站图标 = OFF
; 自动填充
通讯录中的信息 = OFF
用户名和密码 = ON
信用卡 = OFF
其他表单 = OFF
; 搜索
搜索引擎 = bing
包括搜索引擎建议 = OFF
启用快速网站搜索 = ON
在后台载入最常点选 = ON
显示个人收藏 = ON
; 安全性
访问欺骗性网站时发出警告 = ON
启用JavaScript = ON
; 隐私
阻止跨站跟踪 = ON
阻止所有Cookie = OFF
允许网站检查Apple Pay = OFF
; 网站-阅读器
访问其他网站时 = 关闭
; 网站-内容拦截器
访问其他网站时 = 打开
; 网站-自动播放
访问其他网站时 = 永不自动播放
; 网站-页面缩放
访问其他网站时 = 115%
; 网站-摄像头
访问其他网站时 = 拒绝
; 网站-麦克风
访问其他网站时 = 拒绝
; 网站-屏幕共享
访问其他网站时 = 拒绝
; 网站-位置
访问其他网站时 = 拒绝
; 网站-下载项
访问其他网站时 = 请求
; 网站-通知
允许网站请求权限来发送通知 = OFF
; 网站-弹出式窗口
访问其他网站时 = 阻止
; 扩展
AdBlock for Safari
Ghostery Lite
; 高级
# 显示完整网站地址 = ON
% defaults write com.apple.safari ShowFullURLInSmartSearchField -bool true;
字体大小不得小于 = 11
按下Tab键以高亮显示网页上的每一项 = OFF
自动存储文章以便离线阅读 = OFF
停用插件以节能 = ON
默认编码 = Unicode(UTF-8)
在菜单栏中显示开发菜单 = ON
% killall Safari;
```

### 邮件 ###

```
[邮件 - 偏好设置]
; 通用
默认的电子邮件阅读程序 = 邮件.app
检查新邮件 = 每小时
新邮件声 = 新邮件声
为其他邮件动作播放声音 = OFF
程序坞未读邮件数量 = 仅收件箱
新邮件通知 = 仅收件箱
下载文件夹 = $下载
移除未编辑的下载 = 在邮件被删除后
归档或删除静音的邮件 = OFF
自动将邀请添加到日历 = OFF
自动尝试稍后发送 = OFF
以分屏浏览打开邮件 = OFF
; 通用-搜索所有邮箱
废纸篓 = OFF
垃圾邮件 = OFF
加密邮件 = OFF
; 帐户
; 垃圾邮件-垃圾邮件行为
启用垃圾邮件过滤 = ON
当垃圾邮件到达时 = 将它移到垃圾邮件邮箱
邮件发件人在我的通讯录中 = ON
邮件发件人在我以前的收件人当中 = ON
信任邮件中的垃圾邮件标头 = ON
在应用我的规则前过滤垃圾邮件 = OFF
; 垃圾邮件-黑名单
启用黑名单邮件过滤 = ON
当黑名单地址中的电子邮件到达时 = 移到废纸篓
; 字体与颜色
纯文本邮件使用固定等宽字体 = ON
给引用的文本着色 = OFF
; 查看
列表预览 = 2行
将丢弃的邮件移到 = 废纸篓
显示邮件标头 = 默认
使用粗体字体显示未读邮件 = ON
载入邮件中的远程内容 = OFF
使用智能地址 = OFF
; 查看-显示对话
邮件未成组时用颜色来高亮显示 = ON
包括相关邮件 = ON
打开对话时将所有邮件标记为已读 = ON
在顶端显示最新邮件 = ON
; 编写
邮件格式 = 纯文本
拼写检查 = 永不
自动给自己 = OFF
; 编写-回复
使用与原邮件相同的格式 = OFF
引用原始邮件的文本 = ON
提高引用级别 = ON
在回复或转发中引用文本时 = 包括所有原始邮件文本
```

### 通讯录 ###

```
[通讯录 - 偏好设置]
; 通用
英文姓名显示顺序 = 名，姓
排序方式 = 姓氏
短名称格式 = 仅名字
首选昵称 = ON
显示Siri建议 = OFF
地址格式 = 中国大陆
; 帐户
; 模版
手机: 电话
工作: 电子邮件
; vCard
vCard格式 = 3.0
启用私人的个人名片 = OFF
导出vCard中的备注 = OFF
导出vCard中的照片 = OFF
```

### 日历 ###

```
[日历 - 偏好设置]
; 通用
默认日历App = 日历.app
每周天数 = 7
星期开始于 = 星期一
周视图中的滚动显示方式 = 周
每天开始于 = 8点
每天结束于 = 18点
显示 = 12小时
显示生日日历 = ON
显示节假日日历 = ON
显示其他历法 = 农历
; 提醒
日程 = 30分钟前
全天日程 = 无
生日 = 无
出发时间 = OFF
显示共享日历信息 = OFF
显示邀请信息 = OFF
; 高级-OFF
```

### 提醒事项 ###

```
[提醒事项 - 偏好设置]
全天提醒事项 = 今天7点通知
将全天提醒事项显示为逾期 = ON
```

### 备忘录 ###

```
[备忘录 - 偏好设置]
备忘录排序方式 = 标题
新备忘录开头格式 = 标题
默认帐户 = iCloud
自动排序已勾选项目 = OFF
启用我的Mac上帐户 = OFF
默认文本大小 = 中
编辑::拼写和语法 = OFF
编辑::替换 = OFF
```

### FaceTime通话 ###

```
[FaceTime通话 - 偏好设置]
启用这个帐户 = ON
通过以下地址可与您进行FaceTime通话 = +86
来自iPhone的呼叫 = ON
允许在视频通话期间捕捉实况照片 = OFF
```

### 信息 ###

```
[信息 - 偏好设置]
; 通用
保留信息 = 永久
关闭对话时存储历史记录 = ON
未知联系人信息时通知 = OFF
名字被提及时通知 = OFF
播放声音效果 = OFF
文字大小 = 中
; iMessage信息
启用这个帐户 = ON
启用iCloud云端信息 = ON
信息接收地址 = +86
发送已读回执 = OFF
```

### 照片 ###

```
[照片 - 偏好设置]
; 通用
显示节日事件 = OFF
显示回忆通知 = OFF
将项目拷贝到照片图库 = ON
包括位置信息 = OFF
自动播放视频和实况照片 = OFF
; iCloud照片
iCloud照片 = ON
优化Mac存储空间 = ON
共享的相簿 = OFF
```

### 预览 ###

```
[预览 - 偏好设置]
; 图像
在同一窗口中打开一组文件 = ON
一个图像像素等于一个屏幕像素 = ON
; PDF
屏幕上的大小等于打印出的大小 = ON
从上次查看的页面开始 = ON
显示为 = 连续滚动
使用逻辑页码 = ON
将姓名添加到注解 = OFF
```

### 终端 ###

```
[终端 - 偏好设置]
; 通用
# 使用描述文件新建窗口 = Homebrew
% defaults write com.apple.Terminal "Startup Window Settings" -string Homebrew;
# Shell的打开方式 = /bin/zsh
% defaults write com.apple.Terminal Shell -string "/bin/zsh";
新窗口打开方式 = 默认
新标签页打开方式 = 相同
# 使用Cmd-1至Cmd-9切换标签页 = ON
% defaults write com.apple.Terminal Command1Through9SwitchesTabs -bool true;
; 描述文件
# 默认 = Homebrew
% defaults write com.apple.Terminal "Default Window Settings" -string Homebrew;
; 描述文件 - 文本
defaults read com.apple.Terminal "Window Settings" −dict "Homebrew"
# 平滑文本 = OFF
FontAntialias = 0;
# 光标 = 块（0:块/1:下划线/2:竖条）
CursorType = 0;
# 闪动光标 = ON
CursorBlink = 1; 
; 描述文件 - 窗口
标题 = 工作路径或文稿/路径/活跃进程名称
ShowRepresentedURLPathInTitle = 1;
活跃进程名称 = ON
ShowActiveProcessInTitle = 1;
活跃进程参数 = OFF
ShowActiveProcessArgumentsInTitle = 0;
TTY名称 = OFF
ShowTTYNameInTitle = 0;
尺寸 = OFF
ShowDimensionsInTitle = 0;
# 窗口大小 = 120*40
columnCount = 120;
rowCount = 40;
回滚行数限制 = 10000
ShouldLimitScrollback = 1;
ScrollbackLines = 10000;
重新打开窗口时恢复文本 = ON
恢复的行数限制 = 10000
在恢复的文本后插入书签 = OFF
在程序坞中显示状态和当前内容 = OFF
; 描述文件 - 标签页
标题 = 工作路径或文稿/路径/活跃进程名称
ShowActiveProcessArgumentsInTabTitle = 0;
ShowTTYNameInTabTitle = 0;
有自定标题时显示其他项目 = OFF
显示活动指示器 = ON
; 描述文件 - Shell
# 当Shell退出时 = 关闭窗口（0:关闭窗口/1:当shell完全退出后关闭/2:不关闭窗口）
shellExitAction = 0;
关闭之前先询问 = 1（2:始终/0:永不/1:仅当有进程）
warnOnShellCloseAction = 1;
不是登录Shell和以下项目时 = screen/tmux
; 描述文件 - 键盘
将Option键用作Meta键 = OFF
# 滚动备用屏幕 = OFF
ScrollAlternateScreen = 0;
; 描述文件 - 高级
声明终端为 = xterm
TerminalType = xterm;
文本编码 = Unicode(UTF-8)
启动时设置locale环境变量 = ON
; 窗口组
; 编码
defaults read com.apple.Terminal StringEncodings;
(
    4,
    30,
    1,
    5,
    2147484175,
    12,
    2147486214,
    2147486000,
    2147485234,
    2147485233,
    2147486211
)
% killall Terminal;
```

```
[终端 - 终端菜单]
# 安全键盘输入 = OFF
% defaults write com.apple.Terminal SecureKeyboardEntry -bool false;
% killall Terminal;
```

```
# 终端相关
# 焦点跟随鼠标光标到达任何终端窗口 = ON
% defaults write com.apple.Terminal FocusFollowsMouse -bool true;
% killall Terminal;
```

### 文本编辑 ###

```
[文本编辑 - 偏好设置]
# 格式 = 纯文本
% defaults write com.apple.TextEdit RichText -bool false;
# 按页面换行 = OFF
% defaults write com.apple.TextEdit ShowPageBreaks -bool false;
; 选项
# 键入时检查拼写 = OFF
% defaults write com.apple.TextEdit CheckSpellingWhileTyping -bool false;
# 检查拼写和语法 = OFF
% defaults write com.apple.TextEdit CheckGrammarWithSpelling -bool false;
# 自动纠正拼写 = OFF
% defaults write com.apple.TextEdit CorrectSpellingAutomatically -bool false;
# 显示标尺 = OFF
% defaults write com.apple.TextEdit ShowRuler -bool false;
# 数据检测器 = OFF
% defaults write com.apple.TextEdit DataDetectors -bool false;
# 仅在多信息文本文稿中使用智能引号和破折号 = OFF
% defaults write com.apple.TextEdit SmartSubstitutionsEnabledInRichTextOnly -bool false;
# 智能拷贝粘贴 = OFF
% defaults write com.apple.TextEdit SmartCopyPaste -bool false;
# 智能引号 = OFF
% defaults write com.apple.TextEdit SmartQuotes -bool false;
# 智能破折号 = OFF
% defaults write com.apple.TextEdit SmartDashes -bool false;
# 智能链接 = OFF
% defaults write com.apple.TextEdit SmartLinks -bool false;
# 文本替换 = OFF
% defaults write com.apple.TextEdit TextReplacement -bool false;
; 打开和存储
# HTML文件显示为HTML代码 = ON
% defaults write com.apple.TextEdit IgnoreHTML -bool true;
# RTF文件显示为RTF代码 = OFF
% defaults write com.apple.TextEdit IgnoreRichText -bool true;
# 给纯文本文件添加.txt扩展名 = ON
% defaults write com.apple.TextEdit AddExtensionToNewPlainTextFiles -bool false;
# 纯文本文件打开/存储编码 = UTF-8
% defaults write com.apple.TextEdit PlainTextEncoding -int 4;
% defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4;
HTML存储文稿类型 = HTML 4.01 Strict
HTML存储样式化 = 嵌入式CSS
HTML存储编码 = UTF-8
# HTML存储保留空白区域 = ON
% defaults write com.apple.TextEdit PreserveWhitespace -bool true;
% killall TextEdit;
```

```
# 文本编辑相关
# 默认保存位置 = 文稿
% defaults write com.apple.TextEdit NSNavLastRootDirectory -string "~/Documents";
% killall TextEdit;
```

### 活动监视器 ###

```
[活动监视器 - 偏好设置]
; 显示
# 程序坞图标 = 显示应用程序图标（5:显示CPU使用率/6:显示CPU历史记录/2:显示网络使用率/3:显示硬盘活动/0:显示应用程序图标）
% defaults write com.apple.ActivityMonitor IconType -int 0;
# 更新频率 = 一般（非常频繁:1秒/频繁:2秒/一般:5秒）
% defaults write com.apple.ActivityMonitor UpdatePeriod -int 5;
# 过去12小时内使用的应用程序 = ON
% defaults write com.apple.ActivityMonitor ShowCategoryAppsinLast12Hours -bool true;
% killall Activity\ Monitor;
```

### 音乐 ###

```
[音乐 - 偏好设置]
; 通用
# 显示iTunes Store = OFF（ON:2/OFF:1）
% defaults write com.apple.Music showStoreInSidebar -int 1;
显示星级评分 = OFF
歌曲列表复选框 = OFF
列表大小 = 中
# 歌曲更改时通知 = OFF
% defaults write com.apple.Music userWantsPlaybackNotifications -bool false;
; 播放
; 文件
; 访问限制
; 高级
# 自动更新插画 = OFF
% defaults write com.apple.Music automaticallyDownloadArtwork -bool false;
# 在其他所有窗口前端显示迷你播放程序 = OFF
% defaults write com.apple.Music miniPlayerAlwaysOnTop -bool false;
# 在其他所有窗口前端播放视频 = OFF
% defaults write com.apple.Music movieWindowAlwaysOnTop -bool false;
% killall Music;
```


## 系统优化设置 ##


### 启动台相关 ###

```
# 启动台相关
# 启动台大小 = 9*7
% defaults write com.apple.dock springboard-columns -int 9;
% defaults write com.apple.dock springboard-rows -int 7;
% killall Dock;
```

### 截屏相关 ###

```
# 截屏相关
# 截屏文件保存位置 = ${HOME}/Downloads
% defaults write com.apple.screencapture location "${HOME}/Downloads";
# 截屏文件格式 = png
% defaults write com.apple.screencapture type -string png;
# 截屏时显示缩略图 = ON
% defaults write com.apple.screencapture show-thumbnail -bool true;
# 截屏无阴影 = ON
% defaults write com.apple.screencapture disable-shadow -bool true;
# 截屏文件名包含日期时间 = OFF
% defaults write com.apple.screencapture include-date -bool false;
% killall SystemUIServer;
```

### 磁盘相关 ###

```
# 磁盘相关
# 不生成.DS_Store文件夹
% defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true;
% defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true;
# 打开/关闭SSD磁盘Trim功能
sudo trimforce enable/disable
```

### 安全相关 ###

```
# 安全相关
# 提示从Internet下载的应用程序 = OFF
% defaults write com.apple.LaunchServices LSQuarantine -bool false;
```
