;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname e11.2.2-tabulate-f) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; CONTRACT
;; f : number -> number

;; PURPOSE
;; function to tabulate

;; EXAMPLES


;; DATA DEFINITION


;; TEMPLATE


;; DEFINITION
(define (f x)
  (+
   (* 3 (* x x))
   (+ (* -6 x) -1)
   )
  )

;; TESTS
(= -1 (f 0))
(= -4 (f 1))
(= -1 (f 2))
(= 8 (f 3))
(= 23 (f 4))



;; CONTRACT
;; tabulate-f : number -> posn


;; PURPOSE
;; create a list of posn's containing n and f(n)


;; EXAMPLES


;; DATA DEFINITION


;; TEMPLATE


;; DEFINITION
(define (tabulate-f n)
  (cond
    [(= n 0) (cons (make-posn n (f n)) empty)]
    [else (cons (make-posn n (f n)) (tabulate-f (- n 1)))]
    )
  )

;; TESTS
(equal? (cons (make-posn 0 -1) empty) (tabulate-f 0))
(equal? (cons (make-posn 1 -4) (cons (make-posn 0 -1) empty)) (tabulate-f 1))
(equal? (cons (make-posn 2 -1) (cons (make-posn 1 -4) (cons (make-posn 0 -1) empty))) (tabulate-f 2))
(equal? (cons (make-posn 3 8) (cons (make-posn 2 -1) (cons (make-posn 1 -4) (cons (make-posn 0 -1) empty)))) (tabulate-f 3))
(equal? (cons (make-posn 4 23) (cons (make-posn 3 8) (cons (make-posn 2 -1) (cons (make-posn 1 -4) (cons (make-posn 0 -1) empty))))) (tabulate-f 4))
