# Take Home Challenge

## Dependencies

### Ruby version

* This application requires Ruby 2.7.2

For Installing a specific Ruby version you may use [rbenv](https://github.com/rbenv/rbenv#installation)
```
$ brew install rbenv
$ rbenv init
$ rbenv install x.x.x
$ rbenv global x.x.x
```
You can set rbenv to initialize everytime you open a new terminal window by adding this to your `.bash_profile`  
```
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
```

### Setup

1. Get the code.

        $ git clone https://github.com/moneypool/moneypool.git

2. Run the setup script

        $ bin/setup
        
## User login

Two users are created while setup, one with a user_type: "user" and one with user_type: "admin"

### Admin

* Email: `admin@example.com`
* Password: `password`

### User

* Email: `user@example.com`
* Password: `password`

## Testing

### How to run the test suite

* Make sure you run `rails db:migrate RAILS_ENV=test` before running the test suite

* Run `rspec` to run all the test suite
* Run `rspec path/to/file.rb` to run a specific test file
* Run `rspec path/to/file.rb:##` to run a specific line in a test