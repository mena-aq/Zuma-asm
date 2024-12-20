
include irvine32.inc
include macros.inc
includelib kernel32.lib
includelib winmm.lib
PlaySound PROTO, pszSound:PTR BYTE, hmod:DWORD, fdwSound:DWORD

.data

    ;audio
    themeSong db "theme.wav",0

    ;menus
     
    frogTitle BYTE "                             .-----.                           ,----,                        ____                  ",0dh,0ah
              BYTE "                            /7  .  (                        . '   .`|                      ,'  , `.  ,---,        ",0dh,0ah
              BYTE "                           /   .-.  \                     .'   .'   ;       ,--,       ,-+-,.' _ |  '  .' \       ",0dh,0ah
              BYTE "                          /   /   \  \                   ,---, '    .'     ,'_ /|   ,-+-. ;   , || /  ;    '.     ",0dh,0ah
              BYTE "                         / `  )   (   )                  |   :     ./ .--. |  | :  ,--.'|'   |  ;|:  :       \    ",0dh,0ah
              BYTE "                        / `   )   ).  \                  ;   | .'  /,'_ /| :  . | |   |  ,', |  '::  |   /\   \   ",0dh,0ah
              BYTE "                      .'  _.   \_/  . |                  `---' /  ; |  ' | |  . . |   | /  | |  |||  :  ' ;.   :  ",0dh,0ah
              BYTE "     .--.           .' _.' )`.        |                    /  ;  /  |  | ' |  | | '   | :  | :  |,|  |  ;/  \   \ ",0dh,0ah
              BYTE "    (    `---...._.'   `---.'_)    ..  \                  ;  /  /--,:  | | :  ' ; ;   . |  ; |--' '  :  | \  \ ,' ",0dh,0ah
              BYTE "     \            `----....___    `. \  |                /  /  / .`||  ; ' |  | ' |   : |  | ,    |  |  '  '--'   ",0dh,0ah
              BYTE "      `.           _ ----- _   `._  )/  |              ./__;       ::  | : ;  ; | |   : '  |/     |  :  :         ",0dh,0ah
              BYTE "        `.       / ''     '' \ `.  `._   |             |   :     .' '  :  `--'   \;   | |`-'      |  | ,'         ",0dh,0ah
              BYTE "          `.    ((O)` ) ((O)` ) `.   `._\              ;   |  .'    :  ,      .-./|   ;/          `--''           ",0dh,0ah
              BYTE "            `-- '`---'   `---' )  `.    `-             `---'         `--`----'    '---'                           ",0dh,0ah
              BYTE "               /                  ` \      `-.",0dh,0ah
              BYTE "             .'                      `.       `.",0dh,0ah
              BYTE "            /                     `  ` `.       `",0dh,0ah
              BYTE "     .--.   \ ===._____.======. `    `   `. .___.--`     .''''.",0dh,0ah
              BYTE "    ' .` `-. `.                )`. `   ` ` \          .' . '  8)",0dh,0ah
              BYTE "   (8  .  ` `-.`.               ( .  ` `  .`\      .'  '    ' /",0dh,0ah
              BYTE "    \  `. `    `-.               ) ` .   ` ` \  .'   ' .  '  /",0dh,0ah
              BYTE "     \ ` `.  ` . \`.    .--.     |  ` ) `   .``/   '  // .  /",0dh,0ah
              BYTE "      `.  ``. .   \ \   .-- `.  (  ` /_   ` . / ' .  '/   .'",0dh,0ah
              BYTE "        `. ` \  `  \ \  '-.   `-'  .'  `-.  `   .  .'/  .'",0dh,0ah
              BYTE "          \ `.`.  ` \ \    ) /`._.`       `.  ` .  .'  /",0dh,0ah
              BYTE "           |  `.`. . \ \  (.'               `.   .'  .'",0dh,0ah
              BYTE "        __/  .. \ \ ` ) \                     \.' .. \__",0dh,0ah
              BYTE " .-._.-'     ''  .-'   `.                   (  ''     `-._.--.",0dh,0ah
              BYTE "(_________.-====' / .' /\_)`--..__________..-- `====-. _________)   ",0

    mainMenuOption db 0



    playOption BYTE "       _             _ ",0dh,0ah
               BYTE "      | |           | |",0dh,0ah
               BYTE " _ __ | | __ _ _   _| |",0dh,0ah
               BYTE "| '_ \| |/ _` | | | | |",0dh,0ah
               BYTE "| |_) | | (_| | |_| |_|",0dh,0ah
               BYTE "| .__/|_|\__,_|\__, (_)",0dh,0ah
               BYTE "| |             __/ |  ",0dh,0ah
               BYTE "|_|            |___/   ",0dh,0ah,0

    instructionOption BYTE " _           _                   _   _                 ",0dh,0ah
                      BYTE "(_)         | |                 | | (_)                ",0dh,0ah
                      BYTE " _ _ __  ___| |_ _ __ _   _  ___| |_ _  ___  _ __  ___ ",0dh,0ah
                      BYTE "| | '_ \/ __| __| '__| | | |/ __| __| |/ _ \| '_ \/ __|",0dh,0ah
                      BYTE "| | | | \__ \ |_| |  | |_| | (__| |_| | (_) | | | \__ \",0dh,0ah
                      BYTE "|_|_| |_|___/\__|_|   \__,_|\___|\__|_|\___/|_| |_|___/",0dh,0ah,0dh,0ah,0

    leaderBoardOption BYTE " _                _           _                         _ ",0dh,0ah
                      BYTE "| |              | |         | |                       | |",0dh,0ah
                      BYTE "| | ___  __ _  __| | ___ _ __| |__   ___   __ _ _ __ __| |",0dh,0ah
                      BYTE "| |/ _ \/ _` |/ _` |/ _ \ '__| '_ \ / _ \ / _` | '__/ _` |",0dh,0ah
                      BYTE "| |  __/ (_| | (_| |  __/ |  | |_) | (_) | (_| | | | (_| |",0dh,0ah
                      BYTE "|_|\___|\__,_|\__,_|\___|_|  |_.__/ \___/ \__,_|_|  \__,_|",0dh,0ah,0


    instructions BYTE "1. Aim for balls with the same colour to destroy chains!",0dh,0ah
                 BYTE "2, A chain is 3 or more balls longer, the longer the chain, the more you score",0dh,0ah
                 BYTE "3. Try to generate chain reactions for more points!",0dh,0ah
                 BYTE "4. But beware! The clock is ticking and if the balls reach the end '###', you lose!!",0dh,0ah
                 BYTE "Controls:",0dh,0ah
                 BYTE "SPACE to shoot",0dh,0ah
                 BYTE "Q,W,E,D,X,S,Z,A to rotate player",0dh,0ah
                 BYTE "Lvl.3 only: Press B to slow down, however, 50 pts will be deducted >:)",0dh,0ah
                 BYTE ".... to exit this menu, press escape",0dh,0ah,0


    levelOneOption BYTE "             ('-.        (`-.      ('-.                        ",0dh,0ah
                   BYTE "           _(  OO)     _(OO  )_  _(  OO)                       ",0dh,0ah
                   BYTE " ,--.     (,------.,--(_/   ,. \(,------.,--.            .---. ",0dh,0ah
                   BYTE " |  |.-')  |  .---'\   \   /(__/ |  .---'|  |.-')       /_   | ",0dh,0ah
                   BYTE " |  | OO ) |  |     \   \ /   /  |  |    |  | OO )       |   | ",0dh,0ah
                   BYTE " |  |`-' |(|  '--.   \   '   /, (|  '--. |  |`-' |       |   | ",0dh,0ah
                   BYTE "(|  '---.' |  .--'    \     /__) |  .--'(|  '---.'       |   | ",0dh,0ah
                   BYTE " |      |  |  `---.    \   /     |  `---.|      |        |   | ",0dh,0ah
                   BYTE " `------'  `------'     `-'      `------'`------'        `---' ",0dh,0ah,0

    levelTwoOption BYTE "             ('-.        (`-.      ('-.                           ",0dh,0ah
                   BYTE "           _(  OO)     _(OO  )_  _(  OO)                          ",0dh,0ah
                   BYTE " ,--.     (,------.,--(_/   ,. \(,------.,--.            .-----.  ",0dh,0ah
                   BYTE " |  |.-')  |  .---'\   \   /(__/ |  .---'|  |.-')       / ,-.   \ ",0dh,0ah
                   BYTE " |  | OO ) |  |     \   \ /   /  |  |    |  | OO )      '-'  |  | ",0dh,0ah
                   BYTE " |  |`-' |(|  '--.   \   '   /, (|  '--. |  |`-' |         .'  /  ",0dh,0ah
                   BYTE "(|  '---.' |  .--'    \     /__) |  .--'(|  '---.'       .'  /__  ",0dh,0ah
                   BYTE " |      |  |  `---.    \   /     |  `---.|      |       |       | ",0dh,0ah
                   BYTE " `------'  `------'     `-'      `------'`------'       `-------' ",0dh,0ah,0
    
    levelThreeOption BYTE "             ('-.        (`-.      ('-.                           ",0dh,0ah
                     BYTE "           _(  OO)     _(OO  )_  _(  OO)                          ",0dh,0ah
                     BYTE " ,--.     (,------.,--(_/   ,. \(,------.,--.            .-----.  ",0dh,0ah
                     BYTE " |  |.-')  |  .---'\   \   /(__/ |  .---'|  |.-')       /  -.   \ ",0dh,0ah
                     BYTE " |  | OO ) |  |     \   \ /   /  |  |    |  | OO )      '-' _'  | ",0dh,0ah
                     BYTE " |  |`-' |(|  '--.   \   '   /, (|  '--. |  |`-' |         |_  <  ",0dh,0ah
                     BYTE "(|  '---.' |  .--'    \     /__) |  .--'(|  '---.'      .-.  |  | ",0dh,0ah
                     BYTE " |      |  |  `---.    \   /     |  `---.|      |       \ `-'   / ",0dh,0ah
                     BYTE " `------'  `------'     `-'      `------'`------'        `----''  ",0dh,0ah,0

    gameOverTitle BYTE " _____                        _____                _ ",0dh,0ah
                  BYTE "|  __ \                      |  _  |              | |",0dh,0ah
                  BYTE "| |  \/ __ _ _ __ ___   ___  | | | __   _____ _ __| |",0dh,0ah
                  BYTE "| | __ / _` | '_ ` _ \ / _ \ | | | \ \ / / _ | '__| |",0dh,0ah
                  BYTE "| |_\ | (_| | | | | | |  __/ \ \_/ /\ V |  __| |  |_|",0dh,0ah
                  BYTE " \____/\__,_|_| |_| |_|\___|  \___/  \_/ \___|_|  (_)",0dh,0ah
                  BYTE "Did you know..? Over 4000 species of frogs exist!!",0ah,0dh,0

   winTitle BYTE "                                         _ ",0dh,0ah
            BYTE "                                        | |",0dh,0ah
            BYTE " _   _  ___  _   _  __      _____  _ __ | |",0dh,0ah
            BYTE "| | | |/ _ \| | | | \ \ /\ / / _ \| '_ \| |",0dh,0ah
            BYTE "| |_| | (_) | |_| |  \ V  V / (_) | | | |_|",0dh,0ah
            BYTE " \__, |\___/ \__,_|   \_/\_/ \___/|_| |_(_)",0dh,0ah
            BYTE "  __/ |                                    ",0dh,0ah
            BYTE " |___/                                     ",0dh,0ah,0


    pauseScreen BYTE "                                _ ",0dh,0ah
                BYTE "                               | |",0dh,0ah
                BYTE " _ __   __ _ _   _ ___  ___  __| |",0dh,0ah
                BYTE "| '_ \ / _` | | | / __|/ _ \/ _` |",0dh,0ah
                BYTE "| |_) | (_| | |_| \__ |  __| (_| |",0dh,0ah
                BYTE "| .__/ \__,_|\__,_|___/\___|\__,_|",0dh,0ah
                BYTE "| |                               ",0dh,0ah
                BYTE "|_|                               ",0dh,0ah
                BYTE "    _    _",0dh,0ah
                BYTE "   (o)--(o)",0dh,0ah
                BYTE "  /.______.\",0dh,0ah
                BYTE "  \________/    +====+",0dh,0ah
                BYTE " ./        \.   |(::)|",0dh,0ah
                BYTE "( .        , )  | )( |",0dh,0ah
                BYTE " \ \_\\//_/ /   |(..)|",0dh,0ah
                BYTE "  ~~  ~~  ~~    +====+",0dh,0ah
                BYTE "Press R to resume...",0

    ;colors for menus
    myGreen dd 0bh
    myYellow dd 0eh
    myBlue dd 03h
                 
    gameOver db 0 
    toEmit db 1
    wonLevel db 0
    paused db 0

    level db 1

    ; file handling, leaderboard
    Player struct
	    pname db 20 dup(0)
	    level db 0
	    score dd 0
    Player ends
    score_offset = 20
    level_offset = 19

    currentPlayer Player<>
    players Player 5 dup(<>)  ;max 5 player
    numPlayers db 0

    file db "scores.dat",0
    handlef dword ?
    buffer_size = 255
    buffer db buffer_size dup(0)
    record_size = 25   ;20 byte name,level 1 byte,score 4 byte

    loginBuffer db 20 dup(0)
    username_size = 20
    temp_buffer db 50 dup(0)

    swapFlag db 0

    ;boundaries
    TOPBOUNDARY equ 3
    BOTTOMBOUNDARY equ 25
    LEFTBOUNDARY equ 1
    RIGHTBOUNDARY equ 118

    ;track
    TrackCoord struct
        x db 0
        y db 0
        xDir db 1 ;which direction to send ball?
        yDir db 0
    TrackCoord ends


    ;track1 points
    track1 TrackCoord<18,5,1,0> 
           TrackCoord<80,5,0,1>
           TrackCoord<80,23,-1,0>
           TrackCoord<30,23,0,-1>
           TrackCoord<30,15,0,-1> ;end track (seperate)
    start1X dw 18 
    start1Y dw 5
    start1dx dw 1
    start1dy dw 0
    track1Num dd 4 ;number of points

    ;track2 points
    track2 TrackCoord<18,5,1,0> 
           TrackCoord<80,5,0,1>
           TrackCoord<80,23,-1,0>
           TrackCoord<30,23,0,-1>
           TrackCoord<30,8,1,0> 
           TrackCoord<60,8,1,0>    ;end track (seperate)
    start2X dw 18  
    start2Y dw 5
    start2dx dw 1
    start2dy dw 0
    track2Num dd 5 ;number of points

   ;track3 points
    track3 TrackCoord<18,5,1,0> 
           TrackCoord<90,5,0,1>
           TrackCoord<90,25,-1,0>
           TrackCoord<20,25,0,-1>
           TrackCoord<20,8,1,0> 
           TrackCoord<80,8,0,1>    
           TrackCoord<80,22,-1,0>    
           TrackCoord<30,22,0,-1> 
           TrackCoord<30,15,0,-1> ;end track (seperate)
    start3X dw 18  
    start3Y dw 5
    start3dx dw 1
    start3dy dw 0
    track3Num dd 8 ;number of points

    ;tunnels in lvl3
    tunnelX db 90,90,90,90,90,90   ,20,20,20,20        ,50,51,52,53,54,55,56,57,58,59
    tunnelY db 10,11,12,13,14,15   ,17,16,15,14        ,8,8,8,8,8,8,8,8,8,8

    ;for user input
    inputChar db ?

    ;player
	playerX db 56
	playerY db 14

    player_up BYTE " | ", 0
              BYTE " @ ", 0
              BYTE "   ", 0

    player_upright BYTE "  /", 0
                   BYTE " @ ", 0
                   BYTE "   ", 0

	player_right BYTE "   ", 0
                 BYTE " @-", 0
                 BYTE "   ", 0

    player_downright BYTE "   ", 0
                     BYTE " @ ", 0
                     BYTE "  \", 0

    player_down BYTE "   ", 0
                BYTE " @ ", 0
                BYTE " | ", 0


    player_downleft BYTE "   ", 0
                    BYTE " @ ", 0
                    BYTE "/  ", 0

    player_left BYTE "   ", 0
                BYTE "-@ ", 0
                BYTE "   ", 0

    player_upleft BYTE "\  ", 0
                  BYTE " @  ", 0
                  BYTE "   ", 0


    playerDir db "w" ;initially facing up

    ;balls
    ball_sprite equ 'O'        
    BALL_CAPACITY equ 100                                             
    Ball struct
        x db 0
        y db 0
        xDir db 1
        yDir db 0
        color dd 0fh 
    Ball ends
    ballSize dd sizeof Ball  
    balls Ball (2*BALL_CAPACITY) dup(<>)
    numBalls dd 0
    ;fireball
    fireball Ball<>
    firingState db 0
    capacityfull db 0

    temp dd ? ;to store any temp address e.g.for chain reaction

    ;timers
    fLastTime dd 0
    fInterval dd 50
    bLastTime dd 0
    bInterval dd 0
    level1Speed equ 1000
    level2Speed equ 700
    level3Speed equ 500
    speedUpClock dd 0
    fastSpeed equ 300
    slowDownClock dd 0

    flag db 0

    ;scoring
    score dd 0
    scoreMultiplier dd 10
    lives dd 1



