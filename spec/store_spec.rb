require("spec_helper")

describe(Store) do
  describe ("#brands") do
    it("belongs to a brand") do
      test_brand1 = Brand.create({:name => "nike"})
      test_store = Store.create({:name => "Wholesale"})
      test_store.brands.push(test_brand1)
      expect(test_store.brands()).to(eq([test_brand1]))
    end
  end
end
