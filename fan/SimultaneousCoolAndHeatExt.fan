//
// Copyright (c) 2016, Direct Control
// All Rights Reserved
//
// History:
//   5 Jan 16   Matthew Walker   Creation
//

using haystack
using proj

**
** SimultaneousCoolAndHeat Extension
**
@ExtMeta
{
  name    = "simultaneousCoolAndHeat"
  icon24  = `fan://simultaneousCoolAndHeatExt/res/img/SimultaneousCoolAndHeat24.png`
  icon72  = `fan://frescoRes/img/iconMissing72.png`
  depends = Str[,]
}

const class SimultaneousCoolAndHeatExt : Ext
{
  @NoDoc new make(Proj proj) : super(proj) {}
}
