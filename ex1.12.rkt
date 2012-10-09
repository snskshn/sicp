;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex1.12) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define (pascal-tree n r)
  (if (or (= r 0) (= n r))
      1
      (+ (pascal-tree (- n 1) (- r 1))
         (pascal-tree (- n 1) r))))

(define (factorial n)
  (if (= n 1) 1 (* n (factorial (- n 1)))))
(define (combination n r)
  (if (= n r) 1 (/ (factorial n) (factorial (- n r)) (factorial r))))

(define (print-pascal-tree n)
  (print-pascal-tree-iter n 0 0))
(define (print-pascal-tree-iter n i j)
  (cond ((= j n) (void))
        ((< i j) (begin (newline) (print-pascal-tree-iter n (+ i 1) 0)))
        (else (begin (display (pascal-tree i j)) (display " ") (print-pascal-tree-iter n i (+ j 1))))))