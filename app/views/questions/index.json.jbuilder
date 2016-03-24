json.array!(@questions) do |question|
  json.extract! question, :id, :title, :content, :summary, :category_id, :asker_id, :mentor_id, :vote, :video_link
  json.url question_url(question, format: :json)
end
