class Like < ApplicationRecord
  belongs_to :challenge
  belongs_to :user
end
