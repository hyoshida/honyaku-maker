class Dictionary < ActiveRecord::Base
  has_many :translations, inverse_of: :dictionary

  validates :title, presence: true
  validates :permalink, presence: true, uniqueness: true
end
