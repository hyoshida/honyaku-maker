require 'test_helper'

class DictionaryTest < ActiveSupport::TestCase
  subject { FactoryGirl.build(:dictionary) }

  should have_many(:translations).inverse_of(:dictionary)

  should validate_presence_of(:title)
  # Comment out, because generate a unique permalink automatically.
  # should validate_presence_of(:permalink)
  # should validate_uniqueness_of(:permalink)
end
