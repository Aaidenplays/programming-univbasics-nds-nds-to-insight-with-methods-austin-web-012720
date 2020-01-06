$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
require 'pp'
def gross_for_director(director_data)

  result = {}
  
  index1 = 0
  while index1 < nds.size
    director_name = nds[index1][:name]
    result[director_name] = 0
    index2 = 0
    while index2 < nds[index1][:movies].size
      result[director_name] += nds[index1][:movies][index2][:worldwide_gross]
      index2 += 1
    end
  index1 += 1
  end
  result
  pp director_data
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)

end
