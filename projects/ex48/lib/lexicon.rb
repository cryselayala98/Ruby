class Lexicon

    Pair = Struct.new(:token,:word) # otro tipo de estructura en ruby
  
    def initialize
  
      @words = %w[north south east west down up left right back] # un array de strings
      @verbs = %w[go stop kill eat]
      @stop_words = %w[the in of from at it]
      @nouns = %w[door bear princess cabinet nose]
      @number_pattern = "[0-9]+"
  
    end
  
    def scan(input)
  
      sentence = []
  
      words = input.split
  
      words.each do |word|
  
      word_d  = word.downcase # convertir a minusculas
  
      if @words.include? word_d
        sentence.push(Pair.new(:direction,word))
      elsif @verbs.include? word_d
        sentence.push(Pair.new(:verb,word))
      elsif @stop_words.include? word_d
        sentence.push(Pair.new(:stop,word))
      elsif @nouns.include? word_d
        sentence.push(Pair.new(:noun,word))
      elsif word.match(@number_pattern)
        sentence.push(Pair.new(:number,word.to_i))
      else
        sentence.push(Pair.new(:error,word))
      end
     end
  
      sentence # retornar la lista de palabras, cada una revisada por su token
    end
  
  end