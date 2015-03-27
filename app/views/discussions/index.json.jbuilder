json.array!(@discussions) do |discussion|
  json.extract! discussion, :id, :name, :author, :description, :subforum_id
  json.url discussion_url(discussion, format: :json)
end
