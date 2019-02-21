# Alma APIs with Rails and Vue.js

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

This demo app shows how you can integrate the [Ex Libris Alma REST APIs](https://developers.exlibrisgroup.com/alma/apis/) with a [SPA (single page application)](https://en.wikipedia.org/wiki/Single-page_application) using [Rails](https://rubyonrails.org) and [Vue.js](https://vuejs.org).

It also uses the [`alma_rest_api` gem](https://rubygems.org/gems/alma_rest_api) as a wrapper for the API calls.

Installation Instructions
-------------------------
On any machine with [Ruby on Rails](http://rubyonrails.org/) and [Git](http://git-scm.com/) installed, do the following:

1. Clone this repository: `git clone https://github.com/jweisman/alma-apis-rails-vue`
2. `cd alma-apis-rails-vue`
3. Install dependencies: `bundle install`
4. Run the application. This application requires an API key. You can provide one in the environment, i.e.:
```
$ ALMA_API_KEY=l7xx......... rails s
```

