require('rspec')
require('sphinx')
describe('Sphinx#ask_riddle') do
  it('displays a riddle') do
  sphinx = Sphinx.new()
  expect(sphinx.ask_riddle()).to(eq("Can you name three consecutive days without using the words Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, or Sunday?"))
  end
end
