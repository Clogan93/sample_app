module ApplicationHelper
	#return a title on a per-page basis.
	def title
		base_title = "Ruby on Rails Tutorial Sample App"
		if @title.nil?
			base_title
		else
			'#{base_title} | #{@title}'
		end
	end

	def logo
		image_tag("logo.png", :height => 100, :alt => "Sample App", :class => "round")
	end
end
