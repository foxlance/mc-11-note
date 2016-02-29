FactoryGirl.define do

  sequence(:asset_title) { |n| "Asset Title ##{n}" }

  factory :note do
    title 'Some note title'
    content 'here goes some content for the note'

    factory :note_with_assets do
      transient do
        assets_count 5
      end
      after(:create) do |note, evaluator|
        create_list :asset, evaluator.assets_count, note: note
      end
    end
  end

  factory :asset do
    file { generate(:asset_title) }
  end
end
