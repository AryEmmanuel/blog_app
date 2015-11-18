# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "ajax:success", "form#comments-form", (ev, data) ->
	console.log ev
	$(".comments-box").prepend("<div class=\"comment animated zoomInDown\">
					<div class=\"row corrige\">
						<div class=\"col-md\">
							<p>
								<small>
									<span>
										<img src=\"#{data.avatar}\" class=\"avatar-image\" />
									</span>
									<strong class=\"comment-user\">#{data.user.name}</strong>
									<span>#{data.created_at}</span>
								</small>
							</p>
						</div>
					</div>
					<div class=\"row corrige\">
						<div class=\"col-md\">
							<p class=\"comment-body\">
								#{data.body}
							</p>
						</div>
					</div>
				</div>")
	$(".form-control-comment").val("")
	a = parseInt $(".comments-count").text()
	$('.comments-count').text(a + 1)

$(document).on "ajax:error", "form#comments-form", (ev, data)->
	console.log data
	console.log "Parece que hubo un error!"