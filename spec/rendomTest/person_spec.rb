require 'rails_helper'
require './spec/rendomTest/person'

RSpec.describe Person, type: :feature do
	describe '#first_name' do
	  it 'returns first part of the name' do
		person = Person.new(name: 'John Doe', age: 21)
    	expect(person.first_name).to eq('John')
	  end
	end
   end