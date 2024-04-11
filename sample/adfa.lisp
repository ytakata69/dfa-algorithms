#!/usr/bin/env sbcl --script

; A dummy sample program for Question 1 (1) of Homework 2b.
; Input: a pair of a DFA M and a string w
; Output: "Yes" if M accepts w. "No" otherwise.

; Usage:
;   $ sbcl --script adfa.lisp < input_file

; THIS IS A DUMMY:
; This program always outputs "Yes".

(defun main ()
  (let* (
         ; Read a DFA M
         (nstate  (read))
         (nsymbol (read))
         (nfinal  (read))
         (symbols (read-line))
         (transition (loop repeat nstate collect
                       (loop repeat nsymbol collect (read))))
         (initial (read))
         (final   (loop repeat nfinal collect (read)))
         ; Read a string w
         (l (read))
         (w (read-line))
        )
    ; Assertions
    (if (and
          (= (length symbols) nsymbol)
          (every (lambda (di) (= (length di) nsymbol)) transition)
          (= (length final) nfinal)
          (= (length w) l))
        t (error "Assertion error"))
    ; Always output "Yes"
    (princ "Yes")
    (fresh-line)  ; new line
  ))

; Run the main function
(main)
