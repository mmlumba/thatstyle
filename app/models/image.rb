class Image < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader
  validates :name, presence: true

  belongs_to :stylist
end
