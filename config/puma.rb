#========== ENVIRONMENT ===================================

# set variables
env  = ENV['RACK_ENV'] || 'development'
port = ENV['PORT']     || 3000

# add configs
environment env
port        port
rackup      DefaultRackup


#========== THREADS/WORKERS ===============================

# set variables
max_count = Integer(ENV['MAX_THREADS']     || 5)
min_count = Integer(ENV['MIN_THREADS']     || 5)
wkr_count = Integer(ENV['WEB_CONCURRENCY'] || 2)

# add configs
threads min_count, max_count
workers wkr_count


#========== CALLBACKS =====================================

on_worker_boot do
  ActiveSupport.on_load(:active_record) do
    ActiveRecord::Base.establish_connection
  end
end


#========== DO IT! ========================================

preload_app!
