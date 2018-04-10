source 'https://rubygems.org'

gem 'sinatra'
gem 'sinatra-contrib'
gem 'sqlite3'
gem 'activerecord'
gem 'sinatra-activerecord'

group :production do
  gem 'pg'
  gem "dm-postgres-adapter"
end

group :development, :test do
  gem 'sqlite3'
  gem "dm-sqlite-adapter"
  gem 'tux'
end