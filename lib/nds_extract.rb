$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def total_value_of_spinner(nds, row_coordinate, column_coordinate)
  grand_total = 0
  row_index = 0
  while row_index < nds.length do
    column_index = 0
    while column_index < nds[row_index].length do
      grand_total += total_value_of_spinner(vm, row_index, column_index)
      column_index += 1
    end
    row_index += 1
  end
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)

end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  nil
end
