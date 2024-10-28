# app/services/graphql_service.rb
require 'httparty'
module Github
  class GraphqlService
    include HTTParty
    base_uri ENV['BASE_URL']

    def self.query(token)
      query_string = <<-GRAPHQL
      # Try to write your query here
      {
        me{
          workspaces{
          id
          name
          projects {
            title
            id
            projectType
            trackingType
            collaborators{
              nodes{
                user{
                  id
                  name
                  username
                  email
                  publicEmail
                }
              }
            }
          }
        }
        }
      }
      GRAPHQL

      headers = {
        "Content-Type" => "application/json",
        "Authorization" => "Bearer #{token}"
      }

      options = {
        body: { query: query_string }.to_json,
        headers: headers
      }

      response = post('/', options)
      response.parsed_response if response.success?
    rescue HTTParty::Error => e
      { "error" => e.message }
    end
  end
end