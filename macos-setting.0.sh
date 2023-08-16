#!/bin/sh

# 系统偏好设置
scutil --get HostName
scutil --get ComputerName
hostname
sudo scutil —-set HostName zhongmba
sudo scutil --set ComputerName ZhongMBA
# Apple ID
# 通用
defaults write NSGlobalDomain AppleInterfaceStyle -string Dark;
defaults write NSGlobalDomain AppleAccentColor -int 4;
defaults write NSGlobalDomain AppleHighlightColor -string "0.698039 0.843137 1.000000 Blue";
defaults write NSGlobalDomain AppleShowScrollBars -string Always;
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
defaults write NSGlobalDomain AppleActionOnDoubleClick -string Maximize;
defaults write com.apple.dock autohide -bool false;
defaults write com.apple.dock autohide-time-modifier -float 0;
defaults write com.apple.Dock autohide-delay -float 0;
defaults write com.apple.dock show-recents -bool false;
defaults write com.apple.menuextra.battery ShowPercent -string "NO";
defaults write com.apple.menuextra.clock ShowDayOfWeek -bool true;
defaults write com.apple.menuextra.clock ShowDayOfMonth -bool true;
defaults write com.apple.menuextra.clock DateFormat -string "EEE d MMM HH:mm";
defaults write com.apple.menuextra.clock IsAnalog -bool false;
defaults write com.apple.menuextra.clock Show24Hour -bool true;
defaults write com.apple.menuextra.clock FlashDateSeparators -bool false;
defaults write com.apple.menuextra.clock ShowSeconds -bool false;
killall SystemUIServer;
killall Dock;
# 调度中心
defaults write com.apple.dock mru-spaces -bool false;
defaults write NSGlobalDomain AppleSpacesSwitchOnActivate -bool true;
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
defaults write NSGlobalDomain com.apple.keyboard.fnState -bool true;
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false;
defaults write NSGlobalDomain WebAutomaticSpellingCorrectionEnabled -bool false;
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false;
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false;
defaults write NSGlobalDomain NSSpellCheckerAutomaticallyIdentifiesLanguages -bool false;
defaults write NSGlobalDomain NSPreferredSpellServerLanguage -string en;
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false;
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false;
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
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true;
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
defaults write com.apple.finder _FXSortFoldersFirst -bool true;
defaults write com.apple.finder FXDefaultSearchScope -string SCcf;
killall Finder;
defaults write com.apple.finder FXPreferredViewStyle -string Nlsv;
defaults write com.apple.finder ShowSidebar -bool true;
defaults write com.apple.finder ShowTabView -bool flase;
defaults write com.apple.finder ShowPathbar -bool true;
defaults write com.apple.finder ShowStatusBar -bool false;
killall Finder;
defaults write com.apple.finder QuitMenuItem -bool true;
defaults write com.apple.finder AppleShowAllFiles -bool flase;
killall Finder;
# AppStore
# Safari浏览器
defaults write com.apple.safari ShowFullURLInSmartSearchField -bool true;
killall Safari;
# 邮件
# 通讯录
# 日历
# 提醒事项
# 备忘录
# FaceTime通话
# 信息
# 照片
# 预览
# 终端
defaults write com.apple.Terminal "Startup Window Settings" -string Homebrew;
defaults write com.apple.Terminal Shell -string "/bin/zsh";
defaults write com.apple.Terminal Command1Through9SwitchesTabs -bool true;
defaults write com.apple.Terminal "Default Window Settings" -string Homebrew;
defaults write com.apple.Terminal SecureKeyboardEntry -bool false;
defaults write com.apple.Terminal FocusFollowsMouse -bool true;
# 文本编辑
defaults write com.apple.TextEdit RichText -bool false;
defaults write com.apple.TextEdit ShowPageBreaks -bool false;
defaults write com.apple.TextEdit CheckSpellingWhileTyping -bool false;
defaults write com.apple.TextEdit CheckGrammarWithSpelling -bool false;
defaults write com.apple.TextEdit CorrectSpellingAutomatically -bool false;
defaults write com.apple.TextEdit ShowRuler -bool false;
defaults write com.apple.TextEdit DataDetectors -bool false;
defaults write com.apple.TextEdit SmartSubstitutionsEnabledInRichTextOnly -bool false;
defaults write com.apple.TextEdit SmartCopyPaste -bool false;
defaults write com.apple.TextEdit SmartQuotes -bool false;
defaults write com.apple.TextEdit SmartDashes -bool false;
defaults write com.apple.TextEdit SmartLinks -bool false;
defaults write com.apple.TextEdit TextReplacement -bool false;
defaults write com.apple.TextEdit IgnoreHTML -bool true;
defaults write com.apple.TextEdit IgnoreRichText -bool true;
defaults write com.apple.TextEdit AddExtensionToNewPlainTextFiles -bool false;
defaults write com.apple.TextEdit PlainTextEncoding -int 4;
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4;
defaults write com.apple.TextEdit PreserveWhitespace -bool true;
killall TextEdit;
defaults write com.apple.TextEdit NSNavLastRootDirectory -string "~/Documents";
killall TextEdit;
# 活动监视器
defaults write com.apple.ActivityMonitor IconType -int 0;
defaults write com.apple.ActivityMonitor UpdatePeriod -int 5;
defaults write com.apple.ActivityMonitor ShowCategoryAppsinLast12Hours -bool true;
killall Activity\ Monitor;
# 音乐
defaults write com.apple.Music showStoreInSidebar -int 1;
defaults write com.apple.Music userWantsPlaybackNotifications -bool false;
defaults write com.apple.Music automaticallyDownloadArtwork -bool false;
defaults write com.apple.Music miniPlayerAlwaysOnTop -bool false;
defaults write com.apple.Music movieWindowAlwaysOnTop -bool false;
killall Music;
# 系统优化设置
# 启动台相关
defaults write com.apple.dock springboard-columns -int 9;
defaults write com.apple.dock springboard-rows -int 7;
killall Dock;
# 截屏相关
defaults write com.apple.screencapture location "${HOME}/Downloads";
defaults write com.apple.screencapture type -string png;
defaults write com.apple.screencapture show-thumbnail -bool true;
defaults write com.apple.screencapture disable-shadow -bool true;
defaults write com.apple.screencapture include-date -bool false;
killall SystemUIServer;
# 磁盘相关
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true;
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true;
# 安全相关
defaults write com.apple.LaunchServices LSQuarantine -bool false;
killall Terminal;
