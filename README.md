# (My) Commit Message Guidelines

> These are the rules I like to follow in my personal projects. They are not anything official, you may not agree with
> them, they are not perfect for GitHub too. But I tried some approaches (most people don't use any anyway) and I find
> these suits me well. I'm writing them down for future reference in my projects. Any comments are welcome.

I've added some commentary for some of the rules.

## Rules on writing style
- there are four code change types: fix, add, removal and change
- each change type starts with one of the characters denoting the type of change: `!` `+` `-` or `=`
    - `!` means a fix
    - `+` means an add
    - `-` means a removal
    - `=` means a change
- each logical change is written in separate line
- multiple lines per change are not allowed
- change description should be concise, but there is no line length limit
    - commit messages are not meant to be edited and in 2020 every app should handle line wrapping anyway
- do not end lines with period or commas
- start with lower-case. Use upper case on new sentence on the same line if needed

## Rules on contents
- more than one code change per commit is allowed
- W.I.P. commits are okay
    - it's the merge process that should control the completeness of a change
- description should be written from a end-user perspective, until it's not noticeable by end-user or developer-only
thing
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
