class Challenge < ApplicationRecord
    belongs_to :user
    has_many :likes, dependent: :destroy
    validates :title, :activity, presence: true
    
    enum activity: [:Running, :Hiking, :Cycling, :Swimming, :Wheelchair,  :Moutain_Biking, :Snowboarding, :Skiing, :Walking, :Rowing, :Wakeboard]
    enum difficulty:[:Easy, :Medium, :Hard]

end
