source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'
gem "twitter-bootstrap-rails"

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views (permet d’écrire du code javascript plus concis)
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library (permet d’avoir accès à des milliers de modules en javascript (calendrier, carousel, autocomplétion etc)
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

gem "therubyracer"
gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS

# Gére touit ce qui est relatif au chargement d'images
#gem paperclip

# Pour les icones
gem "font-awesome-rails"

# Pour les formulaires
gem 'simple_form'

# Pour tout ce qui relève de l'authentification
gem 'devise'

# Pour recharger le server
gem 'shotgun'

# Pour la gestion des activités en différe (mail automatique de confrmation suite à une inscription) 
gem 'sidekiq'

# Pour la gestion des envois de mails
gem "madmimi"

gem 'libv8'

group :production do
  gem 'pg', '0.15.1'
  gem 'rails_12factor', '0.0.2'
  gem 'rails_log_stdout',           github: 'heroku/rails_log_stdout'
  gem 'rails3_serve_static_assets', github: 'heroku/rails3_serve_static_assets'
end

group :development do
  gem 'pry'
  gem 'sqlite3', '1.3.8'
  gem "rspec"
  gem "capybara"
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