.code

;-------------------------- leaderboard -----------------------------


leaderboard proc
    ;header
    mov dl,0
    mov dh,10
    call Gotoxy
    mwrite "Username"
    mov dl,22
    call Gotoxy
    mwrite "Level"
    mov dl,30
    call Gotoxy
    mwrite "High Score"

    ;players
	movzx ecx,numPlayers
	mov esi,offset players
	printLeaderboard:
        inc dh
        mov dl,0
        call Gotoxy
        push dx
		mov ebx,ecx
        ;username
		mov ecx,username_size
        mov edx,esi
		call Writestring 
        pop dx
        ;lvl
        mov dl,24
        call Gotoxy
		add esi,username_size
		movzx eax,byte ptr[esi]
		call WriteDec
        ;score
        mov dl,34
        call Gotoxy
		inc esi
		mov eax,[esi]
		call WriteDec
		add esi,4
		mov ecx,ebx
	loop printLeaderboard
    call crlf
    call crlf
ret
leaderboard endp


sortPlayers proc              
outer:
	mov swapFlag,0
	mov esi,offset players
	mov edi,offset players
	add edi,sizeof Player
	movzx ecx,numPlayers
	dec ecx
	mov ax,0
	inner:
		mov ebx,ecx
		mov eax,[esi+score_offset]
		cmp eax,[edi+score_offset]
		jge noSwap

		;swap
		mov eax,[esi+score_offset]
		xchg [edi+score_offset],eax  ;swap score
		mov [esi+score_offset],eax
		mov al,[esi+level_offset]
		xchg [edi+level_offset],al  ;swap level
		mov [esi+level_offset],al
		push edi
		lea edi,temp_buffer   
		mov ecx,username_size
		rep movsb ;esi to temp
		sub esi,username_size
		mov edi,esi
		pop esi
		mov ecx,username_size
		rep movsb
		mov edi,esi
		sub esi,username_size
		mov edi,esi
		lea esi,temp_buffer
		mov ecx,username_size
		rep movsb
		sub esi,username_size
		mov swapFlag,1

		noSwap:
			mov esi,edi
			add edi,sizeof Player
		mov ecx,ebx
	loop inner
	cmp swapFlag,0
	je exit1
	dec ecx
	jecxz exit1
	jmp outer
