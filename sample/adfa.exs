#!/usr/bin/env elixir

# A dummy sample program for Question 1 (1) of Homework 2b.
# Input: a pair of a DFA M and a string w
# Output: "Yes" if M accepts w. "No" otherwise.
#
# Usage:
#   $ elixir adfa.exs < input_file
#
# (If you want to compile this code with elixirc, you have to
# remove the line `Main.main` at the bottom before compiling.)

# THIS IS A DUMMY:
# This program always outputs "Yes".

defmodule Main do
  def main do
    # Read a DFA M
    [n, t, g] = IO.read(:line) |> split_into_ints()
    s = IO.read(:line) |> String.trim

    d = for _ <- 1..n do
          IO.read(:line) |> split_into_ints()
        end
    i = IO.read(:line) |> String.trim |> String.to_integer
    f = IO.read(:line) |> split_into_ints()

    # Read a string w
    l = IO.read(:line) |> String.trim |> String.to_integer
    w = IO.read(:line) |> String.trim

    # Assertions
    ^t = String.length(s)
    true = Enum.all?(Enum.map(d, &(length(&1) == t)))
    true = (1 <= i and i <= n)
    ^g = length(f)
    ^l = String.length(w)

    # Always output "Yes"
    IO.puts("Yes")
  end

  def split_into_ints(str) do
    str |> String.split |> Enum.map(&String.to_integer/1)
  end
end

Main.main
