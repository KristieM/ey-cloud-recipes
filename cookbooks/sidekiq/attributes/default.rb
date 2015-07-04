#
# Cookbook Name:: sidekiq
# Attrbutes:: default
#

default[:sidekiq] = {
  # Sidekiq will be installed on to application/solo instances,
  # unless a utility name is set, in which case, Sidekiq will
  # only be installed on to a utility instance that matches
  # the name
  #:utility_name => nil,
  
  # Number of workers (not threads)
  :workers => 1,
  
  # Concurrency
  # change this for production
  :concurrency => 5,
  
  # Queues
  :queues => {
    :mailers => 2,
    :default => 1
  },
  
  # Verbose
  :verbose => false
}
