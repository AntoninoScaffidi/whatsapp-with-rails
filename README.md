# whatsapp-with-rails

Companion Rails app for the [WhatsApp with Rails](https://antoninoscaffidi.github.io/series/whatsapp-with-rails/) blog series ([Italiano](https://antoninoscaffidi.github.io/it/series/whatsapp-with-rails/)) — sending a WhatsApp message from a Rails app, first via Twilio, then via a direct Meta WhatsApp Cloud API variant for comparison.

Each blog post has a matching git tag here (`episode-1`, `episode-2`, ...) so you can check out the exact code state discussed in that post:

```bash
git checkout episode-1
```

## Stack

- Rails 8.1, Tailwind CSS
- PostgreSQL

## Setup

```bash
bundle install
bin/rails db:create db:migrate
bin/dev
```

App available at `http://127.0.0.1:3000`.