exit1:
ret
sortPlayers endp

;--------------------------board drawing etc--------------------------
drawScore proc
    mov eax,white
    call SetTextColor
    mov dl,100
    mov dh,1
    call Gotoxy
    mov eax,score
    mwrite <"Score: ">
    call writeDec
ret
drawScore endp

drawLives proc
    mov eax,white
    call SetTextColor
    mov dl,5
    mov dh,1
    call Gotoxy
    mov eax,lives
    mwrite <"Lives: ">
    call writeDec
ret
drawLives endp

drawtrack1 proc
    mov eax,gray
    call SetTextColor
    mov esi,offset track1
    mov dl,[esi]
    mov dh,[esi+1]
    dec dh
    mov bl,[esi+2]
    mov bh,[esi+3]
    add esi,sizeof TrackCoord
    call Gotoxy
    mwrite '='
s1:  
    add dl,bl
    add dh,bh
    call Gotoxy
    mwrite '='
    cmp dl,[esi]
    jle s1
inc dh
mov bl,[esi+2]
mov bh,[esi+3]
add esi,sizeof TrackCoord
call Gotoxy
mwrite '='
s2:
    add dl,bl
    add dh,bh
    call Gotoxy
    mwrite '='
    cmp dh,[esi+1]
    jle s2  
dec dl
mov bl,[esi+2]
mov bh,[esi+3]
add esi,sizeof TrackCoord
call Gotoxy
mwrite '='   
s3:
    add dl,bl
    add dh,bh
    call Gotoxy
    mwrite '='
    cmp dl,[esi]
    jge s3
dec dh
mov bl,[esi+2]
mov bh,[esi+3]
add esi,sizeof TrackCoord
call Gotoxy
mwrite '='
s4:
    add dl,bl
    add dh,bh
    call Gotoxy
    mwrite '='
    cmp dh,[esi+1]
    jg s4
inc dl
call Gotoxy
mwrite "###"
ret
drawtrack1 endp

