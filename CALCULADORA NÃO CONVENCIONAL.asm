;---------------------------------------------------
; Programa: CALCULADORA NÃO CONVENCIONAL. 
; Autor: MARIA CLARA TAVARES GABRIEL.
; Data: 29/05/2025.
; === MEU PRIMEIRO CÓDIGO NA LINGUAGEM ASSEMBLY ===
;---------------------------------------------------
;=================== SOMA ==================
            LDA NUM1       ; SOMA: Carrega NUM1
            ADD NUM2       ; Soma NUM2
            STA RESULT_SOMA
            LDA RESULT_SOMA
            OUT            ; Mostra resultado
;================== SUBTRAÇÃO ===============
            LDA NUM1       ; SUBTRAÇÃO: Carrega NUM1
            SUB NUM2       ; Subtrai NUM2
            STA RESULT_SUB
            LDA RESULT_SUB
            OUT            ; Mostra resultado
;================== CONDICIONAL: QUAL MAIOR NÚMERO ? ================ 
            LDA NUM1       ; COMPARAÇÃO: Carrega NUM1
            SUB NUM2       ; Subtrai NUM2
            JN NUM2_MAIOR  ; Se negativo, NUM2 > NUM1
            LDA NUM1       ; Senão, NUM1 >= NUM2( Mesma lógica do portugol)
            OUT
            HLT

NUM2_MAIOR: LDA NUM2
            OUT
            HLT

; ====== VALORES DA VARIÁVEL ======
NUM1:       DB 8
NUM2:       DB 6
RESULT_SOMA: DB 0
RESULT_SUB:  DB 0

            END 