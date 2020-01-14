$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def total_value_of_spinner(nds, row_index, column_index)
  coordinate_total = 0
  inner_len = nds[row_index][column_index].length
  inner_index = 0
  while inner_index < inner_len do
    coordinate_total += nds[row_index][column_index][inner_index][:price]
    inner_index += 1
  end
  coordinate_total
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)

#  output_hash = {}
#  outer_index = 0
#  while outer_index < director_data.count do
#    name = director_data[outer_index][:name]
#    inner_index = 0
#    gross_total = 0
#    while inner_index < director_data[outer_index][:movies].count do
#      gross_total += director_data[outer_index][:movies][inner_index][:worldwide_gross]
#      inner_index += 1
#    end
#    output_hash[name] = gross_total
#    outer_index += 1
#  end
#  output_hash

  output_hash = {}
  grand_total = 0
  row_index = 0
  while row_index < director_data.length do
    column_index = 0
    while column_index < director_data[row_index].length do
      inner_len = director_data[row_index][column_index].length
      inner_index = 0
      while inner_index < inner_len do
        # Explanation!
        # director_data[row][column][spinner]
        # spinner is full of Hashes with keys :price and :name
        grand_total += director_data[row_index][column_index][inner_index][:price]
        inner_index += 1
      end
      column_index += 1
    end
    row_index += 1
  end
  output_hash

end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  nil
end
