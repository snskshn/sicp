;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex1.10) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

;(A 1 10)
;(A 2 4)
;(A 3 3)

; (f, n) = 2 * n
(define (f n) (A 0 n))

; (g, n) = 2 ^ n
(define (g n) (A 1 n))

; (h, n) = 2 ^ 2 ^ n
(define (h n) (A 2 n))

; (k, n) = 5 * n ^ 2
(define (k n) (* 5 n n))


;(require racket/trace)
;(trace A)
