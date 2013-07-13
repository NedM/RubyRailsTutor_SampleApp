module UsersHelper

	# Returns the Gravatar (http://gravatar.com) for the given user
	def gravatar_for(user, options = { size: 115, rating: "r", default: "retro" })
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		size = options[:size]
		rating = options[:rating]
		default = options[:default]
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}.png?s=#{size}&r=#{rating}&d=#{default}"
		image_tag(gravatar_url, alt: user.name, class: "gravatar")
	end
end
