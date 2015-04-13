require "test_helper"

class GeneratedNameTest < ActiveSupport::TestCase

  def generated_name
    @generated_name ||= GeneratedName.new
  end

  def test_valid
    assert generated_name.valid?
  end

end
