;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname distance) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (distance-to-0 pixel)
  (cond
    [(number? pixel) pixel]
    [(posn? pixel) (sqrt (+ (sqr (posn-x pixel)) (sqr (posn-y pixel))))]))