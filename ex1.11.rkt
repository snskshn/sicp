;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex1.11) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define (f n)
  (if (< n 3) n
      (+ (f (- n 1))
         (* 2 (f (- n 2)))
         (* 3 (f (- n 3))))))

(define (f2 n)
  (local [(define (f2-iter a b c i n)
           (cond ((< n 3) n)
                 ((> i n) c)
                 (else (f2-iter b c (+ c (* 2 b) (* 3 a)) (+ i 1) n))))]
    (f2-iter 0 1 2 3 n)))
;; a = f(n - 2), b = f(n - 1), c = f(n)
