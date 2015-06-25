use Mix.Config

# In this file, we keep production configuration with defaults that
# should not be stored in version control. By default, this file is
# 'gitignored'.
#
# It is advisable to include this in version control if you use
# the Heroku deploy button or prefer to set the `"SECRET_KEY_BASE"`
# and `"DATABASE_URL"` env variables in production instead of copying
# this file. When including this in version control, remove all
# hardcoded values for `:secret_key_base`, `:username`, `:password`,
# and `:database`.
config :testing, Testing.Endpoint,
  secret_key_base: System.get_env("SECRET_KEY_BASE") ||
    "MUTJwTdfdRuCigPSnKTzIRsGShVEOwRbHB5We4LE84SqoDD2otSkn61Oz1YRDeDp"

# Configure your database
config :testing, Testing.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL"),
  username: "postgres",
  password: "postgres",
  database: "testing_prod",
  size: 20 # The amount of database connections in the pool
