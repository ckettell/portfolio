require 'birthday_calculator'
require 'timecop'
require 'active_support/time'


describe BirthdayCalulator do
  subject(:my_birthday) { described_class.new("28", "November", "Charlie")}

  describe '#calculator' do
    it 'given the day and month, it returns the number of days until that date' do
      Timecop.freeze(Time.parse("27th November")) do
        expect(my_birthday.message).to include "1"

      end
    end
  end

  describe '#message' do
    it 'if today is their birthday, it will deliver a birthday message' do
      Timecop.freeze(Time.parse("28th November")) do
        expect(my_birthday.message).to eq "Happy Birthday, Charlie! Have a great day"
      end
    end

    it 'if the birthday is not today, greets the user with the number of days' do
      Timecop.freeze(Time.parse("20th November")) do
        expect(my_birthday.message).to eq "Your birthday is in 8 days, Charlie"
      end
    end
  end
end
