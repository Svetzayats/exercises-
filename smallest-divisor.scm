(define (smallest-divisor n)
    (cond 
        ((= (remainder n 2) 0) 2)
        ((= (remainder n 3) 0) 3)
        ((= (remainder n 5) 0) 5)
        (else (find-divisor n 7 (sqrt n)))
    )
)

(define (find-divisor n divisor limit)
    (if (> divisor limit) n 
        (if (= (remainder n divisor) 0) divisor 
        (find-divisor n (+ divisor 2) limit)
        )
    )
)

(define (sqrt x) (sqrt-iter 1.0 x))

(define (sqrt-iter y x)
    (if (good-enough? y x) y
    (sqrt-iter (improve y x) x))
)

(define (improve y x) (average y (/ x y)))

(define (average x y) (/ (+ x y) 2))

(define (good-enough? y x) (< (abs (- (sqr y) x)) 0.001))

(define (sqr x) (* x x))
