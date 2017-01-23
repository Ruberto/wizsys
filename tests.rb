require_relative './wizard'

# What is wrong with this spec?
# What does it tell us about the code we are working with?
# How can we improve this test?

describe 'Wizzards going to schools that may be good for them' do
  context 'a wizzard goes to school ' do
    it 'goes to school and gets accepted' do
      expect(Wizard.new("Humpfry Bumblebat", [1,9,0,3,6,0,8,0,0,0,0,0,0]).best_school).to eq ('Congradulations Humpfry Bumblebat, You have been accepted at Beauxbatons Academy of Magic, which is in Pyrenees, France.')
    end
  end
end


# Add specs for your refactorings here
