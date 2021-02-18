# scrlayer-fancyhdr — combining [fancyhdr](https://www.ctan.org/pkg/fancyhdr) with [KOMA-Script](https://www.ctan.org/pkg/koma-script)'s [scrlayer](https://www.ctan.org/pkg/scrlayer)

------------------------------------------------------------------------------

LaTeX package `scrlayer-fancyhdr`  
Copyright (c) 2008—2020 Markus Kohm  
Release: 2021-02-18 v0.2  
License: LPPL 1.3c (see LICENSE.md)  
CTAN Location: https://ctan.org/pkg/scrlayer-fancyhdr

------------------------------------------------------------------------------

## Summary

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
