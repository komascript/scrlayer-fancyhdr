# `scrlayer-fancyhdr` — combining [`fancyhdr`](https://www.ctan.org/pkg/fancyhdr) with [KOMA-Script](https://www.ctan.org/pkg/koma-script)'s [`scrlayer`](https://www.ctan.org/pkg/scrlayer)

------------------------------------------------------------------------------

LaTeX package `scrlayer-fancyhdr`

Copyright (c) 2008—2025 Markus Kohm

Release: 2025-01-08 v0.3.1

License: LPPL 1.3c (see LICENSE.md)

CTAN Location: https://ctan.org/pkg/scrlayer-fancyhdr

------------------------------------------------------------------------------

## Summary

`scrlayer-fancyhdr` is a LaTeX package, that uses
[KOMA-Script](https://www.ctan.org/pkg/koma-script)'s
[`scrlayer`](https://www.ctan.org/pkg/scrlayer) to redefine the page styles of
package [`fancyhdr`](https://www.ctan.org/pkg/fancyhdr).  This allows the
combination of features of `fancyhdr` with features of `scrlayer`.

Before KOMA-Script v3.33 `scrlayer-fancyhdr` was part of KOMA-Script itself.
It still depends on KOMA-Script package
[`scrlayer`](https://www.ctan.org/pkg/scrlayer) at least version 3.33.  It
also depends on [`fancyhdr`](https://www.ctan.org/pkg/fancyhdr). Currently
version 3 and 4 up to 4.0.1 are supported and tested. Basic functionality also
works with version 5 and has been tested up to 5.1. But several new features
of [`fancyhdr`](https://www.ctan.org/pkg/fancyhdr) version 5 are currently not
tested with `scrlayer-fancyhdr`.

## Status

This is an early release of an experimental package.

## Installation

We recommend to use the package manager of your TeX distribution to install
packages. However, if you need to install `scrlayer-fancyhdr` manually, you
can either use a semi-manual installation or a completely manual installation.

### Semi-manual Installation

For a semi-manual installation you can first create a local clone
of the repository:

```bash
git clone https://github.com/komascript/scrlayer-fancyhdr.git
```

Then enter the directory created while cloning the repository:

```bash
cd scrlayer-fancyhdr
```

Last, but not least use `l3build` to install it locally with manual and
sources:

```bash
l3build install --full
```

or without manual and sources:

```bash
l3build install
```

### Completely Manual Installation

To do a completely manual installation, download `scrlayer-fancyhdr.dtx`.
Then extract it using:

```bash
tex scrlayer-fancyhdr.dtx
```

To create the manual use:

```bash
pdflatex scrlayer-fancyhdr.dtx
mkindex scrlayer-fancyhdr
biber scrlayer-fancyhdr
pdflatex scrlayer-fancyhdr.dtx
pdflatex scrlayer-fancyhdr.dtx
```

Now, you can either install it in the proper directory (see the
documentation of your TeX distribution) or copy `scrlayer-fancyhdr.sty`
to your document directory.

------------------------------------------------------------------------------
