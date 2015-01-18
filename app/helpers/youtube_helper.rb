module YoutubeHelper
	def self.video_frame(video_url)
		'<iframe width="500" height="300" src="//youtube.com/embed/'+  self.youtube_id(video_url)+ '"  frameborder="0"></iframe>' .html_safe
	end

	def self.youtube_id(video_url)
		regex = /(?:.be\/|\/watch\?v=|\/(?=p\/))([\w\/\-]+)/
		video_url.match(regex)[1]
	end
		
	def self.video_thumb(video_url)
		'<img src="http://img.youtube.com/vi/' + youtube_id(video_url) + '/3.jpg"/>'
	end
	
end