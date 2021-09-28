# == Schema Information
#
# Table name: users
#
#  id                    :bigint           not null, primary key
#  activated             :boolean
#  avatar                :string
#  crypted_password      :string
#  email                 :string
#  introduce             :text
#  name                  :integer
#  nickname              :string
#  password              :string
#  password_confirmation :string
#  role                  :integer
#  salt                  :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
# Indexes
#
#  index_users_on_email  (email) UNIQUE
#
class User < ApplicationRecord
  authenticates_with_sorcery!


  validates :email, uniqueness: true
end
