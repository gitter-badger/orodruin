# Contribution guidelines

## As user

If you found any bug or have a suggestion about new feature, please
report us [there][issues].

## As developer

We want to keep code of this project clean as possible, so please, before
creating pull-request, read this.

### Ruby Developer

- Use [Community-driven Ruby Style Guide][bbatsov] (also known as bbatsov's Ruby
  Style Guide).
- If you create new feature, be sure that this will not break any existing one.
  It can be easily achieved by running `bin/rake test:all` before pushing. Also
  be sure that you have written test for your feature. It will help You and us
  with maintaining it.
- If you create fix, be sure that all tests are green afterwards.
- Don't hesitate with adding new dependencies.
- Be sure that your code match our standards by running `bin/rubocop`.
- Document your code!!!

### JavaScript Developer

- Use [JavaScript Style Guide][airbnb].
- If any dependency needed, prefer using [Bower][bower] than Bundler. Bower has
  greater JS libraries database and is much cleaner.

For now we don't have any linter or testing library linked. You can suggest one
or wait till we choose one.

### Designer

- We use [Sass][sass] across whole project. Please, keep that (no SCSS).
- As mixin library we use [Bourbon][bourbon] with [Neat][neat]. In my honest
  opinion Compass is overbloated and provide no functionality that Bourbon
  don't cover in much simpler way.
- Use [Idiomatic CSS Style Guide][idiomatic].
- Document your styles using [KSS][kss].
- Install dependencies using Bower.

We don't have place to store design papers, like PSD templates, yet.

[airbnb]: https://github.com/airbnb/javascript "Airbnb JavaScript Style Guide"
[bbatsov]: https://github.com/bbatsov/ruby-style-guide "A community-driven Ruby coding style guide"
[bower]: http://bower.io/
[idiomatic]: https://github.com/necolas/idiomatic-css "Idiomatic CSS"
[issues]: https://github.com/hauleth/orodruin/issues/new "Report issue"
[kss]: http://warpspire.com/kss/ "Knyle Style Sheets"
[sass]: http://sass-lang.com/ "Syntactically Awesome Style Sheets"
