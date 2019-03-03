class Logo < ApplicationRecord
	has_one_attached :image
	validates :about, presence: true
    validates_length_of :about, :maximum=>30, :message=>"Length of words can not be accepted"
   	validates :image, presence: true, blob: { content_type: ['image/png', 'image/jpg', 'image/jpeg'], size_range: 1..5000.kilobytes }

    validate :image_type

    private
    	def image_type
    	  if image.attached? == false
			errors.add(:image, "are missing!")
    	  end
		end
end

