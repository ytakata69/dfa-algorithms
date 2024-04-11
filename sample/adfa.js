#!/usr/bin/env node
/**
 * A dummy sample program for Question 1 (1) of Homework 2b.
 * Input: a pair of a DFA M and a string w
 * Output: "Yes" if M accepts w. "No" otherwise.
 *
 * Usage:
 *   $ node adfa.js < input_file
 *
 * THIS IS A DUMMY:
 * This program always outputs "Yes".
 */

'use strict';
const readline = require('readline');
const assert = require('assert');

// Parse the inputs
function parseInput(lines) {
  let ln = 0;  // line number

  // Read a DFA M
  let [n, t, g] = lines[ln++].split(/\s/).map(Number);
  let s = lines[ln++];
  let d = [];
  for (let i = 0; i < n; i++) {
    d.push(lines[ln++].split(/\s/).map(Number));
  }
  let I = Number(lines[ln++]);
  let F = lines[ln++].split(/\s/).map(Number);

  // Read a string w
  let l = Number(lines[ln++]);
  let w = lines[ln++];

  // Assertions
  assert(s.length == t);
  for (let i = 0; i < n; i++) {
    assert(d[i].length == t);
  }
  assert(F.length == g);
  assert(w.length == l);

  return [{
    nstate: n,
    nsymbol: t,
    nfinal: g,
    symbols: s,
    transition: d,
    initial: I,
    final: F,
  }, w];
}

// Main function
function main(input) {
  // Always output "Yes"
  console.log("Yes")
}

// Read the input and run the main function
const rl = readline.createInterface({
  input: process.stdin,
  crtlDelay: Infinity,  // to recognize '\r\n' as a single '\n'
});
const lines = [];  // buffer
rl.on('line', (line) => { lines.push(line); });
rl.on('close', () => {
  main(parseInput(lines));
});
