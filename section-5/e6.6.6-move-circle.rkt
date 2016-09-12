;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname e6.6.6-move-circle) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))

;; teachpack: draw.ss

;; DATA DEFINITION

;; A circle is characterized by three pieces of information: its center, its radius, and the color of its perimeter
;; where center is a posn,
;;      radius is a number,
;;      and color is a (color) symbol.
(define-struct circle (center radius color))

;; DATA EXAMPLES
(make-circle (make-posn 5 5) 5 'red)
(make-circle (make-posn 50 50) 10 'yellow)

#|
;; TEMPLATE
;; fun-for-circle : circle -> ???
(define (fun-for-circle a-circle)
  ... (circle-center a-circle) ...
  ... (circle-radius a-circle) ...
  ... (circle-color a-circle) ... )
|#


;; draw-a-circle : circle -> boolean
(define (draw-a-circle a-circle)
  (draw-circle (circle-center a-circle)
               (circle-radius a-circle)
               (circle-color a-circle) ))
  
  