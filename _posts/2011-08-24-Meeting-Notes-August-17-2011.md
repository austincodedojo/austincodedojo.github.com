---
layout: post
title: Meeting Notes for August 17, 2011
---

Who Came
--------

* Clark Archer
* Ron Romero
* James Setaro
* Greg Symons

What we did
-----------

This week we did a couple of things. First, Greg showed a brief overview of Geb
and Spock, and demonstrated a very simple Spock+Geb spec for testing logins to
the DrillingInfo site.

After the demo, we decided to build a FizzBuzzer in Groovy and test it with
Spock. That went pretty well, and there was a lot of excitement about how easy
it is to write clean code in Groovy.

Once we finished the FizzBuzzer, we put Geb through its paces by taking the
FizzBuzzer and exposing it as a very simple webapp. First though we experienced
the state of the art in setting up a web-based project in Eclipse, and all
present thought that it left much to be desired. In the end, we decided to use
the WebStart "archetype" from the austincodedojo GitHub. 

When we finally had a webapp project set up, we were fairly quickly able to
write some acceptance tests in Spock and Geb, and Jersey actually seemed pretty
handy for the very simple form processing that we needed the webapp to do.

All the code is on [GitHub][1]

Lessons Learned
---------------

* Groovy rocks!
* Geb rocks!
* Setting up a webapp project in Eclipse is a pain.
* Functional tests can be expensive, though.
  * The cost seems especially high early in a project.
  * Need to always keep things in balance.


Things for future meetings
--------------------------

While we managed to get all the code from the meeting up onto GitHub this time,
it'd be better if we remembered to commit between tests so that we can see the
progress of the solution.

Next Meeting
------------

We didn't really come up with a plan for next meeting, but it will be held on
Wednesday, August 31, 2011 6pm-10pm at DrillingInfo again. Please [sign up][2] if you
plan on coming.


[1]: http://github.com/austincodedojo/meeting-code-2011-08-17 "The code from the August 17, 2011 meeting"
[2]: http://austincodedojo-2011-08-31.eventbrite.com "Sign up for the next Dojo!"
