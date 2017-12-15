;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname draw) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(require htdp/draw) 
(define (open x y)
  (start x y))

(define (draw-line)
  (draw-solid-line (make-posn 100 100) (make-posn 300 300) 'red))

(define (draw-rect)
  (draw-solid-rect (make-posn 100 100) 50 200 'blue))

(define (draw-circle-test)
  (draw-circle (make-posn 200 200) 50 'red))

(define (draw-disk)
  (draw-solid-disk (make-posn 200 10) 50 'green))

(define (close)
  (stop))