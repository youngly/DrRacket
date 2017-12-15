;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname increment) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; 创建movie结构体
(define-struct movie (title producer))

;; increment-sales : star -> star
;; 将star的销量增加20000
(define-struct star (last first instrument sales))
(define (increment-sales a-star)
  (make-star (star-last a-star) (star-first a-star)
             (star-instrument a-star) ( + (star-sales a-star) 20000)))