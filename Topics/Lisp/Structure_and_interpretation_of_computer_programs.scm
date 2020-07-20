; Exercise 1.3
(define (sqrt x) (* x x))

(define (sum-of-two-larger-sqrts x y z)
    (if (and (< x y) (< x z) (+ (sqrt y) (sqrt z)))
        (and (< y x) (< y z) (+ (sqrt x) (sqrt z)))
        (and (< z x) (< z y) (+ (sqrt x) (sqrt z)))
    )
)

(sum-of-two-larger-sqrts 1 2 3)