#!/bin/sh

# 系统偏好设置
scutil --get HostName
scutil --get ComputerName
hostname
sudo scutil —-set HostName zhongmba
sudo scutil --set ComputerName ZhongMBA
# Apple ID
# 通用
# 桌面与屏幕保护程序
defaults write com.apple.dock wvous-br-corner -int 13;
defaults write com.apple.dock wvous-br-modifier -int 0;
killall Dock;
defaults write com.apple.dock wvous-tl-corner -int 0;
defaults write com.apple.dock wvous-tl-modifier -int 0;
defaults write com.apple.dock wvous-tr-corner -int 0;
defaults write com.apple.dock wvous-tr-modifier -int 0;
defaults write com.apple.dock wvous-bl-corner -int 0;
defaults write com.apple.dock wvous-bl-modifier -int 0;
defaults write com.apple.dock wvous-br-corner -int 13;
defaults write com.apple.dock wvous-br-modifier -int 0;
killall Dock;
# 程序坞与菜单栏
defaults write com.apple.dock tilesize -int 48;
defaults write com.apple.dock largesize -int 64;
defaults write com.apple.dock orientation -string right;
defaults write com.apple.dock mineffect -string scale;
defaults write com.apple.dock autohide -bool false;
defaults write com.apple.dock autohide-time-modifier -float 0;
defaults write com.apple.Dock autohide-delay -float 0;
defaults write com.apple.dock show-recents -bool false;
defaults write com.apple.menuextra.battery ShowPercent -string "NO";
defaults write com.apple.menuextra.clock DateFormat -string "EEE d MMM H:mm";
defaults write com.apple.menuextra.clock Show24Hour -bool true;
killall Dock;
defaults write com.apple.dock springboard-columns -int 9;
defaults write com.apple.dock springboard-rows -int 7;
killall Dock;
# 调度中心
# Siri
# 聚焦
# 语言与地区
# 通知
# 互联网帐户
# 触控ID
# 用户与群组
# 辅助功能
# 屏幕使用时间
# 扩展
# 安全性与隐私
defaults write com.apple.screensaver askForPassword -bool true;
defaults write com.apple.screensaver askForPasswordDelay -int 0;
sudo spctl --master-disable
sudo nvram LocationServicesEnabled=%01;
# 软件更新
softwareupdate --schedule on
# 网络
# 蓝牙
# 声音
sudo nvram StartupMute=％00
sudo nvram StartupMute=％01
defaults write com.apple.systemsound com.apple.sound.uiaudio.enabled -int 0;
# 打印机与扫描仪
# 键盘
defaults write com.apple.screencapture show-thumbnail -bool true;
defaults write com.apple.screencapture location "${HOME}/Downloads";
defaults write com.apple.screencapture type -string png;
defaults write com.apple.screencapture disable-shadow -bool true;
defaults write com.apple.screencapture include-date -bool false;
killall SystemUIServer
# 触控板
defaults write com.apple.dock showAppExposeGestureEnabled -bool false;
defaults write com.apple.dock showLaunchpadGestureEnabled -bool false;
defaults write com.apple.dock showDesktopGestureEnabled -bool false;
killall Dock;
# 鼠标
# 显示器
# 随航
# 电池
# 日期与时间
# 共享
sudo scutil —-set ComputerName ZhongMBA;
# 时间机器
# 启动磁盘
# 描述文件
# 系统应用偏好设置
# 访达
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true;
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true;
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true;
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true;
defaults write com.apple.finder NewWindowTarget -string "PfHm"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"
defaults write com.apple.finder ShowRecentTags -bool false;
defaults write com.apple.sidebarlists systemitems -dict-add ShowHardDisks -bool true;
defaults write com.apple.sidebarlists systemitems -dict-add ShowRemovable -bool true;
defaults write com.apple.sidebarlists systemitems -dict-add ShowEjectables -bool true;
defaults write com.apple.sidebarlists systemitems -dict-add ShowServers -bool true;
defaults write NSGlobalDomain AppleShowAllExtensions -bool true;
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false;
defaults write com.apple.finder WarnOnEmptyTrash -bool false;
defaults write com.apple.finder FXRemoveOldTrashItems -bool true;
defaults write com.apple.finder FXDefaultSearchScope -string SCcf;
defaults write com.apple.finder FXPreferredViewStyle -string Nlsv;
defaults write com.apple.finder ShowSidebar -bool true;
defaults write com.apple.finder ShowTabView -bool flase;
defaults write com.apple.finder ShowPathbar -bool true;
defaults write com.apple.finder ShowStatusBar -bool false;
defaults write com.apple.safari ShowFullURLInSmartSearchField -bool true;
# 系统优化设置
