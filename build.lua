#!/usr/bin/env texlua

--[[
  Build script for scrlayer-fancyhdr project
  Copyright (C) 2021 Markus Kohm

  This file is part of the build system of scrlayer-fancyhdr.

  It may be distributed and/or modified under the conditions of the
  LaTeX Project Public License (LPPL), either version 1.3c of this
  license or (at your option) any later version.  The latest version
  of this license is in the file

    https://www.latex-project.org/lppl.txt
]]

release_info = "2021-03-30 v0.2.1"

-- Bundle and modules

module       = "scrlayer-fancyhdr"

unpackfiles  = { "scrlayer-fancyhdr.dtx" }

installfiles = { "scrlayer-fancyhdr.sty" }

-- Package

packtdszip = false

-- CTAN information

ctanpkg   = "scrlayer-fancyhdr"

uploadconfig = {
  pkg         = "scrlayer-fancyhdr",
  version     = release_info,
  author      = "Markus Kohm",
  licencse    = "lppl1.3c",
  summary     = "combining fancyhdr with KOMA-Script's scrlayer",
  topic       = "page-hf",
  ctanPath    = "/macros/latex/contrib/scrlayer-fancyhdr",
  bugtracker  = "https://github.com/komascript/scrlayer-fancyhdr/issues",
  home        = "https://github.com/komascript/scrlayer-fancyhdr",
  repository  = "https://github.com/komascript/scrlayer-fancyhdr.git",
}

-- Detail how to set the version automatically
-- Example: `l3build tag --date 2020-02-31 v0.3'

tagfiles = {"*.dtx","README.md","build.lua"}

function update_tag (file,content,tagname,tagdate)
   tagname = string.gsub (tagname, "v(%d+%.%d+)", "%1")
   
   if string.match (file, "%.dtx$") then
      return string.gsub (content,
                          "%[%d%d%d%d%-%d%d%-%d%d v%d+%.%d+",
                          "[" .. tagdate .. " v" .. tagname )
   elseif string.match (file, "%.md$") then
      return string.gsub (content,
                          "\nRelease: %d%d%d%d%-%d%d%-%d%d v%d+%.%d+  \n",
                          "\nRelease: " .. tagdate .. " v" .. tagname .. "  \n")
   elseif string.match (file, "%.lua$") then
      return string.gsub (content,
                          '\nrelease_info = "%d%d%d%d%-%d%d%-%d%d v%d+%.%d+"\n',
                          '\nrelease_info = "' .. tagdate .. " v" .. tagname .. '"\n')
   end
   return content
end

-- Find and run build system

kpse.set_program_name("kpsewhich")
if not release_date then
  dofile(kpse.lookup("l3build.lua"))
end
