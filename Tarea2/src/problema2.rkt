#lang plai
;inciso 1
(define miMusica (list "Information High" "Sin Frenos" "Tu y yo" "Asi soy" "Muchacha"))
;inciso 2
(empty? miMusica)
;inciso 3
(length miMusica)
;inciso 4
(car miMusica)
;inciso 5
(define misPeliculas (cons "Commando" (cons "El demoledor" (cons "Terminator" (cons "Cobra" (cons "Volver al futuro" empty))))))
;inciso 6
(define dosListas (append miMusica misPeliculas))
;inciso 7
(define (removeIndex i lista)
  (append (take lista (- i 1)) (drop lista i)))

(removeIndex 2 miMusica)
(removeIndex 3 misPeliculas)
(removeIndex 4 dosListas)
