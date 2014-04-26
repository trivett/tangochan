require "spec_helper"

describe User do

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_confirmation_of(:password) }
  it { should validate_presence_of(:native_language) }
  it { should validate_presence_of(:learning_language) }
  it { should have_many(:lists) }

  it "should displays User stats" do
    u = User.create(email: "user@example.com", got_right: 20, got_wrong: 20)
    expect(u.stats).to eq("Words practiced: 40. Batting average: 0.5")
  end





end
