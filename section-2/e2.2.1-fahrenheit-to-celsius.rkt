;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname e2.2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Consumes a temperature measured in Fahrenheit and produces the Celsius equivalent.

(define (fahrenheit->celsius x)
  (* x x))

(fahrenheit->celsius 5)

