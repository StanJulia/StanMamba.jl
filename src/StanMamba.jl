module StanMamba

# package code goes here
using Statistics, Documenter

import CmdStan: convert_a3d
#import Mamba: AbstractChains, Chains

import Mamba: Chains

include("utilities/convert_a3d.jl")

export
  convert_a3d
  
end # module
