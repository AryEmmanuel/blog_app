json.extract! @comment, :id, :user_id, :article_id, :body, :updated_at
json.created_at time_ago_in_words(@comment.created_at)
json.avatar @comment.user.avatar

json.user do
	json.name @comment.user.name
end