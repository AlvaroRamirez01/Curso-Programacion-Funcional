#lang plai

;; Definir el predicado decremental? que dados cuatro números indica si se encuentran ordenados de forma decremental.
(define (decremental? a b c d) 
    (and (>= a b) (>= b c) (>= c d)))

;ejemplos con cuales probar funcionalidad
(decremental? 1 2 3 4)
(decremental? 4 3 2 1)
(decremental? 10 8 11 0)

;; Definir el predicado pares? que dada una lista de números enteros indica si todos los elementos de la lista son pares.
(define (pares? lista)
    (cond [(null? lista) #f]
        [(null? (cdr lista)) (even? (car lista))]
        [(even? (car lista)) (pares? (cdr lista))]
        [else #f]))

;ejemplos con cuales probar funcionalidad
(pares? '())
(pares? '(1 2))
(pares? '(2 4 6))

;; Definir la función multiplica que dada una lista, multiplica todos los elementos contenidos en la misma.
(define (multiplica lista)
    (cond [(null? lista) 1]
        [else (* (car lista) (multiplica (cdr lista)))]))

;ejemplos con cuales probar funcionalidad
(multiplica '())
(multiplica '(1 2))
(multiplica '(10 5 20))

;; Definir la función recursiva (entierra s n) que dado un símbolo lo entierra n número de veces. Es decir, se deberán anidar 
;; n−1 listas hasta que se llegue a la lista que tiene como único elemento al símbolo correspondiente.
(define (entierra s n)
    (cond [(= n 0) s]
        [(= n 1) (list s)]
        [else (list (entierra s (- n 1)))]))

;ejemplos con cuales probar funcionalidad
(entierra 'foo 0)
(entierra 'foo 2)
(entierra 'foo 5)
(entierra 'foo 10)
