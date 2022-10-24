# Your code goes here!
require 'pry'

class Anagram
  attr_accessor :arr

  def initialize word
    @word = word
  end

  def match arr
    match_this = @word.split("").sort.join
    sorted_arr = arr.map do |word|
      word.split("").sort.join
    end
    @index = 0
    matching_arr = []

    sorted_arr.filter do |word|
      if word == match_this
        matching_arr.push (arr[@index])
        @index+=1
      else 
        @index+=1
      end
    end
    return matching_arr

  end

    
end

a1 = Anagram.new("listen")
a1.match(%w[enlists google inlets banana nestil])
