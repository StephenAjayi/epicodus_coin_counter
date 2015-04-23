require('rspec')
require('coin_counter')
require('pry')

describe('Fixnum#coin_counter') do
  it("will count pennies up to four cents") do
    expect((4).coin_counter()).to(eq([0,0,0,4]))
  end
it("will count nickels and pennies up to nine cents") do
   expect((9).coin_counter()).to(eq([0,0,1,4]))
   end
   it("will return the least amount of coins using quarters, dimes, nickels and cents") do
     expect((99).coin_counter()).to(eq([3,2,0,4]))
   end
end
# # it("will count nickels and pennies up to 99 using the smallest number of coins") do
# #   expect(99).coin_counter())to(eq("19 nickels and 4 pennies"))
# end