drawTrack2 proc
    mov eax,gray
    call SetTextColor
    mov esi,offset track2
    mov dl,[esi]
    mov dh,[esi+1]
    dec dh
    mov bl,[esi+2]
    mov bh,[esi+3]
    add esi,sizeof TrackCoord
    call Gotoxy
    mwrite '='
s1:  
    add dl,bl
    add dh,bh
    call Gotoxy
    mwrite '='
    cmp dl,[esi]
    jle s1
inc dh
mov bl,[esi+2]
mov bh,[esi+3]
add esi,sizeof TrackCoord
call Gotoxy
mwrite '='
s2:
    add dl,bl
    add dh,bh
    call Gotoxy
    mwrite '='
    cmp dh,[esi+1]
    jle s2  
dec dl
mov bl,[esi+2]
mov bh,[esi+3]
add esi,sizeof TrackCoord
call Gotoxy
mwrite '='   
s3:
    add dl,bl
    add dh,bh
    call Gotoxy
    mwrite '='
    cmp dl,[esi]
    jge s3
dec dh
mov bl,[esi+2]
mov bh,[esi+3]
add esi,sizeof TrackCoord
call Gotoxy
mwrite '='
s4:
    add dl,bl
    add dh,bh
    call Gotoxy
    mwrite '='
    cmp dh,[esi+1]
    jge s4
mov bl,[esi+2]
mov bh,[esi+3]
add esi,sizeof TrackCoord
call Gotoxy
mwrite '='
s5:  
    add dl,bl
    add dh,bh
    call Gotoxy
    mwrite '='
    cmp dl,[esi]
    jle s5
mov ecx,3
h1:
    inc dh
    call Gotoxy
    mwrite '#'
loop h1
ret
drawTrack2 endp

drawTunnels proc
    mov eax,7
    call SetTextColor
    mov esi,offset tunnelX
    mov edi,offset tunnelY
    mov ecx,lengthof tunnelX
    tunnels:
        mov dl,[esi]
        mov dh,[edi]
        call Gotoxy
        mwrite 'X'
        inc esi
        inc edi
    loop tunnels
ret
drawTunnels endp

drawTrack3 proc
    mov eax,gray
    call SetTextColor
    mov esi,offset track3
    mov dl,[esi]
    mov dh,[esi+1]
    dec dh
    mov bl,[esi+2]
    mov bh,[esi+3]
    add esi,sizeof TrackCoord
    call Gotoxy
    mwrite '='
s1:  
    add dl,bl
    add dh,bh
    call Gotoxy
    mwrite '='
    cmp dl,[esi]
    jle s1
inc dh
mov bl,[esi+2]
mov bh,[esi+3]
add esi,sizeof TrackCoord
call Gotoxy
mwrite '='
s2:
    add dl,bl
    add dh,bh
    call Gotoxy
    mwrite '='
    cmp dh,[esi+1]
    jle s2  
dec dl
mov bl,[esi+2]
mov bh,[esi+3]
add esi,sizeof TrackCoord
call Gotoxy
mwrite '='   
s3:
    add dl,bl
    add dh,bh
    call Gotoxy
    mwrite '='
    cmp dl,[esi]
    jge s3
dec dh
mov bl,[esi+2]
mov bh,[esi+3]
add esi,sizeof TrackCoord
call Gotoxy
mwrite '='
s4:
    add dl,bl
    add dh,bh
    call Gotoxy
    mwrite '='
    cmp dh,[esi+1]
    jge s4
mov bl,[esi+2]
mov bh,[esi+3]
add esi,sizeof TrackCoord
call Gotoxy
mwrite '='
s5:  
    add dl,bl
    add dh,bh
    call Gotoxy
    mwrite '='
    cmp dl,[esi]
    jle s5
mov bl,[esi+2]
mov bh,[esi+3]
add esi,sizeof TrackCoord
call Gotoxy
mwrite '='
s6:
    add dl,bl
    add dh,bh
    call Gotoxy
    mwrite '='
    cmp dh,[esi+1]
    jle s6  
mov bl,[esi+2]
mov bh,[esi+3]
add esi,sizeof TrackCoord
call Gotoxy
mwrite '='
s7:
    add dl,bl
    add dh,bh
    call Gotoxy
    mwrite '='
    cmp dl,[esi]
    jge s7
mov bl,[esi+2]
mov bh,[esi+3]
add esi,sizeof TrackCoord
call Gotoxy
mwrite '='
s8:
    add dl,bl
    add dh,bh
    call Gotoxy
    mwrite '='
    cmp dh,[esi+1]
    jge s8
inc dl
call Gotoxy
mwrite "###"
ret
drawTrack3 endp

drawBoardL1 proc
    call drawLives
    call drawScore
    mov dl,55
    mov dh,1
    call Gotoxy
    mwrite <"LEVEL 1">
    call drawtrack1
    ;call drawPlayer
ret
drawBoardL1 endp

drawBoardL2 proc
    call drawLives
    call drawScore
    mov dl,55
    mov dh,1
    call Gotoxy
    mwrite <"LEVEL 2">
    call drawtrack2
    ;call drawPlayer
ret
drawBoardL2 endp

drawBoardL3 proc
    call drawLives
    call drawScore
    mov dl,55
    mov dh,1
    call Gotoxy
    mwrite <"LEVEL 3">
    call drawtrack3
    call drawTunnels
    ;call drawPlayer
ret
drawBoardL3 endp

;-------------------------utility functions-----------------------------

randomizeColor proc ;move into eax               ;;;;;;; based on level
	;push ebp
	;mov ebp,esp
	;mov esi,[ebp+8]
    cmp level,1
    je Level1
    cmp level,2
    jge Level23
    
Level1:
	mov eax,3
    jmp randomCol
    ;mov eax,2
Level23:
    mov eax,6
randomCol:
	call RandomRange

    cmp eax,0
    je color1
    cmp eax,1
    je color2
    cmp eax,2
    je color3
    cmp eax,4
    je color4
    cmp eax,5
    je color5

	color1:
		mov eax,lightblue
		jmp setColor
	color2:
		mov eax,magenta
		jmp setColor
	color3:
		mov eax,lightred
        jmp setColor
    color4:
		mov eax,yellow
        jmp setColor
    color5:
		mov eax,lightcyan
        jmp setColor

setColor:
	ret 
randomizeColor endp

removeRange proc
    push ebp
    mov ebp,esp
    push ecx ;num balls to remove

    mov edx,offset balls
    mov ecx,numBalls
    dec ecx
    imul ecx,ballSize
    add edx,ecx ;last address of balls

    mov edi,[ebp+12] 
    mov ecx,[ebp-4]  
    dec ecx
    imul ecx,ballSize 
    add edi,ecx ;edi has last ball of delete range
    push edi  ;push

    mov esi,edi
    add esi,ballSize ;first ball after delete range
    
    mov ecx,[ebp-4]

outer:
    remove:
        mov eax,[esi]
        mov [edi],eax
        mov eax,[esi+1]
        mov [edi+1],eax
        mov eax,[esi+2]
        mov [edi+2],eax
        mov eax,[esi+3]
        mov [edi+3],eax
        mov eax,[esi+4] ;color
        mov [edi+4],eax
        add esi,ballSize
        add edi,ballSize
        cmp edi,edx
    jle remove
    mov edi,[ebp-8]
    sub edi,ballSize
    mov [ebp-8],edi
    mov esi,edi
    add esi,ballSize
