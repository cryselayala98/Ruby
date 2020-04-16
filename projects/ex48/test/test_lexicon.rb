# para ejecutar los casos ruby
# $ ruby test_lexicon.rb 

require 'test/unit'
require_relative "../lib/lexicon"

class LexiconTests < Test::Unit::TestCase

    Pair = Lexicon::Pair # acceder al atributo Pair de la clase Lexicon
    @@lexicon = Lexicon.new() # manejar el objeto como si fuera la clase (variable estática)


    # scan es una funcionalidad de la clase Lexicon 
    def test_directions()
        assert_equal([Pair.new(:direction, 'north')], @@lexicon.scan("north"))

        result = @@lexicon.scan("north south east")
        assert_equal(result, [Pair.new(:direction, 'north'),
        Pair.new(:direction, 'south'),
        Pair.new(:direction, 'east')])
    end

    def test_verbs()
        assert_equal(@@lexicon.scan("go"), [Pair.new(:verb, 'go')])

        result = @@lexicon.scan("go kill eat")
        assert_equal(result, [Pair.new(:verb, 'go'),
        Pair.new(:verb, 'kill'),
        Pair.new(:verb, 'eat')])
    end

    def test_stops()
        assert_equal(@@lexicon.scan("the"), [Pair.new(:stop, 'the')])

        result = @@lexicon.scan("the in of")
        assert_equal(result, [Pair.new(:stop, 'the'),
        Pair.new(:stop, 'in'),
        Pair.new(:stop, 'of')])
    end

    def test_nouns()
        assert_equal(@@lexicon.scan("bear"), [Pair.new(:noun, 'bear')])

        result = @@lexicon.scan("bear princess")
        assert_equal(result, [Pair.new(:noun, 'bear'),
        Pair.new(:noun, 'princess')])
    end

    def test_numbers()
        assert_equal(@@lexicon.scan("1234"), [Pair.new(:number, 1234)])

        result = @@lexicon.scan("3 91234")
        assert_equal(result, [Pair.new(:number, 3),
        Pair.new(:number, 91234)])
    end

    def test_errors()
        assert_equal(@@lexicon.scan("ASDFADFASDF"), [Pair.new(:error, 'ASDFADFASDF')])
        
        result = @@lexicon.scan("bear IAS princess")
        assert_equal(result, [Pair.new(:noun, 'bear'),
        Pair.new(:error, 'IAS'),
        Pair.new(:noun, 'princess')])
    end
end