class Race < ActiveRecord::Base
  has_many :animals, dependent: :destroy
end
