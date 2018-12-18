class BreadcrumbsController < ActionController::Base
  def handled
    Bugsnag.notify("Request breadcrumb")
    render json: {}
  end

  def sql_breadcrumb
    User.take
    Bugsnag.notify("SQL breadcrumb")
    render json: {}
  end

  def active_job
    ApplicationJob.perform_later
    render json: {}
  end
end