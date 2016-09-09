;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname e3.1-movie-theater-profit) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;;attendees : number -> number
;;to compute the number of attendees, given ticket-price
;;example: (attendees 5) should produce 120
;;example: (attendees 4.9) should produce 135
;;example: (attendees 4) should produce 270
;;example: (attendees 3) should produce 420
(define (attendees ticket-price)
  (+ 120 (* -150 (- ticket-price 5))))

(attendees 5)
(attendees 4.9)
(attendees 4)
(attendees 3)

;;revenue : number -> number
;;to compute the revenue, given ticket-price
;;example : (revenue 5) should produce 600
;;example : (revenue 4) should produce 1080
;;example : (revenue 3) should produce 1260
(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(revenue 5)
(revenue 4)
(revenue 3)

;;costs : number -> number
;;to compute the costs, given ticket-price
;;example : (costs 5) should produce 184.8
;;example : (costs 4) should produce 190.8
;;example : (costs 3) should produce 196.8
(define (costs ticket-price)
  (+ 180 (* 0.04 (attendees ticket-price))))

(costs 5)
(costs 4)
(costs 3)

;;profit : number -> number
;;to compute the profit as the difference between revenue and costs at some given ticket-price
;;example : (profit 5) should produce 415.2
;;example : (profit 4) should produce 889.2
;;example : (profit 3) should produce 1063.2
(define (profit ticket-price)
  (- (revenue ticket-price) (costs ticket-price)))

(profit 5)
(profit 4)
(profit 3)

;;costs2 : number -> number
;;to compute the costs, given ticket-price
;;example : (costs2 5) should produce 180
;;example : (costs2 4) should produce 405
;;example : (costs2 3) should produce 630
(define (costs2 ticket-price)
  (* 1.50 (attendees ticket-price)))

(costs2 5)
(costs2 4)
(costs2 3)

;;profit2 : number -> number
;;to compute the profit as the difference between revenue and costs at some given ticket-price
;;example : (profit2 5) should produce 420
;;example : (profit2 4) should produce 675
;;example : (profit2 3) should produce 630
(define (profit2 ticket-price)
  (- (revenue ticket-price) (costs2 ticket-price)))

(profit2 5)
(profit2 4)
(profit2 3)


