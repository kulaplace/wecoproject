module ApplicationHelper

	def avatar_url(lead)
	    gravatar_id = Digest::MD5.hexdigest(lead.email)
	    "http://gravatar.com/avatar/#{gravatar_id}.png?s=200"
	end

end
