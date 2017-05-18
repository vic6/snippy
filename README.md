## Instructions for use in local server

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install
```

Next, create, migrate and seed the database:

```
$ rails db:setup
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

Open a browser and go to localhost:3000
