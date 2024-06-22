class Book < ApplicationRecord

  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true
  validates :opinion, presence: true

  #validates :profile_image, presence: true

end
