require('rspec')
require('dictionary')
require('pry')
require('definition')

describe(Definition) do
  before() do
    Definition.clear()
  end

  describe('#definition') do
    it("returns the word of the term") do
      test_definition = Definition.new("an orange vegetable", "English")
      expect(test_definition.definition()).to(eq("an orange vegetable"))
    end
  end

  describe('#id') do
    it("returns the id of the word") do
      test_definition = Definition.new("an orange vegetable", "English")
      expect(test_definition.id()).to(eq(1))
    end
  end

  describe("#save") do
    it("adds a word to the array of class Word array") do
      test_definition = Definition.new("an orange vegetable", "English")
      test_definition.save()
      expect(Definition.all()).to(eq([test_definition]))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Definition.all()).to(eq([]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved words") do
      Definition.new("an orange vegetable", "English").save()
      Definition.clear()
      expect(Definition.all()).to(eq([]))
    end
  end

  describe(".find") do
    it("returns a word by its id number") do
      test_definition = Definition.new("an orange vegetable","English")
      test_definition.save()
      test_definition1 = Definition.new("a white vegetable","English")
      test_definition1.save()
      expect(Definition.find(test_definition.id())).to(eq(test_definition))
    end
  end
end
