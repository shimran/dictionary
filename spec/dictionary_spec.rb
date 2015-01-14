require('rspec')
require('dictionary')
require('pry')

describe(Term) do
  before() do
    Term.clear()
  end

  describe('#word') do
    it("returns the word within the dictionary") do
    test_word = Term.new("carrot", "A delicious vegetable")
    expect(test_word.word()).to(eq("carrot"))
    end
  end

  describe('#definition') do
    it("returns the definition within the dictionary") do
    test_word = Term.new("carrot", "A delicious vegetable")
    expect(test_word.definition()).to(eq("A delicious vegetable"))
    end
  end

  describe('#save') do
    it("adds the word to the class variable array") do
      test_word = Term.new("carrot", "A delicious vegetable")
      test_word.save()
      expect(Term.all()).to(eq([test_word]))
    end
  end

  describe('#edit_word') do
    it("edits the word of an existing term within the dictionary") do
      test_word = Term.new("carrot", "A delicious vegetable")
      test_word.save()
      test_word.edit_word("parsnip")
      expect(test_word.word()).to(eq("parsnip"))
    end
  end

  describe('#edit_definition') do
    it("edits the definition of an existing term within the dictionary") do
      test_word = Term.new("carrot", "A delicious vegetable")
      test_word.save()
      test_word.edit_definition("A not-so delicious vegetable")
      expect(test_word.definition()).to(eq("A not-so delicious vegetable"))
    end
  end

  describe(".search") do
    it("searches the dictionary and returns both the word and definition")do
      test_word = Term.new("carrot", "A delicious vegetable")
      test_word.save()
      expect(Term.search("carrot")).to(eq(test_word))
    end
  end
  describe(".search") do
    it("searches the dictionary and deletes a word/defintion pair from the dictionary")do
      test_word = Term.new("carrot", "A delicious vegetable")
      test_word.save()
      expect(Term.delete_one("carrot")).to(eq(nil))
    end
  end


  describe(".clear") do
    it("empties out all of words from dictionary") do
      Term.new("Carrot","A delicious vegetable").save()
      Term.clear()
      expect(Term.all()).to(eq([]))
    end
  end

end
