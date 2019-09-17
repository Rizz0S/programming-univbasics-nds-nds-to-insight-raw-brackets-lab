require 'directors_database'

def directors_totals
  nds = directors_database
  index = 0

  while index < nds.length do
    hash = {}
    director_index = 0
    name = nds[index][:name]
    movie = nds[index][:movies]
    total = 0

    while director_index < movie.length do
      total = total + movie[director_index][:worldwide_gross]
      director_index +=1
    end

    hash[name] = total
    index +=1
  end
  pp hash
end