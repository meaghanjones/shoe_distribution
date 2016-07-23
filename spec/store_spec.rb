require('spec_helper')

describe(Store) do
  describe ("#brands") do
    it("belongs to a brand") do
      test_brand1 = Brand.create({:name => "nike"})
      test_store = Store.create({:name => "Wholesale"})
      test_store.brands.push(test_brand1)
      expect(test_store.brands()).to(eq([test_brand1]))
    end
  end

  it("capitalizes the first letter of the store name") do
    test_store = Store.create({:name => "dick's"})
    expect(test_store.name()).to(eq("Dick's"))
  end
end
