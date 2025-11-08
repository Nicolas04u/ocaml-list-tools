OCaml List Tools

A small, well-tested utility library for OCaml, built with Dune and the Jane Street Base library.

This project is the first micro-project in a structured curriculum focused on building OCaml proficiency for fintech and high-frequency trading (HFT) internship applications.

Features

This library provides two main functions, implemented idiomatically and tested for edge cases:

List_toolbox.dedup: Removes consecutive duplicates from a list of any type, given a comparison function.

List_toolbox.find_peak: Finds the first element in an int list that is strictly greater than both its left and right neighbors.

Tech Stack

Language: OCaml

Build System: Dune

Core Library: Jane Street Base

Testing: Alcotest

Installation & Building

This project is managed using the opam package manager and built with dune.

Clone the repository:

git clone [https://github.com/Nicolas04u/ocaml-list-tools.git](https://github.com/Nicolas04u/ocaml-list-tools.git)
cd ocaml-list-tools


Install dependencies:
Make sure you are in the correct opam switch and run:

opam install dune base alcotest


Build the project:

dune build


Running Tests

A complete test suite is provided in the test/ directory. To build and run all tests:

dune test


All tests should pass.