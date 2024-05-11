class Spec < ApplicationRecord
  belongs_to :specs_type
  validates :front, presence: true
  mount_uploader :front, FrontUploader
  mount_uploader :left, LeftUploader
  mount_uploader :right, RightUploader
  mount_uploader :back, BackUploader
end
