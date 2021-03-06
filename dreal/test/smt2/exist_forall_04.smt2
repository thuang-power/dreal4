(set-logic QF_NRA)
;; sin(x + 1) * cos(y - 1) + cos(x)sin(x)
(declare-fun x1 () Real [0.0, 3.0])
(declare-fun y1 () Real [0.0, 3.0])
(declare-fun z () Real)
(assert
 (forall ((x2 Real [0.0, 3.0])
          (y2 Real [0.0, 3.0]))
         (>= z
          (+ (* (sin (+ x2 1))
                (cos (- y2 1)))
             (* (cos x2)
                (sin x2))))))
(assert (= z
           (+ (* (sin (+ x1 1))
                 (cos (- y1 1)))
              (* (cos x1)
        (sin x1)))))
(check-sat)
(exit)
