org 100h
; <	jl
; >	jg
; <=	jle
; >=	jge
; ==	je
; !=	jne   

; cin >> : mov ah, 01h
;          int 21h    

;mov ah,4Ch  = return 0;
;   int 21h
;         AX : AH AL
; AL,n => AX : AH n
; AH,0 => AX : 0  n ===> AX = n
; cx,ax ==> cx = ax = n
; xor : set phantu ve 0
mov al,n
mov ah,0
mov cx,ax
xor ax,ax

again:
    add ax,cx
    loop again
    
mov sum,ax

ret
  
n    db 100
sum dw  ?  
; AH : Gui lenh (ham int 21h)
; AL : nhap du lieu 8-bit (lay ki tu nhap)
; AX : Dung de tinh toan (16 bit)
