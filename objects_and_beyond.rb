class Vehicle
    def initialize
        @type
        @wheels
        @model_year = 'none'
        @brand = 'none'
        @accelration = 0
        @braking = 0
        @speed = 0
        @lights = 'off'
    end
    def to_s
        "#{@brand} | Type: #{@type} | Wheels: #{@wheels} | Year Model: #{@model_year} | lights: #{@lights} | Current speed: #{@speed}"
    end
    def toggle_lights
        @lights == 'off' ? (@lights='on') : (@lights='off')
    end
    def accelrate
       @speed = @speed.to_f + @accelration.to_f
    end
    def brake
        @speed.to_f >= @breaking.to_f ? (@speed = @speed.to_f - @breaking.to_f) : (@speed = 0.0)
    end
    def year
       @model_year.to_i 
    end
end

class Car < Vehicle
    def initialize
        super()
        @type = 'Car'
        @wheels = 4
    end

end

class Tesla < Car
    def initialize(year)
        super()
        @model_year = year
        @brand = 'Tesla'
        @accelration = 10
        @breaking = 7
    end
end

class Honda < Car
    def initialize(year)
        super()
        @model_year = year
        @brand = 'Honda'
        @accelration = 2
        @breaking = 1.25
    end
end

class Toyota < Car
    def initialize(year)
        super()
        @model_year = year
        @brand = 'Toyota'
        @accelration = 7
        @breaking = 5
    end
end

tesla1 = Tesla.new 2017
tesla2 = Tesla.new 2018
honda1 = Honda.new 1998
honda2 = Honda.new 2016
toyota1 = Toyota.new 2008
toyota2 = Toyota.new 2002


my_cars = [tesla1,tesla2,honda1,honda2,toyota1,toyota2]

puts my_cars