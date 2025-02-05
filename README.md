## Setup

This is a Rails quiz application. User can log in and sign up.
User can play quizzes and get its score for each.

[S-test demo](https://s-test-cn.herokuapp.com/)

### Technologies

Project is created with:

-   Ruby: 2.6.5
-   Rails: 6.1.3.1


### Clone the repository

```shell
$ git clone git@github.com:Cleemn/s-test.git
$ cd s-test
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler) and [Yarn](https://github.com/yarnpkg/yarn):

```shell
$ bundle && yarn
```

### Initialize the database

```shell
$ rails db:create db:migrate db:seed
```

### Serve

```shell
$ rails s
```

## Guidelines
- Fork this repository
- You can add any framework, library or plugin you'd like
- In short: Do whatever you want to get the job done
- Make sure the application works out-of-the box once you're done
- Push changes to your git fork
- Add a short description on how to run your program in the Setup section above. (A person ariving new to the project should be able to follow your instructions and run it)
- Check the finished features in the Assignment and Bonus section by putting an 'X' ([X]) in between the brackets
- Quality over quantity, better half of the features 100% done, than 100% of the features half-done
- Assignment :
  - You are asked to build a simple Quizz App

## User
 [X] A user can log in with a valid username and password through a login screen

 [X] A user can see a collection of quizzes

 [X] A user can start a quizz

 [X] A user can answer 3 questions on a quizz

 [X] A user can see the scores of his quizzes


## Quizz
 [X] A quizz has a Title

 [X] A quizz has a maximum of 3 questions

 [X] A quizz is considered passed if +60% of questions are answered correctly

## Question
 [X] A question has a maximum of 4 answers

 [X] A question has only 1 possible correct answer


## Bonus
- Some nice to haves, when there is time to spare.

 [ ] A quizz can have a dificulty level

 [ ] Add admin role

 [ ] A user with admin role can create and edit quizzes

 [ ] A user can come back to a started quizz at the question he stopped

 [ ] Add or improve a feature of your own choice

 Documentation was good

 Too much logic in controllers
 Redirects in the model ? 
 Front is quite OK

 I don't understand all the equals, but it might be just me ? 