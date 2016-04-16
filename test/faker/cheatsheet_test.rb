require 'test_helper'

class Faker::CheatsheetTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Faker::Cheatsheet::VERSION
  end

  def test_it_can_get_sections
    assert_respond_to Faker::Cheatsheet, :print_all 
  end
end
