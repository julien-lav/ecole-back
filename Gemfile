
source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails',        '5.1.4'
gem 'puma',         '3.9.1'
gem 'bootstrap-sass', '3.3.7'
gem 'sass-rails',   '5.0.6'
gem 'uglifier',     '3.2.0'
gem 'coffee-rails', '4.2.2'
gem 'jquery-rails', '4.3.1'
gem 'bcrypt',       '3.1.7'
gem 'turbolinks',   '5.0.1'
gem 'jbuilder',     '2.7.0'
gem "simple_calendar", '2.0'
gem 'simple_form'
gem 'slim-rails'
gem 'mail_form'
gem 'kaminari'

#gem 'devise'
#gem 'react-rails'

group :development, :test do
  gem 'byebug',  '9.0.6', platform: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '2.13'
  gem 'sqlite3', '1.3.13'
  gem 'selenium-webdriver'
  gem 'letter_opener_web'
end

group :development do
  gem "better_errors"
  gem 'web-console',           '3.5.1'
  gem 'listen',                '3.1.5'
  gem 'spring',                '2.0.2'
  gem 'spring-watcher-listen', '2.0.1'
end

group :test do
  gem 'rails-controller-testing', '1.0.2'
  gem 'minitest-reporters',       '1.1.14'
  gem 'guard',                    '2.13.0'
  gem 'guard-minitest',           '2.4.4'
end

group :production do
  gem 'pg', '0.21.0'
  gem 'rails_12factor'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
