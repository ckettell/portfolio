require 'date'
require 'active_support/time'

class BirthdayCalulator

  def initialize(day, month, name)
    @day = day
    @month = month
    @name = name
  end

  def message
    if calculator == 0
      "Happy Birthday, #{@name}! Have a great day"
    else
      "Your birthday is in #{calculator} #{day_or_days}, #{@name}"
    end
  end

  private

  def calculator
    bday = Date.new(Date.today.year, month_to_integer, date_to_integer)
    bday += 1.year if Date.today > bday
    (bday - Date.today).to_i
  end

  def date_to_integer
    @day.to_i
  end

  def month_to_integer
    Date::MONTHNAMES.index(@month)
  end

  def day_or_days
    if calculator == 1
      "day"
    else
      "days"
    end
  end
end
