require('rspec')
require('coin_counter')

describe('Float#coin_counter') do
  it("will count pennies up to .99") do
    expect(.99).coin_counter())to(eq(99))
  end
  it("will return a string that says the number of pennies")
    expect(.99().coin_counter()).to(eq("99 pennies"))
  end
  # it("will count nickels and pennies up to .99 using the smallest number of coins") do
  #   expect(.99).coin_counter())to(eq("19 nickels and 4 pennies"))
end
