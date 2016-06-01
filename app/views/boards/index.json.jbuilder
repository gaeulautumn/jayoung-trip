json.array!(@boards) do |board|
  json.extract! board, :id, :title, :content
  json.url board_url(board, format: :json)
end
