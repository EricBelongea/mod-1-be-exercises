require './lib/user'
require 'pry'

RSpec.describe User do

  it "exists" do
    user = User.new("Alex")
  end

  it "can say hello" do
    user = User.new("Alex")
    expect(user.say_hello).to eq("Hello, Alex")
  end

  it "can create multiple users" do
    users = [
        {name: "Sal"},
        {name: "Brian"},
        {name: "Megan"},
      ]
    # binding.pry ## Can you call User.create_multiple(users) in pry? What does it return?
    expect(User.create_multiple(users)).to be_a Array
    expect(User.create_multiple(users).length).to eq 3

    # User.teardown
    # created_users = User.create_multiple(users)
    binding.pry ##What is created_users in pry? What type is the first index? Can you access any properties on it?
    expect(created_users[0]).to be_a User
    expect(created_users[0].name).to eq("Sal")
  end

  xit 'can add multiple rounds of users' do
    users_us = [
      {name: "Martin"},
      {name: "Nate Dawg"},
      {name: "Eric"},
    ]
    # users = [
    #     {name: "Sal"},
    #     {name: "Brian"},
    #     {name: "Megan"},
    #   ]

    created_users = User.create_multiple(users_us)
    binding.pry
    # created_users += User.create_multiple(users)

    expect(created_users.length).to eq(6)
  end


end