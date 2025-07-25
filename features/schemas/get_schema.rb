module UserSchema
  LIST_SCHEMA = {
    "type" => "array",
    "items" => {
      "type" => "object",
      "required" => %w[id name username email address phone website company],
      "properties" => {
        "id" => { "type" => "integer" },
        "name" => { "type" => "string" },
        "username" => { "type" => "string" },
        "email" => { "type" => "string" },
        "address" => {
          "type" => "object",
          "required" => %w[street suite city zipcode geo],
          "properties" => {
            "street" => { "type" => "string" },
            "suite" => { "type" => "string" },
            "city" => { "type" => "string" },
            "zipcode" => { "type" => "string" },
            "geo" => {
              "type" => "object",
              "required" => %w[lat lng],
              "properties" => {
                "lat" => { "type" => "string" },
                "lng" => { "type" => "string" }
              }
            }
          }
        },
        "phone" => { "type" => "string" },
        "website" => { "type" => "string" },
        "company" => {
          "type" => "object",
          "required" => %w[name catchPhrase bs],
          "properties" => {
            "name" => { "type" => "string" },
            "catchPhrase" => { "type" => "string" },
            "bs" => { "type" => "string" }
          }
        }
      }
    }
  }
end
