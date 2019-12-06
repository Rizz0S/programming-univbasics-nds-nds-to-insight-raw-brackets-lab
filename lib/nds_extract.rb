$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"

  result = {
    name: [],
    profit: []
  }

  dir_index = 0

  while dir_index <= nds.length do
    mov_index = 0
    total_profit = 0
    while mov_index < nds[0][:movies].count do
      total_profit += nds[0][:movies][mov_index][:worldwide_gross]
      mov_index += 1
    end
    result[:name][dir_index] = nds[dir_index][:name]
    result[:profit][dir_index] = total_profit
    dir_index += 1
  end

  result
end

directors_totals(directors_database)
