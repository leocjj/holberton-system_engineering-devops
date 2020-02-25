# Project 0x08.

Networking basics #1

# Background Context

For this project, you have to build your regular expression using Oniguruma, a regular expression library that which is used by Ruby by default. Note that other regular expression libraries sometimes have different properties.

Because the focus of this exercise is to play with regular expressions (regex), here is the Ruby code that you should use, just replace the regexp part, meaning the code in between the //:

´´´
sylvain@ubuntu$ cat example.rb
#!/usr/bin/env ruby
puts ARGV[0].scan(/127.0.0.[0-9]/).join
sylvain@ubuntu$
sylvain@ubuntu$ ./example.rb 127.0.0.2
127.0.0.2
sylvain@ubuntu$ ./example.rb 127.0.0.1
127.0.0.1
sylvain@ubuntu$ ./example.rb 127.0.0.a
´´´


## Read or watch:


    [Regular expressions - basics](https://www.slideshare.net/neha_jain/introducing-regular-expressions)
    [Regular expressions - advanced](https://www.slideshare.net/neha_jain/advanced-regular-expressions-80296518)
    [Rubular is your best friend](https://rubular.com/)
    [Use a regular expression against a problem: now you have 2 problems](https://blog.codinghorror.com/regular-expressions-now-you-have-two-problems/)
    [Learn Regular Expressions with simple, interactive exercises](https://regexone.com/)



## Requirements

### General

    Allowed editors: vi, vim, emacs
    All your files will be interpreted on Ubuntu 14.04 LTS
    All your files should end with a new line
    A README.md file, at the root of the folder of the project, is mandatory
    All your Bash script files must be executable
    The first line of all your Bash scripts should be exactly #!/usr/bin/env ruby
    All your regex must be built for the Oniguruma library



## Tasks

 0. Simply matching Holberton mandatory 
 1. Repetition Token #0 mandatory 
 2. Repetition Token #1 mandatory 
 3. Repetition Token #2 mandatory 
 4. Repetition Token #3 mandatory 
 5. Not quite HBTN yet mandatory 
 6. Call me maybe mandatory 
 7. OMG WHY ARE YOU SHOUTING? mandatory 
 8. Textme #advanced 
 9. Pass LinkedIn technical interview level0 #advanced 



## Built With

* Emacs editor.
* Linux vagrant-ubuntu-trusty-64 3.13.0-170-generic / Ubun 14.04.06


## Author

* **Leonardo Calderon J.** - *Initial work* - [LeoCJJ](https://github.com/leocjj)
02/24/2020

