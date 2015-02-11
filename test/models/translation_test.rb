require 'test_helper'

class TranslationTest < ActiveSupport::TestCase
  should belong_to(:dictionary).inverse_of(:translations)

  should validate_presence_of(:dictionary)
  should validate_presence_of(:source)
  should validate_presence_of(:destination)
end
