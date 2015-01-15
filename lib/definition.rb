class Definition
@@definition = []

  define_method(:initialize) do |definition, language|
    @definition = definition
    @language = language
    @id = @@definition.length().+(1)
  end

  define_method(:definition) do
    @definition
  end

  define_method(:language) do
    @language
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:all) do
    @@definition
  end

  define_method(:save) do
    @@definition.push(self)
  end

  define_singleton_method(:clear) do
    @@definition = []
  end

  define_singleton_method(:find) do |id|
    found_definition = nil
    @@definition.each() do |definition|
      if definition.id().eql?(id)
        found_definition = definition
      end
    end
    found_definition
  end

end
