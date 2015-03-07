class Vehicle
  def initialize(make, model, year)
    @year = year
    @make = make
  end

  def age
    current_year = Time.new().year()
    current_year - @year
  end

  def worth_buying?
    american_cars = ["Chrysler", "Ford", "GM"]
    american = american_cars.include?(@make)
    new_enough = self.age() <= (15)
    american.&(new_enough)
  end
end
