
class Diary

  attr_reader :entries

  def initialize
    @entries = []
  end

  def add(title, body, entry = Entry)
    @entries << entry.new(title, body)
  end

  def index
    titles = @entries.map do |entry|
      entry.title
    end
    titles.join("\n")
  end
end

class Entry
  def initialize(title, body)
    @title = title
    @body = body
  end

  attr_reader :title, :body
end

# 
# class CarFactory
#   def initialize(car_class = Car)
#     @car_class = car_class
#   end
#
#   def make_a_car
#     car = @car_class.new
#     car.drive_away
#   end
# end
#
# class Car
#   def drive_away
#     puts '... whatever ...'
#   end
# end
