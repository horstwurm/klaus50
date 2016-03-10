json.array!(@votings) do |voting|
  json.extract! voting, :id, :user_id, :picture_id, :rating
  json.url voting_url(voting, format: :json)
end
