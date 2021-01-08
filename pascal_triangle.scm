(define (makePascalTriangle n counter) 
    (if (> counter n) (print "All!") 
        (begin 
            (makeRow counter 1)
            (makePascalTriangle n (+ counter 1))
        )
    )
)

; TODO: сделать вывод строки в строку, сейчас печатает все время на новой строке
(define (makeRow level counter) 
    (if (> counter level) (newline) 
        (begin 
            (print (makeNumber level counter))
            (makeRow level (+ counter 1))
        )
    )
)

(define (makeNumber n p) 
    (if (or (= n 1) (isEdge p n)) 
        1
        (+ (makeNumber (- n 1) (- p 1)) (makeNumber (- n 1) p))
    )
)

(define (isEdge position level) 
    (if (or (= position 1) (= position level)) #t #f)
)
