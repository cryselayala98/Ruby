# this class is to make sentences and read and verify advanced inputs

class Sentence
  # we take the ['direction', 'north'] pairs and convert them
  # to subject verb and object 
  def initialize(subject, verb, number, object)
    # the parameters are 2 element arrays, 
    # with the index 0 holding the type of word it is
    # to get the word, we need index 1
    @subject = subject[1]
    @verb = verb[1]
    @number = number[1]
    @object = object[1]
  end

  attr_reader :subject, :verb, :object, :number
end