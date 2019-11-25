require 'test_helper'

class MakeTest < ActiveSupport::TestCase
  test "should not create empty make" do
    emptymake = Make.new
    assert_not emptymake.save

    goodmake = makes(:one)
    assert goodmake.save
  end

  test "should not create make with no country" do
    make = makes(:nocountry)
    assert_not make.save
  end

  test "should not create make with no name" do
    make = makes(:noname)
    assert_not make.save
  end

end
