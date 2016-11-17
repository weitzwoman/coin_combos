class Fixnum
  define_method(:coin_combination) do
    total_coins = self
    penny = 1
    nickel = 5
    dime = 10
    quarter = 25

    penny_Counter = 0
    nickel_Counter = 0
    dime_Counter = 0
    quarter_Counter = 0

    until total_coins < 25 do
      quarter_Counter += 1
      total_coins = total_coins - quarter
    end

    until total_coins < 10 do
      dime_Counter += 1
      total_coins = total_coins - dime
    end

    until total_coins < 5 do
      nickel_Counter += 1
      total_coins = total_coins - nickel
    end

    until penny % (total_coins + 1) == 0 do
      penny_Counter += 1
      total_coins = total_coins - penny
    end

    "#{quarter_Counter} quarters, #{dime_Counter} dimes, #{nickel_Counter} nickels, #{penny_Counter} pennies"
  end
end
