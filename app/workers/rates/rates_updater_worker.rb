module Rates
  class RatesUpdaterWorker
    include Sidekiq::Worker

    def perform
      Exchange.update_rates
    end
  end
end
