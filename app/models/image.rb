class Image < ActiveRecord::Base

	has_attached_file :avatar, styles: { small: "100x200", medium: "400x200>", thumb: "200x100>" , large: "600x300>"} ,url: '/upload_images/:class/:attachment/000/000/:id/:style/:filename'
	validates_attachment_size :avatar, :in => 0.kilobytes..200.kilobytes

    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
# validates_attachment_size :avatar, size: { in: 0..20.kilobytes }
# ,url: '/upload_images/:class/000/000/:attachment/:id/:style/:filename'

	# validates_attachment :avatar,
	# content_type: { content_type: ["image/jpeg", "image/gif", "image/png","image/jpg"] }



	# has_attached_file :avatar
	# validates_attachment_content_type :avatar, content_type: /\Aimage/
	# validates_attachment_file_name :avatar, matches: [/png\Z/, /jpe?g\Z/]
	# do_not_validate_attachment_file_type :avatar


#   text_plain = MIME::Types["text/plain"].first
# text_plain.extensions << "foo"
# MIME::Types.index_extensions text_plain

validates :title, presence: true, length: {minimum: 3}
validates :descrip, presence: true, length: {minimum: 10}
end
