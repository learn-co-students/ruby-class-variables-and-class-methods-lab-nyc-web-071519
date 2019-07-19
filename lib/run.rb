require_relative 'song.rb'
require 'pry'


Song.new({name: "We Were Young", artist: "Petit Biscuit", genre: "Electronic"})
Song.new({name: "Moon Over Marin", artist: "Dead Kennedys", genre: "Rock"})
Song.new({name: "Talk to Me You'll Understand", artist: "Ross from Friends", genre: "Electronic"})

binding.pry
puts "done"