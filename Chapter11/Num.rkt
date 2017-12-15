;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Num) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (hellos n)
  (cond
    [(zero? n) empty]
    [else (cons n (hellos (sub1 n)))]))

(define-struct point (x y))
(define (tabulate-f x)
  (cond
    [(zero? x) empty]
    [else (cons (make-point x (+ 1 x)) (tabulate-f (sub1 x)))]))