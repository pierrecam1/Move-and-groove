class Post < ApplicationRecord
    belongs_to :user
    validates :title, presence: true, length: {minimum:6, maximum:100}

    

    has_attached_file :picture, styles: { large: "600x600>",medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

    enum activity: [:Running, :Hiking, :Cycling, :Swimming, :Wheelchair,  :Moutain_Biking, :Snowboarding, :Skiing, :Walking, :Rowing, :Wakeboard]
end
