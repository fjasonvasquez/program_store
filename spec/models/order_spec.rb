require 'rails_helper'

RSpec.describe Order, :type => :model do
	it { should belong_to(:user) }
	it { should have_many(:order_items) }

	it "should return the total order amount" do 
		book1 = Fabricate(:book, price: 10)
		book2 = Fabricate(:book, price: 20)
end