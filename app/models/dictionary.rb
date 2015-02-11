class Dictionary < ActiveRecord::Base
  has_many :translations, inverse_of: :dictionary

  accepts_nested_attributes_for :translations

  validates :title, presence: true
  validates :permalink, presence: true, uniqueness: true

  before_validation :generate_permalink, on: :create

  def to_param
    permalink
  end

  private

  def generate_permalink
    self.permalink = loop do
      random_token = [0..9, 'a'..'z', 'A'..'Z'].map(&:to_a).flatten.sample(11).join
      break random_token unless self.class.exists?(permalink: random_token)
    end
  end
end
