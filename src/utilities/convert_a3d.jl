# Just an example of convert_a3d, never called as the array format is
# the intermediate format

# Would be called if output_format=:dataframe, e.g.:

#   stanmodel = Stanmodel(num_samples=1200, thin=2, name="bernoulli", 
#   model=bernoullimodel, output_format=:dataframe);

function convert_a3d(sim, cnames, ::Val{:mambachains})
  snames = [Symbol(cnames[i]) for i in 1: length(cnames)]
  #[DataFrame(sim[:,:,i], snames) for i in 1:size(sim, 3)]
end
