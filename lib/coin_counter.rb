class Fixnum
  define_method(:coin_counter) do
    penny = 1
    nickel = 5
    dime = 10
    quarter = 25
    num_penny = 0
    num_nickel = 0
    num_dime = 0
    num_quarter =0
    change_owed = self
    change = []

    until change_owed.<(25)
      change_owed = change_owed.-(quarter)
      num_quarter = num_quarter.+(1)
    end
    change.push(num_quarter)
    until change_owed.<(10)
      change_owed= change_owed.-(dime)
      num_dime = num_dime.+(1)
    end
    change.push(num_dime)
    until change_owed.<(5)
      change_owed =  change_owed.-(nickel)
      num_nickel = num_nickel.+(1)
    end
    change.push(num_nickel)
    until change_owed.==(0)
      change_owed = change_owed.-(penny)
      num_penny = num_penny.+(1)
    end
    change.push(num_penny)
    change
  end
end
