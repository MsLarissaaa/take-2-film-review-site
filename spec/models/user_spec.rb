require 'rails_helper'


describe User do

  it 'is invalid without a username' do
    user = User.new(username: "", email: "ebert@roper.com", password: "123")
    user.save
    expect(user).not_to be_valid
  end

  it 'is invalid without an email' do
    user = User.new(username: "roper", email: "", password: "123")
    user.save
    expect(user).not_to be_valid
  end

  it 'is invalid without a password' do
    user = User.new(username: "roper", email: "ebert@roper.com", password: "")
    user.save
    expect(user).not_to be_valid
  end

  it 'must have a unique email' do
    user = User.create(username: "roper", email: "ebert@roper.com", password: "123")
    user2 = User.new(username: "ebert", email: "ebert@roper.com", password: "345")
    user2.save

    expect(user).to be_valid
    expect(user2).not_to be_valid
  end

  it 'has a "trusted" attribute of "trusted" if the email contains
    a domain within the set of TRUSTED_SITES' do
    user = User.create(username: "roper", email: "ebert@chicagoreader.com", password: "123")
    expect(user.trusted).to eq("trusted")
  end
end
