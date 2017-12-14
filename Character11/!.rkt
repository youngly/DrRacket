;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname !) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; ! : N -> N
;; 计算 n · (n - 1) · ... · 2 · 1
(define (! n)
  (cond
    [(zero? n) 1]
    [else (* n (! (sub1 n)))]))

;; product-from-20: N [>= 20] -> N
;; 计算 n · (n - 1) · ... · 21 · 1
(define (product-from-20 n-above-20)
  (cond
    [(= n-above-20 20) 1]
    [else (* n-above-20 (product-from-20 (sub1 n-above-20)))]))

;; product: N[limit] N[>= limit] -> N
;; 计算 n · (n - 1) · ... · (limit + 1) · 1
(define (product limit n)
  (cond
    [(= n limit) 1]
    [else (* n (product limit (sub1 n)))]))