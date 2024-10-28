module Github
  class GithubFieldMapping < ApplicationRecord
    self.table_name = 'github_field_mappings'
    belongs_to :github_project, class_name: 'Github::GithubProject'
  end
end