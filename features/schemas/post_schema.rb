module PostSchema
  POST_RESPONSE_SCHEMA = {
    "type" => "object",
    "required" => ["id", "title", "body", "userId"],
    "properties" => {
      "id" => { "type" => "integer" },
      "title" => { "type" => "string" },
      "body" => { "type" => "string" },
      "userId" => { "type" => "integer" }
    }
  }
end
