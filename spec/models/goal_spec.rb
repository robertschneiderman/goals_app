# == Schema Information
#
# Table name: goals
#
#  id          :integer          not null, primary key
#  user_id     :integer          not null
#  title       :string           not null
#  description :text             not null
#  privacy     :boolean          default(FALSE), not null
#  completed   :boolean          default(FALSE), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Goal, type: :model do

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:privacy) }
  it { should validate_presence_of(:completed) }

  it { should belong_to(:user) }

end
