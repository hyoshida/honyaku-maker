class Translation < ActiveRecord::Base
  belongs_to :dictionary, inverse_of: :translations

  validates :dictionary, presence: true
  validates :source, presence: true
  validates :destination, presence: true
end
