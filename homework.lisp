"TODO: INPUT VALIDATION"
(defun add-1-all (L)
"returns the list L of integers with every element increased by one.
 If the argument is other than a list of integers, return nil"
  (cond((endP L) nil)
       (t(cons (+ 1 (first L)) (add-1-all (rest L)))))
"
(defun my-replace (e1 e2 L)
  (cond((endP L) nil)
       (t(cons 
	  (cond((not (equal (first L) e1)) e1)
	       ((equal (first L) e1)) e2)
	  (t (nil))) rest L)))
"
(defun my-replace (e1 e2 L)
  (cond
    ;;if at the end of list, terminiate
    ((null L) nil)
    ;;if the first L is e1, cons e2 & rest L
    ((equal (car L) e1)
     (cons e2 (my-replace e1 e2 (cdr L))))
    ;;else cons e1 & rest L
    (t
     (cons (car L) (my-replace e1 e2 (cdr L))))))
