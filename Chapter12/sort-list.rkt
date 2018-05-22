;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname sort-list) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; sort : numbers-list -> numbers-list(sorted)
;; 使用表alon的所有元素，创建有序表
(define (sort-list alon)
  (cond
    [(empty? alon) empty]
    [else (insert (first alon) (sort-list (rest alon)))]))

;; insert number numbers-list(sorted) -> numbers-list(sorted)
;; 使用n和表alon中的元素，创建降序排列的表
;; alon 是有序表
(define (insert n alon)
  (cond
    [(empty? alon) (cons n empty)]
    [else (cond
            [(>= n (first alon)) (cons n alon)]
            [else (cons (first alon) (insert n (rest alon)))])]))