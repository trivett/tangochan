require_relative '../spec_helper.rb'

describe User do

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_confirmation_of(:password) }
  it { should validate_presence_of(:native_language) }
  it { should validate_presence_of(:learning_language) }
  it { should have_many(:lists) }

end


