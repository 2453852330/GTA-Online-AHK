#Requires AutoHotkey >=v2.0
#MaxThreads 50
#SingleInstance Force
#UseHook true
KeyHistory 0
ProcessSetPriority 'High'
A_MenuMaskKey := "vkFF"

; Grand Theft Auto V
; 全局变量
global DefaultDelay := 50
global OpenPhoneDelay := 500
global ChaiShiChuanSongDelay := 1000
global OpenMMenuDelay := 200

; 修复功能失效 : 每10s修复一次
SetTimer timer_ReHookInput,5000
timer_ReHookInput(){
    InstallKeybdHook
}


; 封装函数
ActiveWindow() {
    ; WinActivate "Grand Theft Auto V"
}
SendSleep(key) {
    Send "{" . key . " Down}"
    Sleep 10
    Send "{" . key . " Up}"
    Sleep DefaultDelay
}
SendSleepDelta(key,time) {
    Send "{" . key . " Down}"
    Sleep 10
    Send "{" . key . " Up}"
    Sleep DefaultDelay + time
}
SendTwoKeySleep(A, B) {
    Send "{" . A . " Down}"
    Sleep DefaultDelay
    Send "{" . B . " Down}"
    Sleep 15
    Send "{" . B . " Up}"
    Sleep 15
    Send "{" . A . " Up}"
}
SendLoopSleep(key, count) {
    loop count {
        SendSleep key
    }
}
SendLoopSleepDelta(key, count,delta) {
    loop count {
        SendSleepDelta key,delta
    }
}

; 功能键
F1:: {
    ActiveWindow()
    EatSnacks()
}
F2:: {
    ActiveWindow()
    EatArmor()
}
F3:: {
    ActiveWindow()
    GetCar()
}
F4:: {
    ActiveWindow()
    UnRegisterCEO()
}
F5:: {
    ActiveWindow()
    FindRandomChaShi()
    Sleep 2000
    RegisterCEO()
}
F6:: {
    ActiveWindow()
    AltF4ChaiChuan()
}
F7:: {
    ActiveWindow()
    BackCar()
}
F8:: {
    ActiveWindow()
    PeiDao_ZhiWenJieSuo()
}
F9:: {
    ; ActiveWindow()
    BotChaiChuan()
}

F12:: {
    Sleep 100
    Reload
}

<!1:: {
    KeyWait "LALT"
    ActiveWindow()
    FindRandomChaShi()
}
<!2:: {
    KeyWait "LALT"
    ActiveWindow()
    CloseRandomChaiShi()
}
<!3:: {
    KeyWait "LALT"
    ActiveWindow()
    GetHuJing()
}
<!4:: {
    KeyWait "LALT"
    ActiveWindow()
    GetHuJingXiaoChuan()
}
<!5:: {
    KeyWait "LALT"
    ActiveWindow()
    GetHuJingMaQue()
}
<!6:: {
    KeyWait "LALT"
    ActiveWindow()
    HuJingSongHui()
}
<^1::{
    KeyWait "LCtrl"
    ActiveWindow()
    OpenSnackMenu()
}
<^2::{
    KeyWait "LCtrl"
    ActiveWindow()
    GetSpecialCar()
}
<^3::{
    KeyWait "LCtrl"
    ActiveWindow()
    GetKongBa()
}
<^4::{
    KeyWait "LCtrl"
    ActiveWindow()
    SongHuiKongBa()
}
; HotIfWinActive "Grand Theft Auto V"
; Hotkey "e" , quick_E
; quick_E(hotkeyName){
;     SendLoopSleep "e",10
; }

