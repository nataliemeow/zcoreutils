# zcoreutils

This is an (unfinished) attempt to port many of GNU Coreutils' tools to the [Zsh](https://zsh.sourceforge.io/) shell language. __Do not use this: this is only a way of showing the power and capability of Zsh, and to have some fun doing it.__

Contributions are welcome, even if easy to implement.

## how to use

As you might have expected, these tools work only in Zsh. They are defined as functions, which are sourced to the current shell. You don't need to source all of them manually, `zcoreutils.zsh` can do that:

```
$ source zcoreutils.zsh
```

All existing tools will be replaced with their zcoreutils counterparts, a.k.a. your shell session will be ruined.

## license

GPLv3. See LICENSE.
