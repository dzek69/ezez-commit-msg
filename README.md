# EZEZ Commit message guidelines

There is a broad variety of commit message guidelines, some are basic formatting rules, some are way too comples and are
forcing you to use a tool that takes you through a multistep wizard to create a commit message, some are focused on
funny emojis.

I needed something that is based on sanity, does encourage good practices and allows to automatically generate useful
changelogs. See: [EZEZ Changelog](https://ezez.dev/guidelines/changelog/).

## Rules on formatting
- there are six code change types: `addition`, `change`, `breaking change`, `removal`, `fix` and `development`
- first five focuses on the end-user and features of your product, the last one is for developers
- each logical code change should be written in a separate line
- each change should start with a change type denotation followed by space
  - addition is denoted by `+`
  - change is denoted by `=`
  - fix is denoted by `!`
  - breaking change is denoted by `!=`
  - removal is denoted by `-`
  - dev related change is denoted by `~`
- do not include redundant words denoting a type of the change, they take precious space and will create a repetition
when generating a changelog (see [EZEZ Changelog](https://ezez.dev/guidelines/changelog/))
  - `+ added support for iOS` is redundant, use `+ support for iOS` instead
  - see [EZEZ Changelog](https://ezez.dev/guidelines/changelog/) for more examples
- multiple lines per change are not allowed
- change description should be concise, but there is no hard length limit
- do not end lines with a period or commas
- start with lower-case. Use an upper case on new sentence on the same line if needed

## Rules on contents
- more than one code change per commit is allowed
- W.I.P. commits are okay
  - it's the merge process that should control the completeness of a change
- code change description should be written from an end-user perspective,
unless it's not noticeable by end-user or it is a developer-only change
  - ie use: `! form allowing to submit when user is not 18 years old` instead of `! missing "return" in Form component
    validation`
  - but: `= improved image resizing performance` is okay
- avoid explaining why or how the change was made
- if a issue tracker ticket is related to the commit end the line with `(fixes #1)` for fixes or `(closes JIR-1234)` for
adds/removals/changes
    - if multiple commits were made to close the ticket - add `(WIP #123)`
- any code/solution related commentary should be written in the code
- first commit should usually be `+ initial commit` for WIP code and `+ initial version` for the code that already does
something
