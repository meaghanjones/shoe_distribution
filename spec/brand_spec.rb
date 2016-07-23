require("spec_helper")

describe(Brand) do
  describe ("#stores") do
    it("belongs to store") do
      test_store1 = Store.create({:name => "Wholesale"})
      test_brand = Brand.create({:name => "nike"})
      test_brand.stores.push(test_store1)
      expect(test_brand.stores()).to(eq([test_store1]))
    end
  end

  it("capitalizes the brand name") do
    test_brand = Brand.create({:name => "nike"})
    expect(test_brand.name()).to(eq("Nike"))
  end
end
