org 100

data db 'Hello World.', 0

vowel_count db 0

start:
    mov si, offset data
    mov cl, 0          ; vowels count in cl

check_loop:
    mov al, [si]
    cmp al, 0
    je done

    ; convert uppercase to lowercase if needed
    
    cmp al, 'A'
    jb check_char
    cmp al, 'Z'
    ja check_char
    add al, 32         ; for making lowercase

check_char:
    cmp al, 'a'
    je inc_vowel
    cmp al, 'e'
    je inc_vowel
    cmp al, 'i'
    je inc_vowel
    cmp al, 'o'
    je inc_vowel
    cmp al, 'u'
    je inc_vowel

next_char:
    inc si
    jmp check_loop

inc_vowel:
    inc cl
    jmp next_char

done:
    mov [vowel_count], cl

    mov ah,4Ch
    int 21h