loop outer
    pop edi

    ;from esi to last space to overwrite!!!!
    mov esi,edx
    mov ecx,[ebp-4]
    dec ecx
    imul ecx,ballSize
    sub esi,ecx
    l2:
        mov dl,[esi]
        mov dh,[esi+1]
        call gotoxy
        mwrite ' '
        add esi,ballSize
        cmp esi,edx
        jle l2
    pop ecx
    sub numBalls,ecx
    pop ebp
   call drawBalls
    ret
removeRange endp

;-------------------------------player functions---------------------------------

drawPlayer proc
   
    mov dl,fireball.x
    mov dh,fireball.y
    call Gotoxy
    mwrite ' '

    mov eax,green
    call SetTextColor

    ;draw based on direction faced
    cmp playerDir,"w"
    je face_up
    
    cmp playerDir,"e"
    je face_upright

    cmp playerDir,"d"
    je face_right

    cmp playerDir,"x"
    je face_downright

    cmp playerDir,"s"
    je face_down

    cmp playerDir,"z"
    je face_downleft

    cmp playerDir,"a"
    je face_left

    cmp playerDir,"q"
    je face_upleft

    face_up:
        mov esi,offset player_up
        mov fireball.xDir,0
        mov fireball.yDir,-1
        mov fireball.x,57
        mov fireball.y,13
        jmp printPlayer

    face_upright:
        mov esi,offset player_upright
        mov fireball.xDir,1
        mov fireball.yDir,-1
        mov fireball.x,59
        mov fireball.y,13
        jmp printPlayer

    face_right:
        mov esi,offset player_right
        mov fireball.xDir,1
        mov fireball.yDir,0
        mov fireball.x,59
        mov fireball.y,15
        jmp printPlayer

     face_downright:
        mov esi,offset player_downright
        mov fireball.xDir,1
        mov fireball.yDir,1
        mov fireball.x,59
        mov fireball.y,17
        jmp printPlayer

     face_down:
        mov esi,offset player_down
        mov fireball.xDir,0
        mov fireball.yDir,1
        mov fireball.x,57
        mov fireball.y,17
        jmp printPlayer

     face_downleft:
        mov esi,offset player_downleft
        mov fireball.xDir,-1
        mov fireball.yDir,1
        mov fireball.x,55
        mov fireball.y,17
        jmp printPlayer

     face_left:
        mov esi,offset player_left
        mov fireball.xDir,-1
        mov fireball.yDir,0
        mov fireball.x,55
        mov fireball.y,15
        jmp printPlayer

    face_upleft:
        mov esi,offset player_upleft
        mov fireball.xDir,-1
        mov fireball.yDir,-1
        mov fireball.x,55
        mov fireball.y,13
        jmp printPlayer
    
    printPlayer:
        mov eax,green
        call setTextColor
        mov dl,playerX
        mov dh,playerY
        mov ecx,3
        printRow:
            call Gotoxy
            mov eax,[esi]
            call Writechar
            inc dl
            inc esi
            cmp byte ptr[esi],0
            jne printRow
        inc dh 
        mov dl,playerX
        inc esi
        loop printRow
    
    ;fire ball
    mov dl,fireball.x
    mov dh,fireball.y
    call Gotoxy
    mov eax,fireball.color
    call SetTextColor
    mov al,ball_sprite
    call Writechar

    ret
drawPlayer endp

;------------------------------------------shooting functions---------------------------------------

replaceFireball proc
    call randomizeColor
    mov fireball.color,eax
    mov dl,fireball.x
    mov dh,fireball.y
    call Gotoxy
    mwrite ' '    ;clear old one
    call drawPlayer  ;to replace 
    ret
replaceFireball endp

shootBall proc
    ;move
    ;firing:
        ;mov eax,50 
        ;call Delay

        mov dl,fireball.x
        mov dh,fireball.y
        call Gotoxy
        mwrite ' '
        mov al,fireball.xDir
        add fireball.x,al
        mov al,fireball.yDir
        add fireball.y,al
        mov dl,fireball.x
        mov dh,fireball.y
        call Gotoxy
        mov eax,fireball.color
        call SetTextColor
        mov al,ball_sprite
        call Writechar
        ;check boundary
        cmp fireball.x,RIGHTBOUNDARY
        je endFire
        cmp fireball.x,LEFTBOUNDARY
        je endFire
        cmp fireball.y,TOPBOUNDARY
        je endFire
        cmp fireball.y,BOTTOMBOUNDARY
        je endFire
        
        mov ecx,numBalls
        mov esi,offset balls
        checkCollision:
            mov al,[esi]
            cmp al,fireball.x
            jne nextBall 
            mov al,[esi+1]
            cmp al,fireball.y
            jne nextBall

            ;collision
            
            push esi ;save collision ball
            call addBall
            pop esi ;retrieve
            mov edi,offset balls 
            mov ecx,numBalls ;go last index
            dec ecx
            mov eax,sizeof Ball
            imul ecx,eax
            add edi,ecx ;i
            l1:
                mov edx,edi
                sub edx,sizeof Ball ;i-1
                mov eax,[edx+4] 
                mov [edi+4],eax ;color of i-1 to i
                cmp edx,esi ;collision ball?
                je collisionBall
                sub edi,sizeof Ball
                jmp l1

                collisionBall: ;give color of fireball
                    mov eax,fireball.color
                    mov [esi+4],eax
                    call checkMatch
                    jmp endFire
            
            nextBall:
            add esi,sizeof Ball
        loop checkCollision
        jmp exit2
    ;jmp firing

    endFire:

        ;if level 2 maybe speed up
        speedUp:
            cmp level,2
            jne exit1
            cmp bInterval,fastSpeed ;if alr sped up , ignore
            je exit1
            mov eax,5
            call Randomrange
            cmp eax,1 ;if 1 then speed up
            jne exit1
            mov bInterval,fastSpeed
            call GetMSeconds
            mov speedUpClock,eax
            mov eax,red
            call SetTextColor
            mov dl,50
            mov dh,26
            call Gotoxy
            mwrite <"sped up!!">

   exit1:
        mov firingState,0
        call drawBalls
        mov eax,1000
        call Delay
        call replaceFireball
    exit2:
        ret
shootBall endp

;------------------------------- ball (in chain) functions --------------------------

moveBalls proc
    push ebp
    mov ebp,esp
    mov ecx,numBalls 
    mov esi,offset balls 
    moveABall:
        mov dl,[esi]
        mov dh,[esi+1]
        call Gotoxy
        mwrite ' '
        mov dl,[esi+2]
        mov dh,[esi+3]        
        add [esi],dl ;move in xdir
        add [esi+1],dh ;move in ydir
        mov ebx,ecx
        mov ecx,[ebp+12] ;numtrackcoords
        mov edi,[ebp+8] ;&track
        checkIntersection: ;with track coord to turn
            mov dl,[esi]
            mov dh,[esi+1]
            cmp dl,[edi] ;match x
            jne nextTC
            cmp dh,[edi+1] ;match y
            jne nextTC
            mov dl,[edi+2] ;change direction
            mov dh,[edi+3]
            mov [esi+2],dl
            mov [esi+3],dh
            nextTC:
            add edi,sizeof TrackCoord
        loop checkIntersection        
        add esi,sizeof Ball
        mov ecx,ebx
    loop moveABall
    ;check if first ball reach end, edi is at end
    mov esi,offset balls ;first ball
    mov dl,[esi]
    mov dh,[esi+1]
    cmp [edi],dl
    jne exit1
    cmp [edi+1],dh 
    jne exit1
    mov gameOver,1 ;game over
    exit1:
    pop ebp
    call drawBalls
    ret 8
