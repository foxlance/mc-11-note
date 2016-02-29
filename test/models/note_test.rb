require 'test_helper'

# Always passes
# class NoteTest < ActiveSupport::TestCase
#   test "creates a new note" do
#     Note.create! title: "Note, a new beginning", content: 'This should suffice for content'
#     assert_equal 1, Note.count
#   end
# end

# Will fail because no clear if executed afterwards
class NoteTest < MiniTest::Test
  def test_creates_a_new_note
    Note.create! title: "Note, a new beginning", content: 'This should suffice for content'
    assert_equal 1, Note.count
  end

  def test_spawns_one_note
    create :note, name: 'This note title will override the default you set in the factory'
    assert_equal 1, Note.count
  end

  def test_spawns_one_note
    create :note_with_assets
    assert_equal 5, Asset.count
  end
end
