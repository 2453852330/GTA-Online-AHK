#Include Config.ahk

; Helper Func
SendKeySleep(key, time := DefaultSleep)
{
    Send key
    Sleep DefaultSleep
}

LoopSendKeySleep(key, count, time := DefaultSleep) {
    loop count {
        SendKeySleep(key, time)
    }
}

SendCombinationKey(A, B)
{
    Send "{" . A . " Down}"
    Sleep DefaultCombinationSleep
    Send "{" . B . "}"
    Sleep DefaultSleep
    Send "{" . A . "Up}"
}

; Features
FindRandomChaiShi() {
    SendKeySleep("{Up}")
    Sleep OpenPhoneSleep
    SendKeySleep("{Left}")
    SendKeySleep("{Enter}")
    SendKeySleep("{Up}")
    loop 3 {
        Send "{Enter}"
        Sleep DefaultSleep
    }
}

RegisterCEO() {
    SendKeySleep("{m}")
    SendKeySleep("{Down}")
    loop 3 {
        Send "{Enter}"
        Sleep DefaultSleep
    }
}

UnRegisterCEO()
{
    SendKeySleep("{m}")
    SendKeySleep("{Enter}")
    SendKeySleep("{Up}")
    SendKeySleep("{Enter}")
}
; chi ling shi
EatSnacks() {
    Send "{Tab Down}"
    Sleep DefaultSleep * 4
    loop 5 {
        SendKeySleep("{c}")
    }
    Sleep DefaultSleep * 4
    Send "{Tab Up}"
}

WearBodyArmor() {
    Send "{Tab Down}"
    Sleep DefaultSleep * 4
    loop 5 {
        SendKeySleep("{i}")
    }
    Sleep DefaultSleep * 4
    Send "{Tab Up}"
}


GetCar() {
    SendKeySleep("{m}")
    SendKeySleep("{Down}")
    SendKeySleep("{Down}")
    SendKeySleep("{Enter}")
    SendKeySleep("{Enter}")
    SendKeySleep("{BackSpace}")
    SendKeySleep("{BackSpace}")
}

BackCar()
{
    SendKeySleep("{m}")
    SendKeySleep("{Down}")
    SendKeySleep("{Down}")
    SendKeySleep("{Enter}")
    SendKeySleep("{Up}")
    SendKeySleep("{Up}")
    SendKeySleep("{Enter}")
    SendKeySleep("{BackSpace}")
    SendKeySleep("{BackSpace}")
}


KaFenHong185() {
    ; alt + enter
    Send "{Alt Down}"
    Sleep DefaultCombinationSleep
    Send "{Enter Down}"
    Sleep DefaultSleep
    Send "{Enter Up}"
    Sleep DefaultCombinationSleep
    Send "{Alt Up}"
    ; sleep
    Sleep DefaultSleep * 5
    ; alt + tab
    Send "{Alt Down}"
    Sleep DefaultCombinationSleep
    Send "{Tab Down}"
    Sleep DefaultSleep
    Send "{Tab Up}"
    Sleep DefaultCombinationSleep
    Send "{Alt Up}"
}

KaChaiChuan()
{
    FindRandomChaiShi()
    Sleep OpenMKeyMenuSleep
    RegisterCEO()
}

AltF4ChaiChuan()
{
    Send "{Space}"
    Sleep DefaultSleep
    Send "{Enter}"
    Sleep AltF4Sleep
    ; alt + f4
    Send "{Alt Down}"
    Sleep DefaultCombinationSleep
    Send "{F4 Down}"
    Sleep DefaultSleep
    Send "{F4 Up}"
    Sleep DefaultCombinationSleep
    Send "{Alt Up}"
}

; 8 hang
YiJianJieSuo() {
    ; 1 hang
    SendKeySleep("{Down}")
    ; 2 hang
    SendKeySleep("{Right}")
    SendKeySleep("{Down}")
    ; 3 hang
    LoopSendKeySleep("{Right}", 2)
    SendKeySleep("{Down}")
    ; 4 hang
    LoopSendKeySleep("{Right}", 3)
    SendKeySleep("{Down}")
    ; 5 hang
    LoopSendKeySleep("{Right}", 4)
    SendKeySleep("{Down}")
    ; 6 hang
    LoopSendKeySleep("{Right}", 5)
    SendKeySleep("{Down}")
    ; 7 hang
    LoopSendKeySleep("{Right}", 6)
    SendKeySleep("{Down}")
    ; 8 hang
    LoopSendKeySleep("{Right}", 7)
}

GetHuJing() {
    SendKeySleep("{m}")
    LoopSendKeySleep("{Down}", 3)
    SendKeySleep("{Enter}")
    LoopSendKeySleep("{Up}", 2)
    SendKeySleep("{Enter}")
    SendKeySleep("{Enter}")
    LoopSendKeySleep("{BackSpace}", 3)
}

GetHuJingXiaoChuan() {
    SendKeySleep("{m}")
    LoopSendKeySleep("{Down}", 3)
    SendKeySleep("{Enter}")
    LoopSendKeySleep("{Up}", 2)
    SendKeySleep("{Enter}")
    LoopSendKeySleep("{Down}", 2)
    SendKeySleep("{Enter}")
    LoopSendKeySleep("{BackSpace}", 3)
}


GetHuJingMaQue() {
    SendKeySleep("{m}")
    LoopSendKeySleep("{Down}", 3)
    SendKeySleep("{Enter}")
    LoopSendKeySleep("{Up}", 2)
    SendKeySleep("{Enter}")
    SendKeySleep("{Down}")
    SendKeySleep("{Enter}")
    LoopSendKeySleep("{BackSpace}", 3)
}

HuJingSongHui() {
    SendKeySleep("{m}")
    LoopSendKeySleep("{Down}", 3)
    SendKeySleep("{Enter}")
    LoopSendKeySleep("{Up}", 2)
    SendKeySleep("{Enter}")
    LoopSendKeySleep("{Down}", 3)
    SendKeySleep("{Enter}")
    SendKeySleep("{Up}")
    SendKeySleep("{Enter}")
    SendKeySleep("{Up}")
    SendKeySleep("{Enter}")
}