moveBalls endp

drawBalls proc 
    push ebp
    mov ebp,esp
	mov ecx,numBalls
    cmp ecx,0
    je exit1
	mov esi,offset balls
	drawLoop:
        mov eax,[esi+4]
        call SetTextColor
		mov dl,[esi]
		mov dh,[esi+1]
		call Gotoxy
		mov al,ball_sprite
		call Writechar
        add esi,sizeof Ball
	loop drawLoop
exit1:
    pop ebp
    cmp level,3 ;draw to restore tunnels\
    jne exit2
    call drawTunnels
exit2:
	ret
drawBalls endp

;-------------------------------emitter---------------------------------

emitBall proc
    push ebp
    mov ebp,esp
    mov edi,offset balls ;&ball
    mov edx,numBalls ;#balls
    mov ebx,sizeof Ball
    imul edx,ebx
    add edi,edx
    ;init new ball
    mov ax,[ebp+14] ;x
    mov [edi],ax
    mov ax,[ebp+12] ;y
    mov [edi+1],ax
    mov ax,[ebp+10] ;dx
    mov [edi+2],ax
    mov ax,[ebp+8] ;dy
    mov [edi+3],ax  
    call randomizeColor
    mov [edi+4],eax
    inc numBalls
    cmp numballs,BALL_CAPACITY
    jl exit1
    mov capacityfull,1
    exit1:
    call drawBalls
    pop ebp
    ret 8
emitBall endp

addBall proc ;adds ball to end of chain

    mov esi,offset balls
    mov edx,numBalls
    mov ecx,sizeof Ball
    imul edx,ecx
    add esi,edx
    mov edi,esi
    sub edi,sizeof Ball
    ;initialise balls coords and dir
    mov al,[edi]
    mov [esi],al
    mov al,[edi+2]
    mov [esi+2],al
    neg al
    add [esi],al
    mov al,[edi+1]
    mov [esi+1],al
    mov al,[edi+3]
    mov [esi+3],al
    neg al
    add [esi+1],al

    inc numBalls    

    ;call drawBalls ;remove later
    
    mov toEmit,0
ret
addBall endp

;--------------------- color matching -----------------------

;is there a valid match?
matchColors proc ;esi should have the collision ball
    cmp numBalls,0
    je exit1
    ;find starting and ending address of match (if match)
    mov edx,offset balls ;first index (for bounds checking)
    mov edi,esi
    cmp esi,edx ;if first ball no balls behind to check
    je l2b
    sub edi,ballSize
    checkBehind: ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;needs bounds checking here too!!!!!
        mov eax,[edi+4] ;colour
        cmp eax,[esi+4] ;same colour as collision ball?
        jne l2a
        cmp edi,edx
        je l2b
        sub edi,ballSize
        jmp checkBehind ;see more matches
    l2a:
    add edi,ballSize
    ;now edi has start address of chain
    l2b:
    mov ecx,numBalls
    dec ecx
    imul ecx,ballSize
    add edx,ecx ;edx has last index(bounds checking)
    cmp esi,edx ;if last ball no balls ahead to check
    je l3b
    mov ebx,edx
    mov edx,esi
    add edx,ballSize
    checkAhead:
        mov eax,[edx+4] ;colour
        cmp eax,[esi+4] ;same colour as collision ball?
        jne l3a
        cmp edx,ebx
        je l3b
        add edx,ballSize
        jmp checkAhead ;see more matches
    l3a:
    sub edx,ballSize
    ;edx has last index of chain
    l3b:
    mov temp,esi ;save collision ball
    mov esi,edi ;start of chain in esi
    mov edi,edx ;end of chain in edx
    mov eax,edx
    sub eax,esi
    add eax,ballSize ;eax has num balls matched
    mov ebx,0
    mov ebx,ballSize
    div bl
    mov bl,0
    ;div ballSize ;eax tells how many balls in chain
    cmp eax,3 ;3 balls make a chain
    jl exit1
    ;chain made
    mov bl,1 ;set flag that match found
exit1:
    ret
matchColors endp

;if match found
makeMatch proc
    push ebp
    mov ebp,esp
    sub esp,8
    mov ecx,eax ;num balls matched
    push ecx
    mov [ebp-4],esi ;start of chain
    mov [ebp-8],edi ;end of chain
    shiftBalls:
        mov esi,offset balls ;index 0
        mov edi,esi
        add edi,ballSize ;index 1
        l1a: ;mov balls back from beginning (l1 is one shift)
            mov dl,[esi]
            mov dh,[esi+1]
            call Gotoxy
            mwrite ' '
            mov al,[edi]
            mov [esi],al
            mov al,[edi+1]
            mov [esi+1],al
            mov al,[edi+2]
            mov [esi+2],al
            mov al,[edi+3]
            mov [esi+3],al
            cmp esi,[ebp-8] ;if end of chain reached end
            je l1b
            add esi,ballSize
            add edi,ballSize
            jmp l1a
        l1b:
        dec ecx

        ;call drawBalls
        cmp ecx,0
        jg shiftBalls
    ;remove the balls in this chain
    pop ecx;ecx has num balls in chain
    ;add to score
    mov eax,ecx
    imul scoreMultiplier
    add score,eax
    ;remove
    call removeRange
    add esp,8
    pop ebp     
    ret
makeMatch endp

checkMatch proc
mov scoreMultiplier,10
l1:
    call matchColors
    cmp bl,1
    jne noMatch
    ;match found, adjust this chain
    ;animation
    push eax ;save num balls matched
    call matchAnimate
    pop eax
    call makeMatch
    ;if 0 balls left,won level
    cmp numBalls,1
    jbe allCleared
    ;mov collision ball (ball at that positin technically) to esi and recurse
    mov esi,temp
    ;if not in numball range exit
    mov edi,offset balls
    mov eax,numBalls
    dec eax
    imul ballSize
    add edi,eax  ;edi has last
    cmp esi,edi
    jg noMatch
    add scoreMultiplier,10  ;for chain +10..
    jmp l1
allCleared:
    mov wonLevel,1
noMatch:
    mov temp,0
    mov scoreMultiplier,10
    ret
checkMatch endp

matchAnimate proc
    ;esi has first and edi has last
    mov ebx,esi
    mov eax,white
    call SetTextColor
l1:
    mov dl,[ebx]
    mov dh,[ebx+1]
    call Gotoxy
    mwrite '*'
    cmp ebx,edi
    je exit1
    add ebx,ballSize
    jmp l1
exit1:
    mov eax,1000
    call Delay
    ret
matchAnimate endp


;---------------------------- MAIN  --------------------------

main proc

;theme song

INVOKE PlaySound, OFFSET themeSong, NULL, 1
     

;-------------------------------------- START SCREEN -------------------------------------

mov eax,myGreen
call SetTextColor
mov dl,180
mov dh,0
call Gotoxy
mov edx,offset frogTitle
call Writestring
call Waitmsg
call clrscr

;------------------------------------- LOGIN ----------------------------------

