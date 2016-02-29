require "test_helper"
require_relative File.expand_path("app/lib/asset_creator.rb", Rails.root)

class AssetCreatorTest < MiniTest::Test
  def test_cannot_create_asset_on_overdue_notes
    note = create :note, updated_at: 1.day.from_now

    asset_creator = AssetCreator.new
    Timecop.travel 1.week.from_now
    # Timecop.return - to return to original time

    # puts 'Updated At: ' + note.updated_at.to_s
    refute asset_creator.execute(note, {title: "A sample asset file"}), "Expect to not be able to create asset"
  end
end