; 功能实现
SongHuiKongBa(){
    SendSleep "m"
    SendLoopSleep "Down", 3
    SendSleep "Enter"
    SendLoopSleep "Up", 3
    SendSleep "Enter"
    SendSleep "Down"
    SendSleep "Enter"
    SendSleep "Enter"
    SendLoopSleep "BackSpace", 4
}
GetKongBa(){
    SendSleep "m"
    SendLoopSleep "Down", 3
    SendSleep "Enter"
    SendLoopSleep "Up", 3
    SendLoopSleep "Enter", 2
    SendLoopSleep "BackSpace", 3
}
GetSpecialCar(){
    SendSleep "m"
    Sleep OpenMMenuDelay
    SendSleep "Down"
    SendSleep "Down"
    SendSleep "Enter"
    SendSleep "Down"
    SendSleep "Down"
    SendSleep "Enter"
    SendSleep "BackSpace"
    SendSleep "BackSpace"
}
EatSnacks() {
    Send "{Tab Down}"
    Sleep 100
    SendLoopSleep "c",10
    Sleep 100
    Send "{Tab Up}"
}
EatArmor() {
    Send "{Tab Down}"
    Sleep 100
    SendLoopSleep "i",5
    Sleep 100
    Send "{Tab Up}"
}
GetCar() {
    SendSleep "m"
    Sleep OpenMMenuDelay
    SendSleep "Down"
    SendSleep "Down"
    SendSleep "Enter"
    SendSleep "Enter"
    SendSleep "BackSpace"
    SendSleep "BackSpace"
}
UnRegisterCEO()
{
    SendSleep "m"
    Sleep OpenMMenuDelay
    SendSleep "Enter"
    SendSleep "Up"
    SendSleep "Enter"
}
FindRandomChaShi() {
    SendSleep "Up"
    Sleep OpenPhoneDelay
    SendSleep "Left"
    SendSleep "Enter"
    SendSleep "Up"
    SendLoopSleep "Enter",3
}
RegisterCEO() {
    SendSleep "m"
    SendSleep "Down"
    SendLoopSleep "Enter",3
}
AltF4ChaiChuan() {
    SendSleep "Space"
    SendSleep "Enter"
    Sleep ChaiShiChuanSongDelay
    SendTwoKeySleep("Alt", "F4")
}
BackCar()
{
    SendSleep("m")
    SendSleep("Down")
    SendSleep("Down")
    SendSleep("Enter")
    SendSleep("Up")
    SendSleep("Up")
    SendSleep("Enter")
    SendSleep("BackSpace")
    SendSleep("BackSpace")
}
PeiDao_ZhiWenJieSuo() {
    ; 1
    SendSleepDelta "Down", 20
    ; 2
    SendSleepDelta "Right", 20
    SendSleepDelta "Down" , 20
    ; 3
    SendLoopSleepDelta "Right", 2 ,50
    SendSleepDelta "Down" , 20
    ; 4
    SendLoopSleepDelta "Right", 3 , 50
    SendSleepDelta "Down" , 20
    ; 5
    SendLoopSleepDelta "Right", 4 , 50
    SendSleepDelta "Down" , 20
    ; 6
    SendLoopSleepDelta "Left", 3 , 50
    SendSleepDelta "Down" , 20
    ; 7
    SendLoopSleepDelta "Left", 2 , 50
    SendSleepDelta "Down" , 20
    ; 8
    SendSleep "Left"
}
CloseRandomChaiShi() {
    SendSleep "Up"
    Sleep OpenPhoneDelay
    SendSleep "Left"
    SendSleep "Enter"
    Send "{BackSpace 10}"
}

GetHuJing() {
    SendSleep "m"
    SendLoopSleep "Down", 3
    SendSleep "Enter"
    SendLoopSleep "Up", 2
    SendLoopSleep "Enter", 2
    SendLoopSleep "BackSpace", 3
}

GetHuJingXiaoChuan() {
    SendSleep "m"
    SendLoopSleep "Down", 3
    SendSleep "Enter"
    SendLoopSleep "Up", 2
    SendSleep "Enter"
    SendLoopSleep "Down", 2
    SendSleep "Enter"
    SendLoopSleep "BackSpace", 3
}


GetHuJingMaQue() {
    SendSleep "m"
    SendLoopSleep "Down", 3
    SendSleep "Enter"
    SendLoopSleep "Up", 2
    SendSleep "Enter"
    SendSleep "Down"
    SendSleep "Enter"
    SendLoopSleep "BackSpace", 3
}

HuJingSongHui() {
    SendSleep "m"
    SendLoopSleep "Down", 3
    SendSleep "Enter"
    SendLoopSleep "Up", 2
    SendSleep "Enter"
    SendLoopSleep "Down", 3
    SendSleep "Enter"
    SendSleep "Up"
    SendSleep "Enter"
    SendSleep "Up"
    SendSleep "Enter"
    SendLoopSleep "BackSpace", 4
}
OpenSnackMenu(){
    SendSleep "m"
    SendLoopSleep "Down", 4
    SendSleep "Enter"
    SendLoopSleep "Down", 2
    SendSleep "Enter"
}
BotChaiChuan(){
    Sleep DefaultDelay
    SendSleep "Space"
    Sleep 300
    SendSleep "Enter"
    Sleep ChaiShiChuanSongDelay
    SendSleep "Home"
}
#UseHook false