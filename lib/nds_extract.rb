$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
directors_hash = {}
temp_array = []
 row_index = 0 
 while row_index < nds.length do 
   temp_array.push(nds[row_index][:name])
   #total of each director
   total = 0
   inner_len = nds[row_index][:movies].length
    column_index = 0 
    while column_index < inner_len do 
      total += nds[row_index][:movies][column_index][:worldwide_gross]
    column_index += 1 
    end
    temp_array.push(total)
 row_index += 1
 end
puts temp_array
i = 0
while i < temp_array.length do 
  directors_hash[temp_array[i]] = temp_array[i+1]
  i += 2
end
directors_hash
end