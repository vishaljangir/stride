class TrainingVideo < ApplicationRecord
	has_one_attached :image
	validates :link, presence: true
	validates :caption, presence: true
    validates_length_of :link, :maximum=>20, :message=>" length of words can not be accepted"
    validates_length_of :caption, :maximum=>30, :message=>" length of characters can not be over 30"
    validates :image, presence: true, blob: { content_type: ['image/png', 'image/jpg', 'image/jpeg'], size_range: 1..5000.kilobytes }

    validate :image_type

   private
    def image_type
    	if image.attached? == false
		errors.add(:image, "are missing!")
    	end
	end
end
