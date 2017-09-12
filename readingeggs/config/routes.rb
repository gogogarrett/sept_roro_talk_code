Rails.application.routes.draw do
  get "/lessons/:id/:activity_id", to: "lessons#show"
  post "/student_events", to: "student_events#create"
end
