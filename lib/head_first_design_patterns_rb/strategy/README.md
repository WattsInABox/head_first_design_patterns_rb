# Chapter 1: Intro to Design Patterns: Welcome to Design Patterns

Note that I changed `perform_fly` in the book and Java code to be `fly` and 
`perform_quack` to be `quack`. This improves readability and makes more sense
semantically.

Since Ruby doesn't have `Interface`s, I `raise` the `NoImplementedError` in methods
that are supposed to be overridden in subclasses. This seems to be what the 
community does, as a whole.

Further notice that instead of waiting until subclasses to set the `fly_behavior`
and `quack_behavior` attributes, I set them in the base class and override them
only where necessary.
