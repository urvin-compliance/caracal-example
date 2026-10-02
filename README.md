# Caracal Example

This project is a simple Rails application that demonstrates how to
use Caracal to generate MSWord documents in what the library authors
deem idiomatic usage.  You can, of course, implement the library any
way you see fit.  This is merely a suggestion.

Additionally, this project produces a Word document that demonstrates
nearly every configuration option Caracal can manage. As such, the core
team often uses the resulting output for compatibility tests between
the innumerable versions of Word.


## Getting Started

Requires Ruby 3.4 (see `.ruby-version`) and Rails 8.1.

```bash
bundle install
bin/rails server
```

Then load http://localhost:3000 and follow the link to generate the
example document.

To run in production mode, set `SECRET_KEY_BASE` (e.g. from
`bin/rails secret`).

### Web Server

Because the example document includes an external file fetched over
HTTP from this same app, it requires more than one processing thread.
Puma (the default) is configured with multiple threads, so it works
out of the box.
