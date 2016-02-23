class Note < ActiveRecord::Base
    belongs_to :user
    has_many :assets

    acts_as_paranoid

    validates :title, :content, presence: :true, length: {minimum: 5}
end
