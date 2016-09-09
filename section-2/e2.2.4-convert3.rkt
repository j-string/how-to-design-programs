;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname e2.2.4-convert3) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
; Consumes three digits, starting with the least significant digit, followed by the next most significant one, and so on.  The program produces the corresponding number.

(define (convert3 x y z)
  (+ x (* y 10) (* z 100) ))
