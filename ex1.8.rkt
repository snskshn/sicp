;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex1.8) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (my-cube x)
  (cube-iter (/ 3.0 2.0) x))

(define (cube-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-iter (improve guess x)
                 x)))

(define (improve guess x)
  ; http://www.mathpath.org/Algor/cuberoot/cube.root.newton.htm
  (/ (+ (* 2 guess) (/ x (square guess))) 3))

(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess)) 0.001))

(define (square x) (* x x))