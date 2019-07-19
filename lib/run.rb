require_relative 'song.rb'
require 'pry'


Song.new({name: "Holiday in Cambodia", artist: "Dead Kennedys", genre: "Rock"})
Song.new({name: "Moon Over Marin", artist: "Dead Kennedys", genre: "Rock"})
Song.new({name: "Seek & Destroy", artist: "Metallica", genre: "Metal"})

binding.pry
puts "done"