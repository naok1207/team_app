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
#  role       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
end
