require('rspec')
require('coin')
require('pry')

describe('Fixnum#coin_combination') do

  it('Returns number of pennies to make change and type of that coin') do
    expect((3).coin_combination()).to(eq('0 quarters, 0 dimes, 0 nickels, 3 pennies'))
  end

  it('Returns number of nickels and pennies to make change and type of coins') do
    expect((8).coin_combination()).to(eq('0 quarters, 0 dimes, 1 nickels, 3 pennies'))
  end

  it('Returns number of dimes, nickels and pennies to make change and type of coins') do
    expect((18).coin_combination()).to(eq('0 quarters, 1 dimes, 1 nickels, 3 pennies'))
  end

  it('Returns number of dimes, nickels and pennies to make change and type of coins') do
    expect((41).coin_combination()).to(eq('1 quarters, 1 dimes, 1 nickels, 1 pennies'))
  end

end
