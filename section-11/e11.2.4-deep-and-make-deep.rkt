;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname e11.2.4-deep-and-make-deep) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; DATA DEFINITION
;; A deep-list is either 1) s where s is some symbol or 2) (cons dl empty), where dl is a deep list.


;; CONTRACT
;; depth : deep-list -> number


;; PURPOSE
;; Consumes a deep list and determines how many times cons was used to construct it.
;(define (depth deep-list) ... )


;; EXAMPLES
;(= 0 (depth empty))
;(= 1 (depth (cons 1 empty)))
;(= 2 (depth (cons 2 (cons 1 empty))))
;(= 3 (depth (cons (cons 3 empty) (cons 1 empty))))


;; TEMPLATE
;(define (depth deep-list)
;  (cond
;    [(symbol? deep-list) ... ]
;    [else ... (depth (first deep-list)) ... (rest deep-list) ... ]
;    )
;  )


;; DEFINITION
(define (depth deep-list)
  (cond
    [(symbol? deep-list) 0 ]
    [else (+ 1 (depth (first deep-list)))]
    )
  )


;; TESTS
"TESTS"
"TEST1"
(= 1 (depth (cons 'bottom empty)))
"TEST2"
(= 4 (depth (cons (cons (cons (cons 'bottom empty) empty) empty) empty)))


;; DEFINITION
(define (make-deep n s)
  (cond
    [(= 0 n) s]
    [else (cons (make-deep (- n 1) s) empty)]
    )
  )


;; TESTS
"TESTS"
"TEST3"
(symbol=? 'bottom (make-deep 0 'bottom))
"TEST4"
(equal? (cons (cons (cons (cons 'bottom empty) empty) empty) empty) (make-deep 4 'bottom))


