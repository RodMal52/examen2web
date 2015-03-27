json.array!(@subforums) do |subforum|
  json.extract! subforum, :id, :title
  json.url subforum_url(subforum, format: :json)
end
