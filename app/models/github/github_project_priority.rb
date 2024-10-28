# app/models/github_project_priority.rb
module Github
  class GithubProjectPriority < ApplicationRecord
    self.table_name = 'github_project_priorities'
    belongs_to :github_project, class_name: 'Github::GithubProject'
  end
end