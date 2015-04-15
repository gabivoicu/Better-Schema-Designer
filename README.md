##Work In Progress.

We have taken an Open Source database schema designer off of PHP, put it on Sinatra and plan to make it display an actual database table based on a schema designed by the user.

The purpose is to help new programmers visualize join database tables easier. I believe that for beginners database schemas are confusing and add an unnecessary level of abstraction; it's harder to understand what a ```tagged_posts``` table would hold, for example(that table being the joint table of ```posts``` and ```tags``` tables).

##What It Does, as of April 15th 2015
After you build a database schema, if you right-click on that schema it will generate a database table with [faker.js](https://github.com/Marak/faker.js) data. (Table will be generated in the upper right corner). Right clicking again will generate a new table on top of the old one- the original code is from 2007 and the author pretty much wrote his own jQuery, but there is no ```replaceWith()``` what would work. I have considered adding jQuery to it, but as some of it is already written the complications are hard to predict.

