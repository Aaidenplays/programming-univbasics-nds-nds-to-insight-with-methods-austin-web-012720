$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
require 'pry'
def gross_for_director(director_data)
  index = 0
  total = 0 
  while index < director_data[:movies].size
    total_of_worldwide_grosses += director_data[:movies][:worldwide_gross]
    index += 1
  end
  total_of_worldwide_grosses
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  
  result = {} #the empty hash to return
  
  index1 = 0
  while index1 < nds.size
    director_name = nds[index1][:name] #stores names of directors as key of result hash
    result[director_name] = 0
    index2 = 0
    while index2 < nds[index1][:movies].size 
      result[director_name] += nds[index1][:movies][index2][:worldwide_gross] #stores the totals per director and attaches to director key
      index2 += 1
    end
  index1 += 1
  end
  result #returns hash of final product
end
