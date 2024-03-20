section .data
    msg db "Input value: ", 0
    len equ $ - msg
    buffer db 16 ; Bufor na wprowadzoną wartość

section .text
    global _start

_start:
    ; Wyświetlenie komunikatu
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, len
    syscall

    ; Odczytanie wartości od użytkownika
    mov rax, 0       ; syscall read (nr 0)
    mov rdi, 0       ; Deskryptor pliku (STDIN)
    mov rsi, buffer  ; Wskaźnik do bufora danych
    mov rdx, 16      ; Maksymalna liczba bajtów do odczytu
    syscall

    ; Wyświetlenie pobranej wartości
    mov rax, 1
    mov rdi, 1
    mov rsi, buffer
    mov rdx, 16      ; Maksymalna liczba bajtów do wyswietlenia    
    syscall

    ; Zakończenie programu
    mov rax, 60      ; syscall exit (nr 60)
    xor edi, edi     ; Kod wyjścia 0
    syscall
