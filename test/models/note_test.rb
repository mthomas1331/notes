require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "empty note cannot be saved" do
    note = Note.new
    note.save
    refute note.valid?

  end

  test "non empty note can be saved" do

    note = Note.new
    note.title = 'New Notes'
    note.description = 'Test case 1'

    note.save
    assert note.valid?
  end

  test "duplicate title for note" do
    note = Note.new
    note.title = 'Welcome'
    note.description = 'Test Case 3'

    note.save
    assert note.valid?

    note2 = Note.new
    note2.title = 'Welcome'
    note2.description = 'Test Case 3'

    note2.save
    refute note2.valid?

  end
end
