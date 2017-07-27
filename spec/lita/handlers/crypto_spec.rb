require "spec_helper"

describe Lita::Handlers::Crypto, lita_handler: true do
  it "answers the 24hr volume" do
    carl = Lita::User.create(123, name: "carlos")
    send_message("dame el volumen de surbtc", as: carl)
    expect(replies.last).to be_a(String)
  end
end
