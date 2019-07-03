class SecretDiary

  attr_reader :contents

  def initialize(contents)
    @contents = contents
  end

  def reverse(contents)
    @contents = contents.reverse_note(@contents)
  end

  def advancing_chars(contents)
    @contents = contents.advancing_chars_note(@contents)
  end

  def unscramble_advancing_chars(contents)
    @contents = contents.unscramble_advancing_chars_note(@contents)
  end

  def read
    @contents
  end
end

class ReverseDiary
  def reverse_note(string)
    string.reverse
  end
end

class AdvancingChars

  def initialize(steps)
    @steps = steps
  end

  def advancing_chars_note(string)
    plain_chars = string.chars
    scrambled_chars = plain_chars.map do |char|
      (char.ord + @steps).chr
    end
    string = scrambled_chars.join
  end

  def unscramble_advancing_chars_note(string)
    scrambled_chars = string.chars
    plain_chars = scrambled_chars.map do |char|
      (char.ord - @steps).chr
    end
    string = plain_chars.join
  end
end


charlie = SecretDiary.new("Charlie")
charlie.advancing_chars(AdvancingChars.new(2))
charlie.unscramble_advancing_chars(AdvancingChars.new(2))

p charlie.read
