require 'rails_helper'

RSpec.describe User, :type => :model do
	it "requires a first name" do 
		john = User.new(first_name: nil, last_name: 'Doe',
					 email: 'john@example.com', password: 'password')

		expect(john).not_to be_valid
		expect(john.errors[:first_name].any?).to be_true
	end

	it "requires a last name" do
		john = User.new(first_name: 'John', last_name: 'Nil',
					 email: 'john@example.com', password: 'password')

		expect(john).not_to be_valid
		expect(john.errors[:last_name].any?).to be_true
	end

	it "requires an email address" do
		john = User.new(first_name: 'John', last_name: 'Doe',
					 email: nil, password: 'password')

		expect(john).not_to be_valid
		expect(john.errors[:email].any?).to be_true
	end

	it "requires a password" do
		john = User.new(first_name: nil, last_name: 'Doe',
					 email: 'john@example.com', password: nil)

		expect(john).not_to be_valid
		expect(john.errors[:password].any?).to be_true
	end
	
	describe "#full_name" do 
		it "requires a #full_name"
	end
end