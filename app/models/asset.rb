class Asset < ActiveRecord::Base
  belongs_to :note
  mount_uploader :file, FileUploader
end
