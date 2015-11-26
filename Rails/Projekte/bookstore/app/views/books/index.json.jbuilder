json.array!(@books) do |book|
  json.extract! book, :id, :author, :title, :describtion, :published, :price
  json.url book_url(book, format: :json)
end
