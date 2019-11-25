require 'test_helper'

class CarTest < ActiveSupport::TestCase
  test "should not save blank car" do
    car = Car.new
    assert_not car.save
  end

  test "should not save car with short vin" do
    car1 = cars(:one)
    assert car1.save

    car2 = cars(:shortvin)
    assert_not car2.save
  end

  test "should not save car with long vin" do
    car = cars(:longvin)
    assert_not car.save
  end

  test "should not save car with no name" do
    car = cars(:noname)
    assert_not car.save
  end

  test "should not save car with string vin" do
    car = cars(:alphavin)
    assert_not car.save
  end
end
