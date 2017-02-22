# Magic 8.0

The wizarding world has been around for ages,
their system even more so.

The intent of the code
------

-> To help students know what schools will help them improve their interests (as you will come to know some schools are better than others).

What the code is doing now.
-----

A school offers different courses(`School::SCHOOL_DATA[:courses]`) and a list of ratings for each course(`School::SCHOOL_DATA[:course_rating]`) - given by the united magic ratings agency on a scale from from 0 to 100.

A child when applying to the school should submit his name and _**at least 5**_ subjects he is interested in,
the order of the subjects coincides with a list of all the subjects available(`School::COURSES`).

We compare the list of interest scores a student submits to each schools list of courses offered and their rating.

The code is centuries old and needs a fair amount of refactoring.

Use all the knowledge at your disposal to manage the dependencies _wisely_.

Tips 
----
1. There is a spec written. you can run it by calling `bundle exec rspec test.rb`
2. Debuggers are also suggested if you have `byebug` installed you can easily debug the code by adding `require 'byebug'` at the top of the file.
3. All things are permitted, you can rewrite the whole application if need be or to save time refactor what is there. 
4. You can change the data structures of `School::SCHOOL_DATA[:courses]` and `School::SCHOOL_DATA[:course_rating]`
5. Start with the simple tricks learnt today
  1. Order dependancy
  2. Dependancy injection 
  3. Dependacy aversion


## Bonus 

Improve the validations, we need to ensure that no bad apples get into good schools. 

If the wizard applying has a strong disposition towards the 'Dark arts' and 'Dueling' this may be an early indicator. Weightings should be adjusted for him to attend schools that are not so savery, 
namely `Durmstrang Institute` and `Castelobruxo`

> Refactoring is the process of changing a software system in such a way that it does not alter the external behavior of the code yet improves the internal structure. - _Martin Fowler_



