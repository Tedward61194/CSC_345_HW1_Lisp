"
 * Name: Edward Segal
 * Date: Oct. 4, 2016
 * Assignment: CSC_345: Homework 1
"
(defun add-1-all (L)
"returns the list L of integers with every element increased by one.
 If the argument is other than a list of integers, return nil"
  (cond((null L) nil)
       ;;if not a list, return nil
       ((if (not (listP L)) nil))
       ;;reutrn nil if not every element in L is an int
       ((every 'integerp L)
       ;;cdr through list adding 1 to the current first element
       (cons (+ 1 (first L)) (add-1-all (rest L)))))))

(defun my-replace (e1 e2 L)
"returns the list L with all occurrences of element e1 replaced, at
 all levels within the list, with the element e2. The replacement should
 proceed even if the elements are themselves lists; that is, do a deep replace.
 You do not need to handle the case where any of the arguments are defective."
  (cond ((endP L) nil)
	;;if if e1 == e2, return e2 and cdr down L
	((equal (first L) e1) (cons e2 (my-replace e1 e2 (rest L))))
	;;if firstL is a lisp, do deep recurstion
	((listP (first L))(cons (my-replace e1 e2 (first L)) (my-replace e1 e2 (rest L))))
	;;else return first and cdr down L
	(t (cons (first L) (my-replace e1 e2 (rest L))))))

(defun fibonacci (n)
"fibonacci the bad recursive way"
  (cond ((< n 2) n)
	;;itterate through the fibonacci sequence n times
	(t (+ (fibonacci (- n 1)) (fibonacci (- n 2))))))

(defun fibonacci-tr (n)
"fibonacci implemented using tail recursion"
  (labels ((fib-tr (n n1 n2)
	     (if (= n 0) n1
		 ;;fibonacci calculation
		 (fib-tr (- n 1) n2 (+ n1 n2)))))
    (fib-tr n 0 1)))
