module Github
  class GithubUserMapping < ApplicationRecord
    self.table_name = 'github_user_mappings'
    belongs_to :github_project, class_name: 'Github::GithubProject'
  end
end