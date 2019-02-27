# Magic 8.0

The wizarding world has been around for ages,
this system even more so.

The intent of the code
------
-> To send acceptance letters to students regarding which magic school they have been accepted at.

What the code is doing now
-----

A school offers different courses(`school_data.json -> ["school"]["courses"]`) and a list of ratings for each course(`school_data.json -> ["school"][:course_rating]`) these ratings are out of 100.

A child when applying to the school should submit his name and _**at least 5**_ subjects he is interested in,
the order of the subjects coincides with a list of all the subjects available(`School::COURSES`).

We compare the list of interest scores a student submits to each schools list of courses offered and their rating.

The code is centuries old and needs a fair amount of refactoring.

Use all the knowledge at your disposal to manage the dependencies _wisely_.

Tips
----
You will need access to ruby. All versions of OSX will have it, you will also need:
1. rspec - `gem install rspec`
2. byebug - `gem install byebug`

1. There is a spec written. you can run it by calling `bin/rspec test.rb`
2. Debuggers are also suggested if you have `byebug` installed you can easily debug the code by adding `require 'byebug'` at the top of the test.rb file.
3. You can
  - rename / add files
  - change the data structure in the 
4. Start with the simple tricks learnt today
  -. Extraction Method
  -. Method Object
  -. Dependancy Injection


### Bonus
-> Identify in words how the system calculates a score.
-> Use all three of the refactoring tips.

