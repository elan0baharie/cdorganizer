require('rspec')
require('cdcatalog')
require('./lib/cdcatalog.rb')
require('pry')

describe(NewCD) do

  before() do
    NewCD.clear()
  end

  describe("#title") do
    it("will return the name of the cd") do
      test_cd_cataloger = NewCD.new("Ace of Base")
      expect(test_cd_cataloger.title()).to(eq("Ace of Base"))
    end
  end

  describe(".all") do
    it("will list be empty att first") do
      expect(NewCD.all()).to(eq([]))
    end
  end

  describe(".clear") do
    it("will clear all entries") do
      NewCD.new("Ace of Base").save()
      NewCD.clear()
      expect(NewCD.all()).to(eq([]))
    end
  end

  describe("#id") do
    it("returns the id of the vehicle") do
      test_cd_cataloger = NewCD.new("Ace of Base")
      test_cd_cataloger.save()
      expect(test_cd_cataloger.id()).to(eq(1))
    end
  end

  describe('.find') do
    it ("will select specified object by instantiated id") do
      test_cd = NewCD.new("Ace of Base")
      test_cd.save()
      test_cd2 = NewCD.new("Magic Kingdom")
      test_cd2.save()
      puts NewCD.all()
      expect(NewCD.find(test_cd.id())).to(eq(test_cd))
    end
  end

end
