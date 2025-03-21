# app/jobs/create_github_repository_job.rb
module Github
  class CreateGithubRepositoryJob < ApplicationJob
    queue_as :default

    def perform(token, work_space_id, user_provided_name, access_token, repository_description, repository_url, username)
      service = GraphqlMutationService.new(token)

      response = service.create_repository(
        workspace_id: work_space_id,
        title: user_provided_name,
        access_token: access_token,
        description: repository_description,
        import_url: repository_url,
        import_url_username: username
      )

      if response["errors"]
        Rails.logger.error("Error creating repository: #{response['errors']}")
      else
        Rails.logger.info("Repository created successfully!")
      end
    rescue StandardError => e
      Rails.logger.error("Exception while creating repository: #{e.message}")
    end
  end
end