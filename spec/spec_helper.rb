RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
  config.after(:each, type: :controller) do
   SmarfDoc.run!(request, response)
  end

  config.after(:suite) { SmarfDoc.finish! }
end
