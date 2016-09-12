#lang racket

;;how-many : number, number, number -> number

;;consumes the coefficients a, b, and c of a proper quadratic equation and determines how many solutions the equation has

;;(how-many 1 0 -1) should produce 2
;;(how-many 2 4 2) should produce 1
;;(how-many 2 1 2) should produce 0

(define (how-many a b c)
  (cond
    [(> (* b b) (* 4 a c))2]
    [(= (* b b) (* 4 a c))1]
    [(< (* b b) (* 4 a c))0]))

(= (how-many 1 0 -1) 2)
(= (how-many 2 4 2) 1)
(= (how-many 2 1 2) 0)
