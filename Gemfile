source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 4.2.7.1'
#Rails gem of the Bootstrap based admin theme SB Admin 2
gem 'bootstrap_sb_admin_base_v2'
#Manage Procfile-based applications
gem 'foreman'
#Localization for rails
gem 'rails-i18n'
#Flexible authentication solution for Rails with Warden
gem 'devise'
#Minimal authorization through OO design and pure Ruby classes
gem "pundit"
#i18n for devise
gem 'devise-i18n'
#Help ActiveRecord::Enum feature to work fine with I18n and simple_form.
gem 'enum_help'
#O Lero-lero Generator é uma ferramenta capaz de gerar frases que 'falam' muita coisa mas que não tem conteúdo algum.
gem 'lerolero_generator'
#Integration of RubyMoney - Money with Rails
gem 'money-rails', '~>1'
#Easy file attachment management for ActiveRecord https://thoughtbot.com/open-source
gem 'paperclip', '~> 5.2.1'
#The safe Markdown parser, reloaded.
gem 'redcarpet'
#FriendlyId is the “Swiss Army bulldozer” of slugging and permalink plugins for ActiveRecord
gem 'friendly_id'
#If Turbolinks are not enough for you. Wiselinks makes your application work faster.
gem 'wiselinks'
#A Scope & Engine based, clean, powerful, customizable and sophisticated paginator for Ruby webapps
gem 'kaminari'
#I18n for gem kaminari
gem 'kaminari-i18n'
gem 'ratyrate'
#Faker data
gem 'faker'
gem 'doctor_ipsum'

source 'https://rails-assets.org' do
  #Bootstrap for rails
  gem 'rails-assets-bootstrap', '3.3.7'
  #Bootstrap Notify
  gem 'rails-assets-bootstrap.growl'
  # Animate CSS
  gem 'rails-assets-animate-css'
  #Wrappers for JavaScript alert(), confirm() and other flexible dialogs using Twitter's bootstrap framework
  gem 'rails-assets-bootbox'
  #Bootstrap Markdown
  gem 'rails-assets-bootstrap-markdown'
  #Plugin for Bootstrap Markdown
  gem 'rails-assets-marked'
  #jQuery Raty - A Star Rating Plugin
  gem 'rails-assets-raty'
end

# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'better_errors'
  # Generate Entity-Relationship Diagrams for Rails applications
  gem 'rails-erd'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  gem 'mailtrap'
  gem 'capistrano', '~> 3.7'
  gem 'capistrano-bundler', '~> 1.2'
  gem 'capistrano-rails', '~> 1.2'
  gem 'capistrano-rbenv'
  gem 'capistrano3-unicorn'
end

group :production do
  #MySQL Adapter
  gem 'mysql2', '~> 0.3.18'
  # Use Unicorn as the app server
  gem 'unicorn'

end

