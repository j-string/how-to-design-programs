;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname e9.5.7-average-price) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; CONTRACT
;; average-price : list-of-prices -> number
;(define (average-price list-of-prices) ... )

;; PURPOSE
;; consumes a list of prices and computes the average


;; EXAMPLES
;(= 0 (average-price empty))
;(= 0 (average-price (cons 0 empty)))
;(= 1 (average-price (cons 1 empty)))
;(= 2.5 (average-price (cons 2.5 empty)))
;(= 125 (average-price (const 200 (cons 50 empty))))


;; DATA DEFINITION


;; TEMPLATE
;(define (list-sum a-list)
;  (cond
;    [(empty? a-list) ... ]
;    [else ... (first a-list) ... (list-sum (rest a-list)) ... ]
;    )
;  )
;(define (list-length a-list)
;  (cond
;    [(empty? a-list) ... ]
;    [else ... (first a-list) ... (list-length (rest a-list)) ... ]
;    )
;  )
;(define (average-price list-of-prices)
;  (cond
;    [(empty? list-of-prices) 0]
;    [else ... (list-sum list-of-prices) ... (list-length list-of-prices) ... ]
;    )
;  )


;; DEFINITION
(define (list-sum a-list)
  (cond
    [(empty? a-list) 0]
    [else (+ (first a-list) (list-sum (rest a-list)))]
    )
  )
(define (list-length a-list)
  (cond
    [(empty? a-list) 0]
    [else (+ 1 (list-length (rest a-list)))]
    )
  )
(define (average-price list-of-prices)
  (cond
    [(empty? list-of-prices) 0]
    [else (/ (list-sum list-of-prices) (list-length list-of-prices))]
    )
  )
                                                           

;; TESTS
(= 0 (average-price empty))
(= 0 (average-price (cons 0 empty)))
(= 1 (average-price (cons 1 empty)))
(= 2.5 (average-price (cons 2.5 empty)))
(= 125 (average-price (cons 200 (cons 50 empty))))

