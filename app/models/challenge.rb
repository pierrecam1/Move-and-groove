class Challenge < ApplicationRecord
    has_many :likes, dependent: :destroy

enum activity: [:Running, :Hiking, :Cycling, :Swimming, :Wheelchair,  :Moutain_Biking, :Snowboarding, :Skiing, :Walking, :Rowing, :Wakeboard]
enum difficulty:[:Easy, :Medium, :Hard]

end
