ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
# require "rails/test_help"

# Use Minitest directly (no rails/test_help, which can pull in AR paths)
require "minitest/autorun"

# Integration testing support from Action Pack (does NOT require Active Record)
require "action_dispatch/testing/integration"

# Optional: parallelization without DB (use threads, not processes)
require "active_support/testing/parallelization"

module ActiveSupport
  class TestCase
    # Run tests in parallel with specified workers
    # parallelize(workers: :number_of_processors)
    # parallelize(workers: :number_of_processors, with: :threads)
    parallelize(workers: 1)  # effectively disabled



    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    # fixtures :all

    # ✅ Do not try to wrap tests in DB transactions
    if respond_to?(:use_transactional_tests=)
        self.use_transactional_tests = false
    end

    # Add more helper methods to be used by all tests here...
  end
end
