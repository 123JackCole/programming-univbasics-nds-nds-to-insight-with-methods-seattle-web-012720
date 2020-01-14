$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)

  output_hash = {}
  outer_index = 0
  while outer_index < director_data.count do
    name = director_data[outer_index][:name]
    inner_index = 0
    gross_total = 0
    while inner_index < director_data[outer_index][:movies].count do
      gross_total += director_data[outer_index][:movies][inner_index][:worldwide_gross]
      inner_index += 1
    end
    return gross_total
    outer_index += 1
  end
  output_hash

end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  #result = {}
  #nil
  
  output_hash = {}
  outer_index = 0
  while outer_index < nds.count do
    name = nds[outer_index][:name]
    inner_index = 0
    gross_total = 0
    while inner_index < nds[outer_index][:movies].count do
      gross_total += nds[outer_index][:movies][inner_index][:worldwide_gross]
      inner_index += 1
    end
    output_hash[name] = gross_total
    outer_index += 1
  end
  output_hash
  
end
