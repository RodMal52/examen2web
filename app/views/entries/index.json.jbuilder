json.array!(@entries) do |entry|
  json.extract! entry, :id, :author, :content, :discussion_id
  json.url entry_url(entry, format: :json)
end
