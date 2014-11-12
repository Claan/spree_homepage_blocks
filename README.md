# Spree Homepage Blocks

Extension for spree which allows the admin to create advertisement blocks to the homepage.
The advertisement blocks are comprised of a promo image and an external or internal link.


## Installation 


Add spree_homepage_blocks to your Gemfile:

```ruby
gem 'spree_homepage_blocks', github: 'Claan/spree_homepage_blocks', branch: '2-3-stable-bootstrap'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_homepage_blocks:install
```
**NOTE: Check [Versionfile][1] for corresponding gem `branch` for your Spree version.**

## Next Steps

* Update for spree version 2.4
* Create test suite for gem

## Contributing

In the spirit of [free software][2], **everyone** is encouraged to help improve this project.

Here are some ways *you* can contribute:

* by using prerelease versions
* by reporting [bugs][3]
* by suggesting new features
* by writing translations
* by writing or editing documentation
* by writing specifications
* by writing code (*no patch is too small*: fix typos, add comments, clean up inconsistent whitespace)
* by refactoring code
* by resolving [issues][3]
* by reviewing patches

Starting point:

* Fork the repo
* Clone your repo
* Run `bundle install`
* Run `bundle exec rake test_app` to create the test application in `spec/test_app`
* Make your changes
* Ensure specs pass by running `bundle exec rspec spec`
* Submit your pull request

Copyright (c) 2014 [Nuno Polonia][5], released under the [MIT License][5]

[1]: https://github.com/Claan/spree_homepage_blocks/blob/master/Versionfile
[2]: http://www.fsf.org/licensing/essays/free-sw.html
[3]: https://github.com/Claan/spree_homepage_blocks/issues
[4]: https://github.com/nunopolonia
[5]: https://github.com/Claan/spree_homepage_blocks/blob/master/LICENSE.md
