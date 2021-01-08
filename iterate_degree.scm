; вызываем с изначальным res = 1, целыми и положительными значениями 
; (upDegree 2 3 1)
(define (upDegree value degree res)
    (if (= degree 0) res 
        (if (even? degree) 
            (upDegree (* value value) (/ degree 2) res)
            (upDegree value (- degree 1) (* res value))
        )
    )
)

(define (even? n)
    (= (remainder n 2) 0)
)
