$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the ...   ...  ...
  # Be sure to return the result at the end!
  result = {}
  column_index = 0
      while column_index < directors_name.length do
            directors_name = directors_database[column_index][:name]
            result[:directors_name] = directors_name[column_index][:movie][:worlwide_gross]
            total += directors_name[column_index][:movie][:worlwide_gross]
            column_index += 1
      end

end      
return result
return total

