$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)

row_index = 0
sub_total = 0
while row_index < director_data[:movies].length do

sub_total += director_data[:movies][row_index][:worldwide_gross]

row_index += 1
end
#pp director_data
pp sub_total
end   ### GOOD !!! ###


# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
total1 = 0
row_index = 0 

while row_index < nds.length do

if nds[row_index][:name] == 'Stephen Spielberg'
dir_name = nds[row_index][:name]  ### good !!! ###
total1 = gross_for_director(nds[row_index]) ### good !!!
result = {}
result.store(dir_name, total1)
row_index += 1
end

if nds[row_index][:name] == 'Stephen Spielberg'
dir_name = nds[row_index][:name]  ### good !!! ###
total1 = gross_for_director(nds[row_index]) ### good !!!
result = {}
result.store(dir_name, total1)
end

row_index += 1
end

pp result
end
