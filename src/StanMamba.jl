module StanMamba

# package code goes here
using Statistics, Documenter

import CmdStan: convert_a3d
using CmdStan: set_cmdstan_home!, CMDSTAN_HOME, Stanmodel,
  stan, Sample, Optimize, Diagnose, Variational
#import Mamba: AbstractChains, Chains


abstract type AbstractChains end

struct Chains <: AbstractChains
  value::Array{Float64, 3}
  range::UnitRange{Int}
  names::Vector{AbstractString}
  chains::Vector{Int}
end


include("utilities/convert_a3d.jl")

export
  convert_a3d,

  # from this file
  set_cmdstan_home!,
  CMDSTAN_HOME,

  # From stanmodel.jl
  Stanmodel,

  # From stancode.jl
  stan,

  # From sampletype.jl
  Sample,

  # From optimizetype.jl
  Optimize,

  # From diagnosetype.jl
  Diagnose,

  # From variationaltype.jl
  Variational
end # module
