trade.gov Webservices
==============

### Ruby

You'll need [Ruby 2.1](http://www.ruby-lang.org/en/downloads/).

### Gems

We use bundler to manage gems. You can install bundler and other required gems like this:

    gem install bundler
    bundle install

### ElasticSearch

We're using [ElasticSearch](http://www.elasticsearch.org/) (>= 1.2.0) for fulltext search. On a Mac, it's easy to install with [Homebrew](http://mxcl.github.com/homebrew/).

    brew install elasticsearch

Otherwise, follow the [instructions](http://www.elasticsearch.org/download/) to download and run it.

### Running it

Fire up a server and try it all out.

    bundle exec rake ita:import[ScreeningList,MarketResearchData]
    bundle exec rails s

<http://127.0.0.1:3000/trade_events/ita/search?size=5&offset=8>

<http://127.0.0.1:3000/trade_events/ita/search?q=electrical>

<http://127.0.0.1:3000/trade_events/ita/search?countries=US,CA>

<http://127.0.0.1:3000/trade_events/ita/search?industry=agriculture>

<http://127.0.0.1:3000/ita_office_locations/search?q=new>

<http://127.0.0.1:3000/ita_office_locations/search?country=BR>

<http://127.0.0.1:3000/ita_office_locations/search?country=US&state=DC&q=national>

### Tests

These require an [ElasticSearch](http://www.elasticsearch.org/) server to be running.

    bundle exec rspec

### Code Coverage

We track test coverage of the codebase over time, to help identify areas where we could write better tests and to see when poorly tested code got introduced.

After running your tests, view the report by opening `coverage/index.html`.

Click around on the files that have < 100% coverage to see what lines weren't exercised.

### Mailcatcher

We use [Mailcatcher](http://mailcatcher.me/) to test emails sent from dev environments. Their advice is not to add the gem to your Gemfile, so in order
to use it please do:

    gem install mailcatcher
    mailcatcher

If you use [RVM](https://rvm.io/), you should follow their [specific instructions](http://mailcatcher.me/) (search for "RVM") on how to install the gem.

