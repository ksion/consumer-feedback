require 'parse-ruby-client'
require 'alchemyapi'

class ConsumerFeedbackProcedure < BaseProcedure
  def results
    get_feedback_from_parse.results
  end

  def get_feedback_from_parse
    Parse.init :application_id => ENV['PASR']
  end
end