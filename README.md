# The code is test on Big Sur 11.5.2, 2018 MacBook Pro 15
# haskell-bug-macos11-can-not-load-opengl
# See cabal file

# resolver ghc-13.28
## OpenGL package is included
```
    stack build haskell-bug-macos11-can-not-load-opengl
```

### ERROR:
```
    can not load framework: OpenGL (not found)
```
[Similar Bug](https://github.com/bravit/hid-examples/issues/7)
