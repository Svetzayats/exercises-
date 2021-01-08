; рекурсивное решение
(define (recurs n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        ((= n 2) 2)
        (else (+ (+ (recurs (- n 1))
                 (recurs (- n 2))) (recurs (- n 3)))
            )
    )
)

; итеративное решение 
(define (iterat n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        ((= n 2) 2)
        (else (step n 3 3))
    )
)

(define (step n result counter) 
    (if (= n counter) result 
        (step n (+ result 3) (+ counter 1))
    )
)
