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
- Style can be checked using `gulp syntax-check`.
- Do not edit `gulpfile.js` directly. All assets are compiled using Sprockets
  so Gulp tasks won't be run on production. If something needed write an
  [issue][issue].
- Do not use RequireJS or similar. We have Sprockets with it's `require`
  and `require_tree`.

Testing library linked. You can suggest one or wait till we choose one.

### Designer

- We use [Sass][sass] across whole project. Please, keep that (no SCSS).
- As mixin library we use [Bourbon][bourbon] with [Neat][neat]. In my honest
  opinion Compass is overbloated and provide no functionality that Bourbon
  don't cover in much simpler way.
- Use [Idiomatic CSS Style Guide][idiomatic].
- Document your styles using [KSS][kss].
- Install dependencies using Bower.

All design papers (available for comment) are stored on [Google Drive][gdrive].
Feel free to participate.

[airbnb]: https://github.com/airbnb/javascript "Airbnb JavaScript Style Guide"
[bbatsov]: https://github.com/bbatsov/ruby-style-guide "A community-driven Ruby coding style guide"
[bower]: http://bower.io/
[idiomatic]: https://github.com/necolas/idiomatic-css "Idiomatic CSS"
[issues]: https://github.com/hauleth/orodruin/issues/new "Report issue"
[kss]: http://warpspire.com/kss/ "Knyle Style Sheets"
[sass]: http://sass-lang.com/ "Syntactically Awesome Style Sheets"
[gdrive]: https://drive.google.com/folderview?id=0B0qkbxb2OVObVzJWdXlKUTZuZms&usp=sharing "Design files"
