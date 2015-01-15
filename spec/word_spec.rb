require('rspec')
require('dictionary')
require('pry')
require('word')

describe(Word) do
  before() do
    Word.clear()
  end

  describe('#word') do
    it("returns the word of the term") do
      test_word = Word.new("carrot", "English")
      expect(test_word.word()).to(eq("carrot"))
    end
  end

  describe('#id') do
    it("returns the id of the word") do
      test_word = Word.new("carrot", "English")
      expect(test_word.id()).to(eq(1))
    end
  end

  describe("#save") do
    it("adds a word to the array of class Word array") do
      test_word = Word.new("carrot", "English")
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Word.all()).to(eq([]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved words") do
      Word.new("carrot", "English").save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe(".find") do
    it("returns a word by its id number") do
      test_word = Word.new("carrot","English")
      test_word.save()
      test_word1 = Word.new("parsnip","English")
      test_word1.save()
      expect(Word.find(test_word.id())).to(eq(test_word))
    end
  end
end
