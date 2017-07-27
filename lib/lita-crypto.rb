require "lita"
require "redis"
require "pry"
require "money"

Lita.load_locales Dir[File.expand_path(
  File.join("..", "..", "locales", "*.yml"), __FILE__
)]

require "lita/handlers/crypto"
require "lita/services/surbtc_adaptor"

Lita::Handlers::Crypto.template_root File.expand_path(
  File.join("..", "..", "templates"),
 __FILE__
)
