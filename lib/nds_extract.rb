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
dir_name1 = nds[row_index][:name]  ### good !!! ###
total1 = gross_for_director(nds[row_index]) ### good !!!
result = {}
result.store(dir_name1, total1)
end

if nds[row_index][:name] == 'Russo Brothers'
dir_name2 = nds[row_index][:name]  ### good !!! ###
total2 = gross_for_director(nds[row_index]) ### good !!!
result = {}
result.store(dir_name2, total2)
end

if nds[row_index][:name] == 'James Cameron'
dir_name3 = nds[row_index][:name]  ### good !!! ###
total3 = gross_for_director(nds[row_index]) ### good !!!
result = {}
result.store(dir_name3, total3)
end

if nds[row_index][:name] == 'Spike Lee'
dir_name3 = nds[row_index][:name]  ### good !!! ###
total3 = gross_for_director(nds[row_index]) ### good !!!
result = {}
result.store(dir_name3, total3)
end

if nds[row_index][:name] == 'Wachowski Brothers'
dir_name4 = nds[row_index][:name]  ### good !!! ###
total4 = gross_for_director(nds[row_index]) ### good !!!
result = {}
result.store(dir_name4, total4)
end

if nds[row_index][:name] == 'Russo Brothers'
dir_name2 = nds[row_index][:name]  ### good !!! ###
total2 = gross_for_director(nds[row_index]) ### good !!!
result = {}
result.store(dir_name2, total2)
end

if nds[row_index][:name] == 'Russo Brothers'
dir_name2 = nds[row_index][:name]  ### good !!! ###
total2 = gross_for_director(nds[row_index]) ### good !!!
result = {}
result.store(dir_name2, total2)
end

if nds[row_index][:name] == 'Russo Brothers'
dir_name2 = nds[row_index][:name]  ### good !!! ###
total2 = gross_for_director(nds[row_index]) ### good !!!
result = {}
result.store(dir_name2, total2)
end

if nds[row_index][:name] == 'Russo Brothers'
dir_name2 = nds[row_index][:name]  ### good !!! ###
total2 = gross_for_director(nds[row_index]) ### good !!!
result = {}
result.store(dir_name2, total2)
end
row_index += 1
end
result = {
  dir_name1 => total1,
  dir_name2 => total2,
  #dir_name3 => total3,
  #dir_name4 => total4,
  #dir_name5 => total5,
  #dir_name6 => total6,
  #dir_name7 => total7,
  #dir_name8 => total8,
  #dir_name9 => total9
}
pp result
end
