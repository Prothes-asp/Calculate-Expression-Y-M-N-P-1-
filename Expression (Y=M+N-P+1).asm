.MODEL SMALL
.STACK 100H
.DATA
M DB ?
N DB ?
P DB ?
MSG1 DB "ENTER M: $" 
MSG2 DB 10, 13, "ENTER N: $"
MSG3 DB 10, 13, "ENTER P: $"
MSG4 DB 10, 13, "M+N-P+1= $"

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    
    ;GETTING VALUE M
    MOV AH, 9
    LEA DX, MSG1
    INT 21H
    
    MOV AH, 1
    INT 21H
    SUB AL, 48
    MOV M, AL
    
    
    ;GETTIGN VALUE N
    MOV AH, 9
    LEA DX, MSG2
    INT 21H
    
    MOV AH, 1
    INT 21H
    SUB AL, 48
    MOV N, AL
    
    ;GETTING VALUE P
    MOV AH, 9
    LEA DX, MSG3
    INT 21H
    
    MOV AH, 1
    INT 21H
    SUB AL, 48
    MOV P, AL
    
    ;PRINTING EQUATION
    
    MOV AH, 9
    LEA DX, MSG4
    INT 21H 
    
    ;M+N-P+1 
    MOV DL, M
    ADD DL, N
    SUB DL, P
    ADD DL, 1 
    
    ADD DL, 48
    MOV AH, 2
    INT 21H
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN
    