require 'exercise_2'



describe Diary do
  describe '#add' do
    it 'adds entries to diary' do
      entry_double = double :entry
      entry_class_double = double :entry_class, new: entry_double

      diary = Diary.new
      

      expect(entry_double).to receive(:add)
      diary.
      allow(entry_double).to receive(:initialize).with(2).arguments
      subject.add('Title', 'Body', entry_double)
      expect(subject).to respond_to(:add).with(3).arguments
    end
  end
end

#
# describe CarFactory do
#   describe "#make_a_car" do
#     it "makes a car" do
#       car_double = double :car
#       car_class_double = double :car_class, new: car_double
#
#       car_factory = CarFactory.new(car_class_double)
#
#       expect(car_double).to receive(:drive_away)
#       car_factory.make_a_car
#     end
#   end
# end
