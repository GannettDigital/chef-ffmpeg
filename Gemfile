source 'https://rubygems.org'

gem 'berkshelf'
gem 'coveralls', require: false
gem 'rubocop', '0.33.0'

group :development do
  gem 'test-kitchen'
  gem 'webmock'
  gem 'kitchen-vagrant'
  gem 'fauxhai'
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-kitchen'
  gem 'guard-foodcritic', '>= 1.0'
  gem 'foodcritic', '>= 3.0'
  gem 'chefspec', '>= 3.1'
end

group :integration do
  gem 'serverspec'
  gem 'test-kitchen'
  gem 'kitchen-vagrant'
  gem 'kitchen-ec2'
end
