;; From https://github.com/dreal/dreal4/issues/200
(set-logic QF_NRA)
(set-option :worklist-fixpoint true)
(declare-const r31415926 Real)
(declare-const r31415927 Real)
(push 1)
(check-sat)
(pop 1)
(assert (not (< r31415926 r31415927)))
(check-sat)
(declare-const r4 Real)
(push 1)
(assert false)
(check-sat)
(check-sat)
(pop 1)
(assert (or (= (+ r4 23531254.0) 0.0) (not (< r31415926 r31415927))))
(check-sat)
