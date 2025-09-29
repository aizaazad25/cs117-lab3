section .data
    msg_sum     db "Sum = ",0
    msg_prod    db "Product = ",0
    newline     db 10,0

section .bss
    sumchar     resb 1
    prodchar    resb 1

section .text
    global _start

_start:
    ; load numbers
    mov eax, 2
    mov ebx, 3

    ; compute sum = eax+ebx -> ecx
    mov ecx, eax
    add ecx, ebx

    ; compute product = eax*ebx -> edx
    mov edx, eax
    imul edx, ebx

    ; convert sum to ASCII
    add cl, '0'
    mov [sumchar], cl

    ; convert product to ASCII
    add dl, '0'
    mov [prodchar], dl

    ; --- print "Sum = " ---
    mov eax, 4
    mov ebx, 1
    mov ecx, msg_sum
    mov edx, 6          ; length "Sum = "
    int 0x80

    ; print sum digit
    mov eax, 4
    mov ebx, 1
    mov ecx, sumchar
    mov edx, 1
    int 0x80

    ; newline
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80

    ; --- print "Product = " ---
    mov eax, 4
    mov ebx, 1
    mov ecx, msg_prod
    mov edx, 10         ; length "Product = "
    int 0x80

    ; print product digit
    mov eax, 4
    mov ebx, 1
    mov ecx, prodchar
    mov edx, 1
    int 0x80

    ; newline
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80

    ; exit
    mov eax, 1
    xor ebx, ebx
    int 0x80