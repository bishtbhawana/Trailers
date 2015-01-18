class Trailer < ActiveRecord::Base
	belongs_to :movie

 def video_frame
 	'<iframe width="500" height="300" src="//youtube.com/embed/'+  self.youtube_id + '"  frameborder="0"></iframe>' .html_safe
 end

 def youtube_id
   regex = /(?:.be\/|\/watch\?v=|\/(?=p\/))([\w\/\-]+)/
   self.video_url.match(regex)[1]
 end
 	
 def video_thumb
 	'<img src="http://img.youtube.com/vi/' + youtube_id + '/3.jpg"/>'
 end

end
