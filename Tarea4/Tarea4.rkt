#lang plai
;; Definir la funcion recursiva reemplaza que recibe dos sımbolos y una lista 
;; de simbolos y a su vez reemplaza las apariciones del primer simbolo en la 
;; lista por el segundo.
(define (reemplaza x y lista)
    (cond ((null? lista) '())
        ((eq? (car lista) x) (cons y (reemplaza x y (cdr lista))))
        (else (cons (car lista) (reemplaza x y (cdr lista))))))

;; Ejemplos con los cuales probar la funcion:

(reemplaza 'foo 'goo '(foo foo goo))
(reemplaza 'foo 'goo '())


;; Definir la funcion recursiva listoftype? que recibe un predicado y una lista 
;; y a su vez verifica que todos los elementos de la lista sean del tipo 
;; indicado por el predicado.

(define (listoftype? p lista)  
    (cond ((null? lista) #t)
        ((p (car lista)) (listoftype? p (cdr lista)))
        (else #f)))

;; Ejemplos con los cuales probar la funcion:

(listoftype? boolean? '(1 #f #t))
(listoftype? boolean? '())


;; Definir una estructura persona que sea representada mediante el nombre, edad, 
;; peso y estatura. Una vez que este definida la, define una funcion (imc p) que 
;; dada una persona calcule el indice de masa corporal de la misma.

(define-struct persona (nombre edad peso estatura))

(define (imc p)
    (/ (persona-peso p) (* (persona-estatura p) (persona-estatura p))))

;; Ejemplos con los cuales probar la funcion:
(define p1 (persona "Juan" 19 65.0 1.75))
(imc p1)