class Float
  define_method(:coin_counter) do
    change = 0
    penny = 0.01

    until change.==(self)
      change= change.+(penny)
    end
  end
end
