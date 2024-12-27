[![Actions Status](https://github.com/lizmat/auto-dynamic/actions/workflows/linux.yml/badge.svg)](https://github.com/lizmat/auto-dynamic/actions) [![Actions Status](https://github.com/lizmat/auto-dynamic/actions/workflows/macos.yml/badge.svg)](https://github.com/lizmat/auto-dynamic/actions) [![Actions Status](https://github.com/lizmat/auto-dynamic/actions/workflows/windows.yml/badge.svg)](https://github.com/lizmat/auto-dynamic/actions)

NAME
====

auto-dynamic - automatically vivify dynamic variables

SYNOPSIS
========

```raku
use auto-dynamic;

$*foo = 42;
say $*foo;  # 42

%*hash<a> = 666;
dd %*hash;

@*array[2] = "ok";
say @*array;

&*handler = { say "duh" }
&*handler();
```

DESCRIPTION
===========

Unknown dynamic variables return a `Failure` in standard Raku. That may be undesired in some situations.

The `auto-dynamic` distribution enables the automatic vivification of dynamic variables in the scope in which the `use` statement is executed. It is the [`no strict`](https://docs.raku.org/syntax/strict) equivalent for dynamic variables.

CAUTION
=======

The functionality of this distribution relies on the current way that accesses to dynamic variables are being turned into bytecode. Which *may* change at any point in the future. As such, this distribution is more intended as a proof of concept.

AUTHOR
======

Elizabeth Mattijsen <liz@raku.rocks>

Source can be located at: https://github.com/lizmat/auto-dynamic . Comments and Pull Requests are welcome.

If you like this module, or what I'm doing more generally, committing to a [small sponsorship](https://github.com/sponsors/lizmat/) would mean a great deal to me!

COPYRIGHT AND LICENSE
=====================

Copyright 2024 Elizabeth Mattijsen

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

