module ItemsHelper

	def urls_to_images(s)
		s.gsub! /\s(http:\/\/.*?.(gif|jpg|png))/,
				
				'%img(src = "\1")'
		s.html_safe
		


	end
end
