# Ruby on Rails multitenant example app

Based on [Building a Multi-tenant Ruby on Rails App With Subdomains](https://blog.appsignal.com/2020/12/02/building-a-multi-tenant-ruby-on-rails-app-with-subdomains.html)

This example follows the Database-row Level multitenancy pattern.

## Requirements

Setup development environment: see [fernandoacorreia/macos-rails-setup](https://github.com/fernandoacorreia/macos-rails-setup)

This will set up PostgreSQL. Start it with:

```
brew services start postgresql@16
```

## Host setup

As `sudo` edit `/etc/hosts` and add these entries:

```
127.0.0.1 one.localhost
127.0.0.1 two.localhost
127.0.0.1 three.localhost
```

To make sure your changes take effect, you should flush the DNS cache. In Terminal, run:

```
sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder
```

## Development setup

Create database:

```
bin/rails db:create
```

Start development server:

```
bin/rails server
```

## Database setup

Using [http://localhost:3000/authors](http://localhost:3000/authors), create 3 authors with slugs `one`, `two` and `three`.

Use these URLs to create articles for each author:

- [http://one.localhost:3000/articles](http://one.localhost:3000/articles)
- [http://two.localhost:3000/articles](http://two.localhost:3000/articles)
- [http://three.localhost:3000/articles](http://three.localhost:3000/articles)

## Outline

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
