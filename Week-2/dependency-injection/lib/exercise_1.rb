class Note
  def initialize(title, body, noteformatter = NoteFormatter.new)
    @title = title
    @body = body
    @formatter = noteformatter
  end

  def display
    @formatter.format(self)
  end

  attr_reader :title, :body
end

class NoteFormatter
  def format(note)
    "Title: #{note.title}\n#{note.body}"
  end
end

class NewFormatter
  def format(note)
    "Body: #{note.body}"
  end
end

old_formatter = Note.new('Title', 'Body')
new_formatter = Note.new('Title', 'Body', NewFormatter.new)

puts old_formatter.display
puts new_formatter.display
