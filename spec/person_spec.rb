require 'rails_helper'
#require './person'

class Person
	def initialize(name:, age:)
	  @name = name.to_s
	  @age = age.to_i
	end
  
	def first_name
	  @name.split(' ').first
	end
  
	def last_name
	  @name.split(' ').last
	end
  
	def adult?
	  @age >= 18
	end
  end
RSpec.describe Person, type: :feature do
	describe '#first_name' do
	  it 'returns first part of the name' do
		person = Person.new(name: 'John Doe', age: 21)
    	expect(person.first_name).to eq('John')
	  end
	end
   end