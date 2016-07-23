class Store < ActiveRecord::Base
  validates(:name, {:presence => true, :length => {:maximum => 100 }})
  has_and_belongs_to_many(:brands)

  before_save(:capitalize_name)

  private

  define_method(:capitalize_name) do
    self.name=(name().capitalize())
  end
end
