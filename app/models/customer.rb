# == Schema Information
#
# Table name: customers
#
#  id         :integer          not null, primary key
#  username   :string           not null
#  active     :boolean          default(TRUE), not null
#  url        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Customer < ActiveRecord::Base
  has_one :user, as: :profile
end
