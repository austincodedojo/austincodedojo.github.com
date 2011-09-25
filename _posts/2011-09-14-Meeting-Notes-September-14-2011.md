---
layout: post
title: Meeting Notes for September 14, 2011
---

Who Came
--------

 * Dan Hedges 
 * Elridge D'Mello 
 * Erzsebet Carmean 
 * Greg Symons 
 * Ron Romero 
 * Steve Suehs 


What we did
-----------

This week we tried changing up the way we run the dojo. Rather than our usual,
write a test, pass the keyboard, pass the test and refactor cycle, we tried
letting people drive for a longer period of time. It actually worked out pretty
well, since it let people keep going if they got into "the zone".

We worked a simple genetic algorithm problem: 

* Given a integer, find an expression that evaluates to that value.
* A valid expression meets the following grammar (numbers in {braces} are
  repeats, and portions in \[brackets\] are optional):

<pre>
    expression  -> digit op digit \[op digit\]{3}
    digit       -> '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9'
    op          -> plus | minus | multiply | divide
    plus        -> '+'
    minus       -> '-'
    multiply    -> '*'
    divide      -> '/'
</pre>

* Operations are evaluated from left to right; there is no operator precedence.

We did the work in Clojure, which lent itself naturally to the kinds
of operations we needed, which is not surprising, since genetic algorithms and
LISP have a long history together.


All the code is on [GitHub][1]


What we learned
---------------

 * Longer turns at the keyboard leads to more progress.
 * Right time limit is no time limit
 * Clojure rocks!
   * It can be hard to figure out, but once you do, it's just right.
   * The REPL can take the place of TDD for simple, pure functions
   * TDD is still useful though, when you don't know exactly what to do or if
     the problem has lots of edges.


Next Meeting
------------

Our next meeting will be held on Wednesday, September 28, 2011 from 6pm-10pm. We
will be be continuing our work with [genetic algorithms][1]. Please [sign up][2] if you
plan on coming.

[1]: http://github.com/austincodedojo/genetic-algorithms-clojure "The code from the September 14, 2011 meeting"
[2]: http://austincodedojo-2011-09-28.eventbrite.com "Sign up for the 9/28/2011 Code Dojo!"
