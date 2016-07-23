class Brand < ActiveRecord::Base
  validates(:name, {:presence => true, :length => {:maximum => 100 }})
  has_and_belongs_to_many(:stores)

  before_save(:capitalize_store_name)

  private

    define_method(:capitalize_store_name) do
      self.name=(name().capitalize())
  end
end
