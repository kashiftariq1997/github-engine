module Github
  class GithubCodegiantUser < ApplicationRecord
    self.table_name = 'github_codegiant_users'
    validates :graphql_id, presence: true, uniqueness: true
  end
end