class ProjectsController < ApplicationController
  if ENV['HTTP_USERNAME'] and ENV['HTTP_PASSWORD']
    http_basic_authenticate_with name: ENV['HTTP_USERNAME'], password: ENV['HTTP_PASSWORD']
  end

  def index
    @projects = Project.all
  end
end
