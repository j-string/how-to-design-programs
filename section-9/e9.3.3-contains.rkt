;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname e9.3.3-contains) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; CONTRACT
;; contains? : symbol list-of-symbols -> boolean


;; PURPOSE
;; consumes a symbol and a list of symbols and determines if the symbol corrurs in the list of symbols


;; EXAMPLES
;(= (contains? 'THIS empty) false)
;(= (contains? 'THIS (cons 'THAT empty)) false)
;(= (contains? 'THIS (cons 'THIS empty)) true)
;(= (contains? 'THIS (cons 'THIS (cons 'THAT empty))) true)


;; DATA DEFINITION


;; TEMPLATE
;(define (contains? a-symbol a-list)
;  (cond
;    [(empty? a-list) ...]
;    [else (first a-list) ...
;          (contains? a-symbol (rest a-list)) ... ]))


;; DEFINITION
(define (contains? a-symbol a-list)
  (cond
    [(empty? a-list) false]
    [else
     (or
      (symbol=? a-symbol (first a-list))
      (contains? a-symbol (rest a-list)))
     ]
    )
  )
                                                           

;; TESTS
(not (contains? 'THIS empty))
(not (contains? 'THIS (cons 'THAT empty)))
(contains? 'THIS (cons 'THIS empty))
(contains? 'THIS (cons 'THIS (cons 'THAT empty)))

