# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  author     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image_url  :string(255)
#

require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
