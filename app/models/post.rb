class Post < ApplicationRecord
	
	belongs_to :user
	has_attached_file :image, styles: { small: "200x200", medium: "300x300>", thumb: "150x150>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

	has_many :posts_tags
	has_many :tags, :through => :posts_tags

	def find_tag(title, tag_class = Tag)
		return unless tags = tag_class.find_hashtag(title)
		tags.each do |tag|
			tag_in_db = Tag.find_or_create_by(name: tag)	
			create_posttag(tag_in_db.id)
		end
	end

	def convert_title_for_tags(title)
		new_title = []
		title.split.each do |word|
			if word[0] == "#"
			#	new_title << "#{ link_to(word) tag_path(word[1...word.length]) }"
			else
				new_title << word
			end
		self.title = new_title.join(" ")
		puts "title: " + self.title
		end
	end

	private

	#method a tad smelly: you shouldn't need this method to populate table
	def create_posttag(tag_id)
		PostTag.create!(post_id: self.id, tag_id: tag_id)
	end
end

