RSpec.configure do |config|
	#any thing in the db at begin of test suite is cleared
	 config.before(:suite) do
	  DatabaseCleaner.clean_with :truncation
	  end
	#before each test start cleaner
	  config.before(:each) do
	  DatabaseCleaner.start
	  end
	#after each test clear database
	  config.after(:each) do
	  DatabaseCleaner.clean
	  end
	end