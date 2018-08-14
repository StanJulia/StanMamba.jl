module StanMamba

import CmdStan: convert_a3d
#import Mamba: Chains

abstract type AbstractChains end

struct Chains <: AbstractChains
  value::Array{Float64, 3}
  range::Range{Int}
  names::Vector{AbstractString}
  chains::Vector{Int}
end

# package code goes here
using Reexport, Statistics, Documenter

@reexport using CmdStan

include("utilities/convert_a3d.jl")

export
  convert_a3d

end # module
