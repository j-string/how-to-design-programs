;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname e9.5.6-delta) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; CONTRACT
;; delta : a-list b-list -> number


;; PURPOSE
;; consumes two price lists and outputs the difference in value
;(define (delta before-list after-list) ... )

;; EXAMPLES
;(= 0 (delta empty empty))
;(= 0 (delta (cons 1 empty) (cons 1 empty)))
;(= 1 (delta (cons 0 empty) (cons 1 empty)))
;(= -1 (delta (cons 1 empty) (cons 0 empty)))
;(= 1 (delta empty (cons 1 empty)))
;(= -1 (delta (cons 1 empty) empty))
   

;; DATA DEFINITION


;; TEMPLATE
;(define (delta before-list after-list)
;  (cond
;    [(and (empty? before-list) (empty? after-list)) ... ]
;    [(empty? before-list) ... (first after-list) ... (rest after-list) ... ]
;    [(empty? after-list) ... (first before-list) ... (rest before-list) ... ]
;    [else ... (first before-list) ... (rest before-list) ... (first after-list) ... (rest after-list) ... ]
;    ))


;; DEFINITION
(define (delta before-list after-list)
  (cond
    [(and (empty? before-list) (empty? after-list)) 0]
    [(empty? before-list) (+ (first after-list) (delta empty (rest after-list))) ]
    [(empty? after-list) (- (delta (rest before-list) empty) (first before-list)) ]
    [else (+
           (- (first after-list) (first before-list))
           (delta (rest before-list) (rest after-list)))
          ]
    ))
                                                           

;; TESTS
(= 0 (delta empty empty))
(= 0 (delta (cons 1 empty) (cons 1 empty)))
(= 1 (delta (cons 0 empty) (cons 1 empty)))
(= -1 (delta (cons 1 empty) (cons 0 empty)))
(= 1 (delta empty (cons 1 empty)))
(= -1 (delta (cons 1 empty) empty))
(= 3.4 (delta (cons 2.2 (cons 3.3 (cons 1.1 empty))) (cons 10 empty)))
(= -3.4 (delta (cons 10 empty) (cons 2.2 (cons 3.3 (cons 1.1 empty)))))

