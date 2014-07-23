class ConsumerFeedbackController < ApplicationController
  def index
    @feedback = ConsumerFeedbackProcedure.new(self).results
  end
end