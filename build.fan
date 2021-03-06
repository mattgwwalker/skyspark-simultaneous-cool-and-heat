#! /usr/bin/env fan
//
// Copyright (c) 2016, Direct Control
// All Rights Reserved
//
// History:
//   5 Jan 16   Matthew Walker   Creation
//

using build

**
** Build: simultaneousCoolAndHeatExt
**
class Build : BuildPod
{
  new make()
  {
    podName = "simultaneousCoolAndHeatExt"
    summary = "Provides simultaneousCoolAndHeat()"
    version = Version("1.0")
    meta    = [
                "org.name":     "Direct Control",
                "org.uri":      "http://www.directcontrol.co.nz/",
                "license.name": "Commercial",
              ]
    depends = ["sys 1.0",
               "haystack 2.1",
               "proj 2.1",
	       "hisExt 2.1",
	       "hisKitExt 2.1",
	       "concurrent 1.0",
	       "util 1.0"]
    srcDirs = [`fan/`,
               `test/`]
    resDirs = [`locale/`,
               `lib/`,
	       `res/`,
	       `res/img/`]
    index   =
    [
      "proj.ext": "simultaneousCoolAndHeatExt::SimultaneousCoolAndHeatExt",
      "proj.lib": "simultaneousCoolAndHeatExt::SimultaneousCoolAndHeatLib",
    ]
  }
}
