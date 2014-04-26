require "spec_helper"

describe User do
  it "displays User stats" do
    u = User.create(email: "user@example.com")
    expect(u.stats).to eq("Words practiced: 0")
  end
end


