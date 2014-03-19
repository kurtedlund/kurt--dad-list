json.array!(@dads) do |dad|
  json.extract! dad, :id, :title, :image_url, :description, :tags
  json.url dad_url(dad, format: :json)
end
