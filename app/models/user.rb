# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  activated  :boolean
#  avatar     :string
#  email      :string
#  introduce  :text
#  name       :integer
#  nickname   :string
#  password   :string
#  role       :integer          default("general"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
  validates :nickname, presence: true
  validates :email, presence: true, uniqueness: true
  enum role: { admin: 0, general: 1 }
end
