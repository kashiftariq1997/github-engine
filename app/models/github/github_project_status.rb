# app/models/github_project_status.rb
module Github
  class GithubProjectStatus < ApplicationRecord
    self.table_name = 'github_project_statuses'
    belongs_to :github_project, class_name: 'Github::GithubProject'
  end
end