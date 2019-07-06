require 'exercise_1'

RSpec.describe Note do
  # describe '#initialize' do
  #   it 'prints the title and body' do
  #   note = Note.new('The End', 'Body')
  #   expect(note.display).to eq "Title: The End\nBody"
  # end
  # end

  describe '#display' do
    it 'prints a different format' do
      note_title = double :noteformatter, format: "Title: "
      # title = double :noteformatter, format:(note) "Title: #{note.title}"
      note_title = Note.new("The End", "Body", note_title)
      expect(note_title.display).to eq "Title: "
    end
  end
end
