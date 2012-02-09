source 'http://rubygems.org'


gem 'rails', '3.1.1'
gem 'gravatar_image_tag', '1.0.0.pre2'
gem 'will_paginate', '3.0.pre2'

#Bugfix 3 : Gemfile getouched, danach git push heroku
group :production do 
  gem 'pg'
  gem 'uglifier'
#  gem 'therubyracer' #because of error "ActionView::Template::Error (no such file to load -- uglifier"
end

group :development, :test do
 gem 'sqlite3'
end

group :development do
gem 'rspec-rails', '2.6.1'
gem 'annotate', '2.4.0'
gem 'faker', '0.3.1'
end

group :test do
gem 'rspec-rails', '2.6.1'
gem 'webrat', '0.7.1'
end

gem 'fancybox-rails'
gem 'jquery-rails'

# gem 'uglifier' #causes crash on heroku
