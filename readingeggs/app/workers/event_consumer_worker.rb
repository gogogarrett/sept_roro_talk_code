class EventConsumerWorker
  include Sidekiq::Worker

  def perform(base_event)
    # puts "=============="
    # puts "| Base Event |"
    # puts "=============="
    # puts base_event.inspect
    # puts "\n"
    # puts "==================="
    # puts "| Hydrating Event |"
    # puts "==================="
    # hydrated_event = hydrate(base_event)
    # puts hydrated_event.inspect
    # puts "\n"
    # puts "================"
    # puts "| Saving Event |"
    # puts "================"
    # puts "👌"
    # puts "\n"
  end

  private

  def hydrate(base_event)
    base_event.merge(add_facts)
  end

  def add_facts
    { "Garretts" => "awesome!" }
  end
end
