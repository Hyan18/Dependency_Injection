require 'exercise_2'

describe Diary do

  describe "#add" do
    it "should add an entry to the diary" do

      entry_double = double(:entry, title: "title", body: "body")

      entry_class_double = double(:entry_class, new: entry_double)

      diary = Diary.new(entry_class_double)

      expect(diary.add("title","body")).to eq [entry_double]

    end
  end

  describe "#index" do
    it "should show the titles of each entry" do
      entry_double_1 = double(:entry, title: "title_1", body: "body_1")
      entry_double_2 = double(:entry, title: "title_2", body: "body_2")

      entry_class_double = double(:entry_class)
      allow(entry_class_double).to receive(:new).and_return(entry_double_1, entry_double_2)

      diary = Diary.new(entry_class_double)
      diary.add("title_1","body_1")
      diary.add("title_2","body_2")

      expect(diary.index).to eq "title_1\ntitle_2"
    end

  end

end
