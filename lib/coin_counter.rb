require('rspec')
require('coin_counter')

describe('Float#coin_counter') do
  it("will count pennies up to .99") do
    expect(.99).coin_counter())to(eq(99))
  end
end
