#lang plai
; Inciso a)
(cons (+ 1 3) (cons (+ 5 6) (cons (- 3 2) empty)))

; Inciso b)
(list (+ 1 3) (+ 5 6) (- 3 2))

; Inciso c)
'((+ 1 3) (+ 5 6) (- 3 2))

; Inciso d)
(define a 0) 
(define xs '(10 20 30)) 
(cons a xs)