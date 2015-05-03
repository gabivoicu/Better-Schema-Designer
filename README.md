##Work In Progress.

We have taken an Open Source database schema designer off of PHP, put it on Sinatra and plan to make it display an actual database table based on a schema designed by the user.

The purpose is to help new programmers visualize join database tables easier. I believe that for beginners database schemas are confusing and add an unnecessary level of abstraction; it's harder to understand what a ```tagged_posts``` table would hold, for example(that table being the joint table of ```posts``` and ```tags``` tables).

##What It Does, as of April 15th 2015
After you build a database schema, if you right-click on that schema it will generate a database table with [faker.js](https://github.com/Marak/faker.js) data. (Table will be generated in the upper left corner). Right clicking again will generate a new table on top of the old one- the original code is from 2007 and the author pretty much wrote his own jQuery, but there is no ```replaceWith()``` what would work. I have considered adding jQuery to it, but as some of it is already written the complications are hard to predict.

The code to modify is mostly found in ```/public/js/wwwsqldesigner.js```, we have added lines 663-710 and 717-723. Files ```/public/js/oz.js``` and ```/app/views/index.erb``` are also of interest.

We have also removed the awful, a-million-tiny-squares-per-square-inch background.
![join table](/public/images/join_table.png)
![users table](/public/images/users_table.png)

##To Run Locally
1. Clone to your machine
```git clone https://github.com/gabivoicu/Schema-to-Table-DB-Designer.git```
(or fork and then clone)
2. Install gems
```bundle install```
3. Run server
```be shotgun``` (or ```bundle exec shotgun```)
4. Navigate to [http://localhost:9393/](http://localhost:9393/)
