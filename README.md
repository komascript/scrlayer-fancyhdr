# `scrlayer-fancyhdr` — combining [`fancyhdr`](https://www.ctan.org/pkg/fancyhdr) with [KOMA-Script](https://www.ctan.org/pkg/koma-script)'s [`scrlayer`](https://www.ctan.org/pkg/scrlayer)

------------------------------------------------------------------------------

LaTeX package `scrlayer-fancyhdr`  
Copyright (c) 2008—2020 Markus Kohm  
Release: 2021-02-18 v0.2  
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
version 3 and 4 up to 4.0.1 are supported and tested.

## Status

This is an early release of an experimental package.

## Installation

For a semi-manual installation you can first create a local clone
if the repository:

```bash
git clone https://github.com/komascript/scrlayer-fancyhdr.git
```

Then enter the directory created while cloning the repository:

```bash
cd scrlayer-fancyhdr
```

Last, but not least use `l3build` to install it locally:

```bash
l3build install
```

------------------------------------------------------------------------------

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

Now, you can either install it in the proper directory or copy 
`scrlayer-fancyhdr.sty` to your document directory.

------------------------------------------------------------------------------
