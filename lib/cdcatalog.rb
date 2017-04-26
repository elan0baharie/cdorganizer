class NewCD
@@cds = []

  define_method(:initialize) do |title|
    @title = title
    @artist = []
    @id = @@cds.length + 1
  end

  define_method(:title) do
    @title
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:all) do
    @@cds
  end

  define_method(:save) do
    @@cds.push(self)
  end

  define_singleton_method(:clear) do
    @@cds = []
  end

  define_singleton_method(:find) do |single_cd|
    found_cd = ""
    @@cds.each() do |cds|
      if cds.id().eql?(single_cd.to_i())
        found_cd = cds
      end
    end
    found_cd
  end

end
