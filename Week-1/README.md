# Week One

## Tuesday, 25th June

### Morning, Debugging
- Slow start with the FizzBuzz task.
- Then enjoyed completing the Cipher challenge as I built my understanding. Using p was helpful.

#### Afternoon, Boris Bikes
- Teamed up with Ted and Ian.
- Hands on with TDD. I didn't test out much of the syntax, however found that using this really broke the task down. Through this technique, we were just figuring out what tests to run.

## Wednesday, 26th June

### Morning, Class research
- Submitted article to Makers blog.
- Spent working on classes. I was (still am) confused about how they worked. This was when introducing instance variables and accessors.
- I found in this session that this is when getter and setters are used.
- Instance variables. These are visible throughout the object. Gives a variable when creating a new instance of the class object.

### Afternoon, Boris Bikes.
- Worked with Dan.
- Testing on the dock method. Here, we were checking if there is a bike there and it would take a bike parameter which would be assigned to a bike instance variable.
- Created a guard condition. This is the first point of contact in a method and will catch out if there is already a bike in the bay.

#### Feedback
- From Dan.
- very thorough and patient with me whilst I struggled to understand everything we were covering. As a dev I could see that this patience would be an exceptional trait. Love also that you're keen to understand more of the 'why' on the learnings, not just the how.
- One thing to keep doing - being kind in your way of communicating
- One thing to look at changing - be confident to read through the exercise (and even the next exercise) and come back to a problem with a wider understanding.

## Thursday, 27th June

### Morning, TDD Workshop
- Attended the TDD workshop with Sophie. Here, we looked at how we would approach the Roman Numerals task from a TDD perspective.
- Importance given to breaking it down to little steps and making sure it passes. Eventually you'll refactor.

### Morning, Birthday Task
- Mission to build a programme which creates a list of friends and records their birthdays.
- Aim of the task is to get us to think about TDD. I wasted sometime having spaces in places I didn't need, and no spaces in places I did need. No method error would come up in this case. The finished test is shown below:

```
describe '#print_friends' do
  it 'prints a tidy list of friends' do
    friend = Friends.new
    friend.add_entry('Leo', '24 June 1987')
    expect { friend.print_friends }.to output("Leo: 24 June 1987\n").to_stdout
  end
end
```

- Test was failing when I didn't have spaces around the block.

### Afternoon, Boris Bikes
- Worked with Toby.
- He had made it further than me the previous day and took on more of a navigating role.
- Made it to stage 18. This was rather tricky and starts to deal with the dreaded prospect of a broken bike. We used a each loop to move them into a working and broken array.

## Friday, 28th June

### Morning, Goal Setting and Retrospective
- First retrospective. Mentioned in here I was feeling so so with the idea of classes. There were times when I was doing the Boris task when I felt a little lost.

### Afternoon, Boris Bikes
- Worked with Kaja.
- Main thing I learned was mocking. We introduced stubbing to the spec file and this was really useful for the weekend challenge, airport.

## Saturday and Sunday, 29th and 30th June

### Airport Challenge
- Slow start but got the hand of it towards the end. Used mocking to isolate my tests. Shown below.
```
it 'raises error if plane no longer at airport' do
      weather = double(:weather)
      allow(weather).to receive(:stormy?).and_return(false)
      plane = double(:plane)
      subject.plane_land(plane, weather)
      subject.plane_depart(plane, weather)
      expect { subject.plane_depart(plane, weather) }.to raise_error 'Plane no longer here'
    end
```
 - It uses a test double. This is essentially an object that stands for another object.
 - Included is a method stub. This is on line 76, where the method stormy? receives the value false.
 - This, therefore, means that there is a hypothetical situation in which my test would fail.
