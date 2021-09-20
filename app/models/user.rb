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
  # LINEログインの場合、emailが取得できないため、nilを許容
  validates :email, presence: true, uniqueness: true, allow_nil: true

  enum role: { admin: 0, general: 1 }
end
