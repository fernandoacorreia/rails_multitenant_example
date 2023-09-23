# Ruby on Rails multitenant example app

Based on [Building a Multi-tenant Ruby on Rails App With Subdomains](https://blog.appsignal.com/2020/12/02/building-a-multi-tenant-ruby-on-rails-app-with-subdomains.html)

## Requirements

Setup development environment: see [fernandoacorreia/macos-rails-setup](https://github.com/fernandoacorreia/macos-rails-setup)

This will set up PostgreSQL. Start it with:

```
brew services start postgresql@16
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

Open in browser: [http://localhost:3000](http://localhost:3000)

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
