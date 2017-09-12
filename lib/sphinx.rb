class Sphinx
  def initialize
    @riddles = { "Can you name three consecutive days without using the words Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, or Sunday?" => "Yesterday, Today, and Tomorrow.", "What can travel around the world while staying in a corner?" => "A Stamp"}
  end

  def riddle()
    if @riddle1_answer == "b"
      true
    else
      false
    end
  end

  def ask_riddle
    array1 = @riddles.keys()
    question1 = array1[0]
  end
end
