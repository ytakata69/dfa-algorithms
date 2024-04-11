#!/usr/bin/env runghc

-- A dummy sample program for Question 1 (1) of Homework 2b.
-- Input: a pair of a DFA M and a string w
-- Output: "Yes" if M accepts w. "No" otherwise.
--
-- Usage:
--   $ runghc adfa.hs < input_file
-- or
--   $ ghc adfa.hs
--   $ ./adfa < input_file

-- THIS IS A DUMMY:
-- This program always outputs "Yes".

import Control.Monad (replicateM)
import Control.Exception (assert)

main :: IO ()
main = do
    -- Read a DFA M
    [n, t, g] <- map read . words <$> getLine :: IO [Int]
    s <- getLine
    d <- replicateM n (map read . words <$> getLine) :: IO [[Int]]
    i <- read <$> getLine :: IO Int
    f <- map read . words <$> getLine :: IO [Int]

    -- Read a string w
    l <- read <$> getLine :: IO Int
    w <- getLine

    -- Assertions
    if (length s == t) &&
       (all (\x -> length x == t) d) &&
       (1 <= i && i <= n) &&
       (length f == g) &&
       (length w == l)
    then return () else error "Assertion error"

    -- Always output "Yes"
    putStr "Yes"
