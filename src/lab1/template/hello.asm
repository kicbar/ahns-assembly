; hello.asm
section .data					
    msg	db      "witaj, świecie",0			
section .bss							
section .text							
    global main					
main:						 
    mov     rax, 1	; 1 = wypisz	
    mov     rdi, 1	; 1 = na stdout		
    mov     rsi, msg	; łańcuch do wyświetlenia w rsi
    mov     rdx, 15	; długość łańcucha, bez 0
    syscall		; wyświetl łańcuch
    mov     rax, 60	; 60 = wyjście	
    mov     rdi, 0	; 0 = wyjściowy kod sygnalizujący sukces	
    syscall		; zakończ
    
    
section .text
global _start

_start:
    ; Mnożenie 10 * 5
    mov rax, 10       ; Załaduj pierwszy argument (10) do rax
    mov rbx, 5        ; Załaduj drugi argument (5) do rbx
    mul rbx           ; Pomnóż zawartość rax przez zawartość rbx
