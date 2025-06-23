org 100h

jmp start

msg: db "Ban da nhap dung" , 0Ah, 24h 
msg1: db "Nhap vao 1 ki tu : ", 24h
endl: db , 0Ah,0Dh,24h
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
start:
    mov dx,msg1
    mov ah,09h
    int 21h 
    
    mov ah, 01h
    int 21h
    
    cmp al, '0'
    jl not_num
    
    cmp al, '9'
    jg not_num
    
    mov ah, 4Ch
    int 21h
    
not_num: 
    mov dx,endl
    mov ah,09h
    int 21h
    
    mov dx,msg
    mov ah, 09h
    int 21h
    
    mov ah,4Ch
    int 21h

ret    
; AH : Gui lenh (ham int 21h)
; AL : nhap du lieu 8-bit (lay ki tu nhap)
; AX : Dung de tinh toan (16 bit)