mov eax,0fh
call SetTextColor

Login:
	mwrite "Username: "   ;input username
	mov edx,offset loginBuffer
	mov ecx,username_size
	call readstring

	lea esi,loginBuffer
	lea edi,currentPlayer.pname  ;current player
	mov ecx,username_size
	rep movsb

	mwrite "Welcome "
	mov edx,offset currentPlayer.pname
	call writestring 
	call crlf
	call Waitmsg    

	mov currentPlayer.level,1            
	jmp openScoreFile

createScoreFile:           ;create file if first player
	mov edx,offset file
	call CreateOutputFile
	call CloseFile

openScoreFile:              ;load all players
	mov edx,offset file
	call OpenInputFile
	cmp eax,-1
	je createScoreFile
	mov handlef,eax

	mov edx,offset buffer
	mov ecx,buffer_size
	call ReadFromFile

	cmp eax,0
	je emptyFile
	mov bl,record_size
	div bl
	mov numPlayers,al ;find number of players <=5

	movzx ecx,numPlayers         ;buffer to array
	lea esi,buffer
	lea edi,players
	readPlayerData:
		mov ebx,ecx
		mov ecx,record_size
		rep movsb
		mov ecx,ebx
	loop readPlayerData

emptyFile:
	mov eax,handlef
	call CloseFile
	


;--------------------------------------- MAIN MENU -------------------------------------

option1:
    call clrscr
    mov eax,myYellow
    call SetTextColor
    mov edx,offset playOption
    call Writestring
    mov eax,0fh
    call SetTextColor
    mov edx,offset instructionOption
    call Writestring
    mov edx,offset leaderboardOption
    call Writestring
    mov mainMenuOption,1
    jmp MainMenu

option2:
    call clrscr
    mov eax,0fh
    call SetTextColor
    mov edx,offset playOption
    call Writestring
    mov eax,myYellow
    call SetTextColor
    mov edx,offset instructionOption
    call Writestring
    mov eax,0fh
    call SetTextColor
    mov edx,offset leaderboardOption
    call Writestring
    mov mainMenuOption,2
    jmp MainMenu

option3:
    call clrscr
    mov eax,0fh
    call SetTextColor
    mov edx,offset playOption
    call Writestring
    mov edx,offset instructionOption
    call Writestring
    mov eax,myYellow
    call SetTextColor
    mov edx,offset leaderboardOption
    call Writestring
    mov mainMenuOption,3
    jmp MainMenu

MainMenu:
    call readKey
    jz mainMenu
    cmp al,VK_SPACE
    je selectOption 
    cmp al,VK_RETURN
    je nextScreen1
    jmp mainMenu

selectOption:
    cmp mainMenuOption,1
    je option2
    cmp mainMenuOption,2
    je option3
    cmp mainMenuOption,3
    je option1

nextScreen1:
    cmp mainMenuOption,1
    je optionLevel1
    cmp mainMenuOption,2
    je InstructionScreen
    cmp mainMenuOption,3
    je LeaderboardScreen

InstructionScreen:
    call clrscr
    mov eax,myYellow
    call SetTextColor
    mov edx,offset instructionOption
    call writestring
    mov eax,myGreen
    call SetTextColor
    mov edx,offset instructions
    call writestring
    inst1:
        call readKey
        jz inst1
        cmp al,VK_ESCAPE
        je option2
    jmp inst1

LeaderBoardScreen:
    call clrscr
    mov eax,myYellow
    call SetTextColor
    mov edx,offset leaderboardOption
    call Writestring
    mov eax,myGreen
    call SetTextColor
    call crlf
    call leaderboard 
    mwrite <"...esc to exit">
    ldrbd1:
        call readKey
        jz inst1
        cmp al,VK_ESCAPE
        je option2
    jmp ldrbd1

winMenu:
    call clrscr
    mov eax,myYellow
    call SetTextColor
    mov edx,offset winTitle
    call Writestring
    call Waitmsg
    jmp optionLevel1

GameOverMenu:
    call clrscr
    mov eax,myYellow
    call SetTextColor
    mov edx,offset gameOverTitle
    call Writestring
    call Waitmsg

optionLevel1:
    call clrscr
    mov eax,myYellow
    call SetTextColor
    mov edx,offset levelOneOption
    call Writestring
    mov eax,0fh
    call SetTextColor
    mov edx,offset levelTwoOption
    call Writestring
    mov edx,offset levelThreeOption
    call Writestring
    mov level,1
    jmp LevelMenu

optionLevel2:
    call clrscr
    mov eax,0fh
    call SetTextColor
    mov edx,offset levelOneOption
    call Writestring
    mov eax,myYellow
    call SetTextColor
    mov edx,offset levelTwoOption
    call Writestring
    mov eax,0fh
    call SetTextColor
    mov edx,offset levelThreeOption
    call Writestring
    mov level,2
    jmp LevelMenu

optionLevel3:
    call clrscr
    mov eax,0fh
    call SetTextColor
    mov edx,offset levelOneOption
    call Writestring
    mov edx,offset levelTwoOption
    call Writestring
    mov eax,myYellow
    call SetTextColor
    mov edx,offset levelThreeOption
    call Writestring
    mov level,3
    jmp LevelMenu

LevelMenu:
    lvm1:
        call readKey
        jz lvm1
        cmp al,VK_ESCAPE
        je option1
        cmp al,VK_SPACE
        je selectLevel
        cmp al,VK_RETURN    
        je PlayGame
        jmp lvm1
    
selectLevel:
    cmp level,1
    je optionLevel2
    cmp level,2
    je optionLevel3
    cmp level,3
    je optionLevel1

;--------------------------------------- GAME LOOP --------------------------------------


