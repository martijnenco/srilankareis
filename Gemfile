# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap'
# Use Redis adapter to run Action Cable in production
# gem 'redis'
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
# gem 'turbo-rails'
# Use Active Model has_secure_password
# gem 'bcrypt'
# Use Active Storage variant
gem 'image_processing'

# I18n
gem 'route_translator', '~> 14.1'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Frontend
gem 'heroicon', '~> 1.0'
gem 'importmap-rails'
gem 'sassc-rails'
gem 'sass-rails'
gem 'simple_form', '~> 5.3'
gem 'simple_form_tailwind_css', '~> 1.0'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'tailwindcss-rails', '~> 2.0'
gem 'turbo-rails', '~> 2.0.0.pre.beta'

gem 'sentry-rails'
gem 'sentry-ruby'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console' # currently not working with truffleruby
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  # gem 'rack-mini-profiler'
  gem 'listen'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # rubocops
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rake', require: false

  # debugging
  gem 'ruby-lsp'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara'
  gem 'selenium-webdriver'
end
