json.array!(@challenges) do |challenge|
  json.extract! challenge, :id, :title, :description, :begin_period, :end_period
  json.url challenge_url(challenge, format: :json)
end
