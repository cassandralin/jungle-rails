require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do

  it "should be a Valid User" do
    @user= User.create(
      email: 'cassandralin92@gmail.com',
      name: 'Cassandra Lin',
      password: "Lin",
      password_confirmation: "Lin"
          )

    expect(@user).to be_valid
  end

  it "should have an email" do
    @user= User.create(
      email: nil,
      name: 'Cassandra Lin',
      password: "Lin",
      password_confirmation: "Lin"
          )
    expect(@user).to_not be_valid
  end

  it "should have a Valid Name" do
    @user= User.create(
      email: 'cassandralin92@gmail.com',
      name: nil,
      password: "Lin",
      password_confirmation: "Lin"
          )

    expect(@user).to_not be_valid
  end

  it "should have an password with minimum length" do

    @user= User.create(
      email: 'cassandralin92@gmail.com',
      name: 'Cassandra Lin',
      password: "Lin",
      password_confirmation: "Lin"
          )
    expect(@user).to_not be_valid
  end


  it "should be a valid email" do
    @user1= User.create(
      email: 'cassandralin92@gmail.com',
      name: 'Cassandra Lin',
      password: "LinLin",
      password_confirmation: "LinLin"
          )
    @user= User.create(
      email: 'cassandralin92@gmail.com',
      name: 'cassandralin92@gmail.com',
      password: "pokemon",
      password_confirmation: "pokemon"
          )
    expect(@user).to_not be_valid

  end

  it "should have a valid password " do
    @user= User.create(
      email: 'cassandralin92@gmail.com',
      name: 'Cassandra Lin',
      password: "Cassandra",
      password_confirmation: "Cassandra"

          )
    expect(@user).to_not be_valid
  end

end
end