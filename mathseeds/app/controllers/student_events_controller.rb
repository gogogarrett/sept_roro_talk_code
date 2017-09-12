class StudentEventsController < ApplicationController
  def create
    create_hash = super_params[:student_event].to_h
    EventConsumerWorker.perform_async(create_hash)

    head :created
  end

  private

  def super_params
    params.permit!
  end
end
