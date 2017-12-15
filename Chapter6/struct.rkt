;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname struct) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (f a b)
  (make-posn a b))

;; distance-to-0 : make-posn -> number
;; 计算坐标系中任意一点到远点的距离
(define (distance-to-0 a-posn)
  (sqrt (+ (sqr (posn-x a-posn)) (sqr (posn-y a-posn)))))

(define (open x y)
  (draw-solid-line (make-posn 1 1) (make-posn 5 5) 'red))