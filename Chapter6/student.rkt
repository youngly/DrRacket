;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname student) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; 定义student结构体， last first teacher 属于 symbol
(define-struct student (last first teacher))

;; subst-teacher : student symbol -> student
(define (subst-teacher student teacher)
  (cond
    [(symbol=? (student-teacher student) 'Jack)
     (make-student (student-last student) (student-first student) teacher)]
    [else student]))

;; check : student symbol -> symbol
(define (check student teacher)
  (cond
    [(symbol=? (student-teacher student) 'Harper) (student-last student)]
    [else 'none]))