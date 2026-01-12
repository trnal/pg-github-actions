# config/application.rb

require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "action_controller/railtie"
require "action_view/railtie"
require "action_mailer/railtie"      # optional, remove if not using email
require "active_job/railtie"         # optional, remove if not using background jobs
require "action_cable/engine"        # optional, websockets
# require "sprockets/railtie"        # only if using asset pipeline (ERB/CSS/JS)
# DO NOT require "active_record/railtie"
# DO NOT require "active_storage/engine" if not using file uploads
# DO NOT require "action_mailbox/engine" or "action_text/engine" unless needed

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PgGithubActions
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 8.1

    # Please, add to the `ignore` list any other `lib` subdirectories that do
    # not contain `.rb` files, or that should not be reloaded or eager loaded.
    # Common ones are `templates`, `generators`, or `middleware`, for example.
    config.autoload_lib(ignore: %w[assets tasks])

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
