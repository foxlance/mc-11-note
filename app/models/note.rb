class Note < ActiveRecord::Base
    belongs_to :user
    has_many :assets

    validates :title, :content, presence: :true, length: {minimum: 5}
end
