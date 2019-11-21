require 'exercise_1'

describe Note do

  describe "#diplay" do
    it "should return the formatted note" do
      formatter = double(:NoteFormatter, format: "Title: title\nbody")
      note = Note.new("title", "body", formatter)
      expect(note.display).to eq "Title: title\nbody"
    end
  end

end
