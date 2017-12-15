;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname if) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (is-5 n)
  (= n 5))
(define (is-between-5-6-or-between-9-11 n)
  (or (and (> n 5) (<= n 6)) (and (>= n 9) (<= n 11))))
(define (in-interval-1? x)
(and (< -3 x) (< x 0)))
(define (in-interval-2? x)
(or (< x 1) (> x 2)))
(define (in-interval-3? x)
(not (and (<= 1 x) (<= x 5))))

;; equation1 : number -> boolean
;; 确定x是否是方程x2 + 2x + 1 = 0的解
(define (equation1 x)
  (= (+ (* x x) (+ ( * 2 x) 1)) 0))

(define (equation2 n)
  (cond
    [(< n 10) 20]
    [(> n 20) 0]
    [else 1]))

(define (equation3 n)
  (cond
    [(< n 10) 20]
    [(and (> n 20) (<= n 30)) 100]
    [else 1]))

;; equation4 : number -> number
;; 输入a b c 确定方程解的个数
(define (equation4 a b c)
  (cond
    [(> (* b b) (* 4 (* a c))) 2]
    [(= (* b b) (* 4 (* a c))) 1]
    [(< (* b b) (* 4 (* a c))) 0]))