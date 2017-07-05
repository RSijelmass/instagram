class Post < ApplicationRecord
	
	belongs_to :user
	has_attached_file :image, styles: { small: "200x200", medium: "300x300>", thumb: "150x150>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

	has_many :posts_tags
	has_many :tags, :through => :posts_tags

	def self.find_tag(title, post_id, tag_class = Tag)
		return unless tags = tag_class.find_hashtag(title)
		tags.each do |tag|
			tag_in_db = Tag.find_or_create_by(name: tag)	
			self.create_posttag(post_id, tag_in_db.id)
		end
	end

	private

	#method a tad smelly: you shouldn't need this method to populate table
	def self.create_posttag(post_id, tag_id)
		PostTag.create!(post_id: post_id, tag_id: tag_id)
	end
end
