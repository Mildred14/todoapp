class HardWorker
  include Sidekiq::Worker

  def perform(*args)
    # Do something
    puts "Hola esto es un hardworker"
  end
end
