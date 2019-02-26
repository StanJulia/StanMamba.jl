# convert_a3d

# Function that allows federation by setting the `output_format`  in the Stanmodel().

function convert_a3d(a3d_array, cnames, ::Val{:mambachains})
  snames = [Symbol(cnames[i]) for i in 1: length(cnames)]
  sr = getindex(a3d_array, [1:1:size(a3d_array, 1);], [1:size(a3d_array, 2);], [1:size(a3d_array, 3);])
  Chains(sr, 1:size(a3d_array, 2), cnames, [i for i in 1:size(a3d_array, 3)])
end
