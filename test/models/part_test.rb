require 'test_helper'

class PartTest < ActiveSupport::TestCase
  test "should not create empty part" do
    emptypart = Part.new
    assert_not emptypart.save

    goodpart = parts(:one)
    assert goodpart.save
  end

  test "should not create part with no name" do
    part = parts(:noname)
    assert_not part.save
  end

  test "should not create part with no count" do
    part = parts(:nocount)
    assert_not part.save
  end

  # test "should not create part with string count" do
  #   part = parts(:stringcount)
  #   assert_not part.save
  # end

  test "should not create part with float count" do
    part = parts(:floatcount)
    assert_not part.save
  end

  test "should not create part with negative count" do
    part = parts(:negcount)
    assert_not part.save
  end
end
