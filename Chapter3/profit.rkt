;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname profit) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; profit : number -> number
;; 给定票价，收益是收入和支出之差
(define (profit ticket-price)
  (- (revenue ticket-price) (cost ticket-price)))

;; revenue : number -> number
;; 给定票价，计算收入
(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

;; cost : number -> number
;; 给定票价，计算支出
(define (cost ticket-price)
  (+ 180 (* (attendees ticket-price) 0.04)))

;; attendees : number -> number
;; 根据票价，计算观众数
(define (attendees ticket-price)
  (+ 120 (* (- 5 ticket-price) (/ 15 0.1))))

;; 定义一个常量
(define PI 3.1415926)
(define (area-of-disk x)
  (* PI (* x x)))