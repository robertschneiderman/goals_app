# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string           not null
#  session_token   :string           not null
#  password_digest :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'rails_helper'

RSpec.describe User, type: :model do

  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_presence_of(:session_token) }

  describe "validates new users" do
    it "checks if a password is valid" do
      expect(FactoryGirl.build(:user, password: "short")).not_to be_valid
    end

    it "checks if all parameters are valid" do
      expect(FactoryGirl.build(:user)).to be_valid
    end
  end

end
