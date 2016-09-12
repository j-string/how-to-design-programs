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
;(make-circle (make-posn 5 5) 5 'red)
;(make-circle (make-posn 50 50) 10 'yellow)

#|
;; TEMPLATE
;; fun-for-circle : circle -> ???
(define (fun-for-circle a-circle)
  ... (circle-center a-circle) ...
  ... (circle-radius a-circle) ...
  ... (circle-color a-circle) ... )
|#


;; draw-a-circle : circle -> true
(define (draw-a-circle a-circle)
  (draw-circle (circle-center a-circle)
               (circle-radius a-circle)
               (circle-color a-circle) ))

;; TESTS
;(start 300 300)
;(draw-a-circle (make-circle (make-posn 150 150) 50 'blue))


;; Consumes a circle and a position and determines if the pixel is inside the circle.
(define (in-circle? a-circle posn)
  (<= (sqrt
       (+
        (sqr (- (posn-x posn) (posn-x (circle-center a-circle))))
        (sqr (- (posn-y posn) (posn-y (circle-center a-circle))))))
      (circle-radius a-circle)))

;; TESTS
;(in-circle? (make-circle (make-posn 6 2) 1 'red) (make-posn 6 2))
;(not (in-circle? (make-circle (make-posn 6 2) 1 'red) (make-posn 8 6)))


;; translate-circle : circle -> circle
(define (translate-circle a-circle delta)
  (make-circle
   (make-posn
    (+ delta (posn-x (circle-center a-circle)))
    (posn-y (circle-center a-circle)))
   (circle-radius a-circle)
   (circle-color a-circle)))
  
  
;; TESTS
(= 13 (posn-x (circle-center (translate-circle (make-circle (make-posn 10 10) 5 'red) 3))))
(= 10 (posn-y (circle-center (translate-circle (make-circle (make-posn 10 10) 5 'red) 3))))
(= 5 (circle-radius (make-circle (make-posn 10 10) 5 'red)))
(symbol=? 'red (circle-color (make-circle (make-posn 10 10) 5 'red)))

  
  
;; clear-a-circle : circle -> true
(define (clear-a-circle a-circle)
  (clear-circle (circle-center a-circle)
                (circle-radius a-circle)))
  
;; EXAMPLES
;(start 100 100)
;(draw-a-circle (make-circle (make-posn 50 50) 25 'red))
;(clear-a-circle (make-circle (make-posn 50 50) 25 'red))
  
  
;; draw-and-clear-circle : circle -> true
(define (draw-and-clear a-circle)
  (and (draw-a-circle a-circle)
       (sleep-for-a-while 1)
       (clear-a-circle a-circle) ))
  
;; EXAMPLES
;(start 100 100)
;(draw-and-clear-circle (make-circle (make-posn 50 50) 25 'red))
  
  
;; move-circle : circle -> circle
(define (move-circle delta a-circle)
  (cond
    [(draw-and-clear a-circle) (translate-circle a-circle delta) ]
    [else a-circle]))
  
;; EXAMPLES
(start 500 100)
(draw-a-circle
 (move-circle 10
  (move-circle 10
   (move-circle 10
    (move-circle 10
     (move-circle 10
      (move-circle 10
       (move-circle 10
        (move-circle 10
         (move-circle 10
          (make-circle (make-posn 20 20) 10 'red)))))))))))
  
  