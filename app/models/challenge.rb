class Challenge < ApplicationRecord
    has_many :likes, dependent: :destroy
    validates :title, presence: true, length: {minimum:6, maximum:100}


enum activity: [:Running, :Hiking, :Cycling, :Swimming, :Wheelchair,  :Moutain_Biking, :Snowboarding, :Skiing, :Walking, :Rowing, :Wakeboard]
enum difficulty:[:Easy, :Medium, :Hard]

end
