# Test data

## Directories

* `01` - test data on alphabet "01"
    * `dfa` - descriptions of sample DFAs
    * `w` - descriptions of sample strings
* `ab` - test data on alphabet "ab"
    * `dfa` - descriptions of sample DFAs
    * `w` - descriptions of sample strings
* `results` - test results
* `runner` - shell scripts to run tests

## Using the runner scripts

For Question 1 (1) of Homework 2b:

1. Put your program in some directory.
   Your program should be an executable file.
2. Change directory to `runner`.
3. Run `./P1.sh` path/to/program where path/to/program is
   the file path to your program to be tested.
   Instead of a file path, a command (quoted by single quotation marks)
   can also be used; e.g., `./P1.sh 'java Hoge'`.
4. Check whether the output of Step 3 is the same as `results/P1.ans`.
   Of course, you can use the `diff` command for this check.

The runner script assumes that:

* Your program reads the input from the standard input and
  requires no other input or arguments.
* Your program only outputs either `Yes` or `No` followed
  by a newline to the standard output.

For other problems, use:

* `P2.sh` for Question 1 (2), (3), and (4)-7 (The input is a single DFA.)
* `P4.sh` for Question 1 (4)-4 and (4)-5 (The input is a DFA over {0,1}.)
* `P6.sh` for Question 1 (4)-6 (The input is a pair of DFAs.)
