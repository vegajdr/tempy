source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3', '>= 6.0.3.3'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

gem 'faraday'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'pry-rails', '~> 0.3.9'
gem 'cancancan', '~> 3.0'
gem 'rolify', '~> 5.2'
gem 'panko_serializer', '~> 0.7.3'
gem 'watir', '~> 6.16', '>= 6.16.5'
gem 'watir-web_scraper', git: 'git@github.com:CustomComm/watir-web_scraper.git', tag: 'v0.3.1'
gem 'interactor', '~> 3.1', '>= 3.1.1'
gem 'devise', '~> 4.7.1'
gem 'activerecord-query_object', github: 'vegajdr/activerecord-query_object'
gem 'slim-rails', '~> 3.1.3'
group :development do
  gem 'brakeman', '~> 4.3', '>= 4.3.1', require: false
end

group :development, :test do
  gem 'pry-byebug', '~> 3.6'
  gem 'database_cleaner', '~> 1.7'
  gem 'factory_bot_rails', '~> 4.11', '>= 4.11.1'
  gem 'rspec-rails', '4.0.0.beta4'
  gem 'bullet', '~> 6.1.0'
  gem 'reek', '~> 5.3', require: false
  gem 'rubocop', '~> 0.65.0', require: false
  gem 'rubocop-rspec', '~> 1.32', require: false
end

group :test do
  gem 'shoulda-callback-matchers', '~> 1.1', '>= 1.1.4', require: false
  gem 'shoulda-matchers', '~> 4.0.1', require: false
  gem 'vcr', '~> 4.0', require: false
  gem 'webmock', '~> 3.5', '>= 3.5.1'
  gem 'simplecov', '~> 0.16.1', require: false
end
