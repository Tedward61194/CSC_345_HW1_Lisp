"TODO: INPUT VALIDATION"
(defun add-1-all (L)
"returns the list L of integers with every element increased by one.
 If the argument is other than a list of integers, return nil"
  (cond((null L) nil)
       ((if (not (listP L)) nil))
       ((every 'integerp L)
       (cons (+ 1 (first L)) (add-1-all (rest L)))))))

(defun my-replace (e1 e2 L)
  (cond ((endP L) nil)
	((equal (first L) e1) (cons e2 (my-replace e1 e2 (rest L))))
	((listP (first L))(cons (my-replace e1 e2 (first L)) (my-replace e1 e2 (rest L))))
	(t (cons (first L) (my-replace e1 e2 (rest L))))))

