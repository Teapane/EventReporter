**Living Social Code Challenge**

This is an app that can parse TAB files and store them in a database.  The styling is ultra minimal because the focus of the challenge wasn't style.  I was thinking of extracting services out of the controller to make it 'skinnier', but do to the scope of this challenge, I did not feel it was necessary.  The goal of this app is parse TAB files into a DB; if that needed to change to accept other forms of input, then a refactoring would be pertinent.  I wrote feature tests to drive the development. 

**To run the app/make modifications**
```
  fork it or clone to your local machine

  bundle

  rake db:migrate

  rails s
```
The app can be viewed on your local machine (localhost:3000)[http://localhost:3000]

**To run the tests**

```
  rake db:migrate RAILS_ENV='test'
  
  rspec
```

Thank you for your time and hope to hear from you soon!
