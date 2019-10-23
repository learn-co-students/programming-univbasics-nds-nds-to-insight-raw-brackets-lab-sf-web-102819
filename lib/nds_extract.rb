$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  pp directors_database
  director_earnings = {}
  director_index = 0 
  while director_index < nds.length do
    movie_index = 0 
    number_of_movies = nds[director_index][:movies].length
    total_director_earnings = 0
    while movie_index < number_of_movies do
      current_movie_earnings = nds[director_index][:movies][movie_index][:worldwide_gross]
      total_director_earnings += current_movie_earnings
      movie_index += 1
    end
    director_earnings[nds[director_index][:name]] = total_director_earnings
    director_index += 1
  end
  director_earnings
end