PlayGame:
    
    mov paused,0
    
    call clrscr
    call Randomize

    ;resets
    mov numBalls,0
    mov toEmit,1
    mov gameOver,0
    mov capacityfull,0
    mov wonLevel,0

    cmp level,1
    je LevelOneInit
    cmp level,2
    je LevelTwoInit
    cmp level,3
    je LevelThreeInit

    LevelOneInit:
        mov bInterval,level1Speed
        call drawBoardL1
        push offset numBalls
        push offset balls
        push start1X 
        push start1Y 
        push start1dx 
        push start1dy 
        jmp gameInit

    LevelTwoInit:
        mov bInterval,level2Speed
        call drawBoardL2
        push offset numBalls
        push offset balls
        push start2X 
        push start2Y 
        push start2dx 
        push start2dy 
        jmp gameInit

    LevelThreeInit:            
        mov bInterval,level3Speed
        call drawBoardL3
        push offset numBalls
        push offset balls
        push start3X 
        push start3Y 
        push start3dx 
        push start3dy 
        jmp gameInit
        
    gameInit:
        call emitBall 
        call replaceFireball


    
    handleInput:

        mov eax,5
        call Delay
       
        call ReadKey
        jz updateState

        mov inputChar,al


        ;firing ball
        cmp inputChar,VK_SPACE
        jne playerMovement
        mov firingState,1
        ;INVOKE PlaySound, OFFSET fireSound, NULL, 1
        ;call addBall
        jmp updateState

        ;turning player
        playerMovement:
            cmp inputChar,"w"
            je rotatePlayer
            cmp inputChar,"e"
            je rotatePlayer
            cmp inputChar,"d"
            je rotatePlayer
            cmp inputChar,"x"
            je rotatePlayer
            cmp inputChar,"s"
            je rotatePlayer
            cmp inputChar,"z"
            je rotatePlayer
            cmp inputChar,"a"
            je rotatePlayer
            cmp inputChar,"q"
            je rotatePlayer
            cmp inputChar,"p"
            je pauseMenu
            cmp inputChar,"b"
            jne handleInput
            cmp level,3 ;in level3, b is slow down
            jne handleInput
            cmp score,50 ;and you need at least 50pts
            jl handleInput 
            slowDown:
                sub score,50
                mov bInterval,level1Speed
                call GetMSeconds
                mov slowDownClock,eax
                mov dl,50
                mov dh,27
                call Gotoxy
                mwrite <"slowed down! -50pts">

        jmp handleInput

        rotatePlayer:
            mov al,inputChar
            mov playerDir,al
            call drawPlayer

        updateState:

            endSpeedUp:
                cmp level,2
                jne endSlowDown
                cmp bInterval,fastSpeed
                jne ballStates
                call GetMSeconds
                sub eax,speedUpClock
                cmp eax,5000  ;stop after 5s
                jl ballStates
                mov speedUpClock,0
                mov bInterval,level2Speed
                mov dl,50
                mov dh,26
                call Gotoxy
                mwrite <"          ">

            endSlowDown:
                cmp level,3
                jne ballStates
                cmp bInterval,level1Speed
                jne ballStates
                call GetMSeconds
                sub eax,slowDownClock
                cmp eax,5000
                jl ballStates
                mov slowDownClock,0
                mov bInterval,level3Speed
                mov dl,50
                mov dh,27
                call Gotoxy
                mwrite <"                     ">

        ballStates:
            cmp firingState,1
            jne notFiring
            call GetMSeconds
            mov ebx,eax
            sub eax,fLastTime
            cmp eax,fInterval
            jle notFiring 
            mov fLastTime,ebx
            call shootBall
            cmp wonLevel,1
            jne drawBoard

            jmp updateProgress


        drawBoard:
            ;based on level,draw board
            cmp level,1
            je LevelOne
            cmp level,2
            je LevelTwo
            jmp LevelThree
            LevelOne:
                call drawBoardL1
                jmp notFiring
            LevelTwo:
                call drawBoardL2
                jmp notFiring
            LevelThree:
                call drawBoardL3          
                jmp notFiring

            notFiring:
            call GetMSeconds
            mov ebx,eax
            sub eax,bLastTime
            cmp eax,bInterval
            jle handleInput
            mov bLastTime,ebx

            ;call drawScore              
            ; based on level
            cmp level,1
            je LevelOneBalls
            cmp level,2
            je LevelTwoBalls
            jmp LevelThreeBalls

            LevelOneBalls:
                push track1Num
                push offset track1
                jmp movechain

            LevelTwoBalls:
                push track2Num
                push offset track2
                jmp movechain
                 
            LevelThreeBalls:                   
                push track3Num
                push offset track3
                jmp movechain


    movechain:
            call moveBalls
            cmp gameOver,1
            je endGame
            ;add ball if space 
            cmp toEmit,1
            jne l2
            cmp capacityfull,1
            je handleInput

            cmp level,1
            jne emitLevelTwo
            emitLevelOne:
                push start1X 
                push start1Y 
                push start1dx 
                push start1dy 
                jmp Emit
            emitLevelTwo:
                push start2X 
                push start2Y 
                push start2dx 
                push start2dy 
            EmitLevelThree:
                push start3X                
                push start3Y 
                push start3dx 
                push start3dy 

            Emit:
                call emitBall 
            l2:
            mov toEmit,1

    jmp handleInput

    pauseMenu:
        call clrscr
        mov eax,0ah
        call SetTextColor
        mov edx,offset pauseScreen
        call Writestring
        pmenu:
            call readKey
            jz pmenu
            cmp al,"r"
            je resumeGame
            jmp pmenu
    resumeGame:
        call clrscr
        cmp level,1
        jne rg2
        call drawBoardL1
        jmp rg4
        rg2:
        cmp level,2
        jne rg3
        call drawBoardL2
        jmp rg4
        rg3:
        call drawBoardL3
        jmp rg4

        rg4:
        call drawPlayer
        jmp handleInput

    endGame:
        dec lives
        cmp lives,0
        ja PlayGame

;file handling to update leaderboard 

   updateProgress:
    ;update current progress
        
	mov eax,score
	cmp currentPlayer.score,eax           ;replace if highest score of session
	jge updatedScores
	mov currentPlayer.score,eax
	mov al,level
	mov currentPlayer.level,al


    ;search for username if need to update score in arr
	mov ebx,0
	movzx ecx,numPlayers
	cmp ecx,0
	je newPlayer
	mov esi,offset currentPlayer
	mov edi,offset players
	searchPlayer:
		strCmp:
			mov al,[esi]
			cmp al,0
			je foundPlayer
			cmp [edi],al
			jne nextPlayer
			inc esi
			inc edi
			jmp strCmp
		nextPlayer:
			inc ebx ;index
			mov eax,sizeof Player
			mul ebx
			add edi,eax
	loop searchPlayer
	jmp newPlayer
	foundPlayer:
		mov eax,sizeof Player
		mul ebx
		mov esi,offset players
		add esi,eax
		mov eax,[esi+score_offset]
		cmp eax,score
		jge updatedScores  ;player has scored a higher score in previous sessions, no update
		;overwrite level and score
		updateLvl:
			mov al,currentPlayer.level
			mov byte ptr[esi+level_offset],al
		updateScore:
			mov eax,currentPlayer.score
			mov dword ptr[esi+score_offset],eax
			jmp updatedScores
	newPlayer:
		mov eax,sizeof Player
		movzx ebx,numPlayers
		mul ebx
		mov esi,offset players
		add esi,eax
		mov edi,offset currentPlayer
		addName:
			mov ecx,username_size
			copyname:
				mov al,[edi]
				mov [esi],al
				inc esi
				inc edi
			loop copyname
		addLvl:
			mov al,currentPlayer.level
			mov byte ptr[esi],al
		addScore:
			inc esi 
			mov eax,currentPlayer.score
			mov dword ptr[esi],eax
			inc numPlayers

    updatedScores:
        ; sort
	    cmp numPlayers,1
	    jle noSort
	    call sortPlayers
    noSort:
        ;write to file from input buffer
	    movzx ecx,numPlayers
	    lea esi,players
	    lea edi,buffer
	    writePlayerData:   ;arr to buffer
		    mov ebx,ecx
		    mov ecx,record_size
		    rep movsb
		    mov ecx,ebx
	    loop writePlayerData

	    mov edx,offset file     ;buffer to file
	    call CreateOutputFile
	    mov handlef,eax
        mov ecx,sizeof Player
	    movzx eax,numPlayers
	    mul ecx
	    mov ecx,eax
	    mov eax,handlef
	    mov edx,offset buffer
	    call WriteToFile
        mov eax,handlef
        call CloseFile

    mov lives,1
    mov score,0
    cmp wonLevel,1
    je WinMenu
    jmp GameOverMenu


main endp


end main


; scoring
; 10 pts per ball
; chain reaction: 20 pts per ball, 30 pts per ball


