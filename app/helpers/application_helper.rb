module ApplicationHelper
	def select_name user
		nombre = ''
		user.name.each_char do |c|
	 		if c != ' '
	  			nombre = nombre + c
	 		else
	  			break
	 		end
		end
		return nombre
	end
	def article_cover url, options = {}
		html_class = options[:class]

		html_style = "background-image: url(#{url.cover.url(:original)});"\
		             "background-repeat: no-repeat;"

		html =  "<div class='portada background-cover #{html_class}' style='#{html_style}'>"\
					"<div class='row pr-art corrige' style='bottom:0px;'>"\
						"<div class='col-md'>"\
							"<h1><span id='ti'>#{url.title}</span></h1>"\
							"<p><span>#{truncate(Sanitize.fragment(url.body), length: 175)}</span></p>"\
						"</div>"\
					"</div>"\
				"</div>"

		html.html_safe
	end
end
