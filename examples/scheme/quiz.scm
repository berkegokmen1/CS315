(define (foo lst)
	(cond
		((not (list? lst)) lst)
		((null? lst) lst)
		(else 
			(let (
				(tail (cdr lst))
				(head (car lst))
				(tailr (foo (cdr lst)))
				(headr (foo (car lst)))
			)
			(append tailr (list headr)))
		)
	)
)