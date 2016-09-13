;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname e9.5.5-convert) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; CONTRACT
;; convert : list-of-digits -> number


;; PURPOSE
;; consumes a list of n digits starting with the least significant digit and produces the corresponding number
;(define (convert list-of-digits) ... ))

;; EXAMPLES
;(= 0 (convert empty))
;(= 1 (convert (cons 1 empty)))
;(= 21 (convert (cons 1 (cons 2 empty))))
;(= 321 (convert (cons 1 (cons 2 (cons 3 empty)))))


;; DATA DEFINITION


;; TEMPLATE
;(define (convert list-of-digits)
;  (cond
;    [(empty? list-of-digits) ... ]
;    [else (first list-of-digits) ...
;          (convert (rest list-of-digits)) ... ]
;    )
;  )


;; DEFINITION
(define (convert list-of-digits)
  (cond
    [(empty? list-of-digits) 0]
    [else (+ (first list-of-digits)
             (* (convert (rest list-of-digits)) 10)
             )
          ]
    )
  )


;; TESTS
(= 0 (convert empty))
(= 1 (convert (cons 1 empty)))
(= 21 (convert (cons 1 (cons 2 empty))))
(= 321 (convert (cons 1 (cons 2 (cons 3 empty)))))
(= 654321 (convert (cons 1 (cons 2 (cons 3 (cons 4 (cons 5 (cons 6 empty))))))))
