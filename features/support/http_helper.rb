module HttpHelper
  BASE_URL = 'http://jsonplaceholder.typicode.com'

  def get_users
    HTTParty.get("#{BASE_URL}/users")
  end

  def post_user(payload)
    HTTParty.post(
      "#{BASE_URL}/users",
      body: payload.to_json,
      headers: { 'Content-Type' => 'application/json' }
    )
  end

  def put_user(id, payload)
    HTTParty.put(
      "#{BASE_URL}/users/#{id}",
      body: payload.to_json,
      headers: { 'Content-Type' => 'application/json' }
    )
  end

  def delete_user(id)
    HTTParty.delete("#{BASE_URL}/users/#{id}")
  end

  def post_post(payload)
    HTTParty.post(
      "#{BASE_URL}/posts",
      body: payload.to_json,
      headers: { 'Content-Type' => 'application/json' }
    )
  end

  def put_post(id, payload)
    HTTParty.put(
      "#{BASE_URL}/posts/#{id}",
      body: payload.to_json,
      headers: { 'Content-Type' => 'application/json' }
    )
  end

  def delete_post(id)
    HTTParty.delete("#{BASE_URL}/posts/#{id}")
  end
end

World(HttpHelper)
