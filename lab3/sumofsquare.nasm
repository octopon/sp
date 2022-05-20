global sumofsquare

section .text
sumofsquare:
    push ebp
    mov ebp, esp
    sub esp, 4             ; объявляем локальную переменную

    mov edi, [ebp+8]       ; адрес массива
    mov ecx, [ebp+12]      ; количество элементов
    mov DWORD [ebp-4], 0
.lp:
    mov eax, [edi]
    mul DWORD [edi]
    add DWORD [ebp-4], eax ; сохраняем результат в локальной переменной
    add edi, 4             ; переходим к следующему элементу в массиве
    loop .lp

    mov eax, DWORD [ebp-4] ; сохраняем результат из локальной переменной
    add esp, 4             ; удаляем локальную переменную

    mov esp, ebp
    pop ebp
    ret
