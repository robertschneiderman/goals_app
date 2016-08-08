require 'rails_helper'

RSpec.describe User, type: :model do

  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_presence_of(:session_token) }

  # it "doesn't add the password to the database"

  describe "validates new users" do
    it "checks if a password is valid" do
      expect(FactoryGirl.build(:user, password: "short")).not_to be_valid
    end

    it "checks if all parameters are valid" do
      expect(FactoryGirl.build(:user)).to be_valid
    end

    # describe "User::find_by_credentials"
    #
    #   it "retuns nil if no user is found" do
    #     expect()
    #   end
    # end
  end
end
