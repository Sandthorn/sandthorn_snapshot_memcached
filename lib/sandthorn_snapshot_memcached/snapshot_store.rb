require 'dalli'

module SandthornSnapshotMemcached
  class SnapshotStore
    def initialize url
        options = { :compress => true }
        @store = Dalli::Client.new(url, options)
    end

    def save aggregate_id, aggregate
      @store.set(aggregate_id, aggregate)
    end

    def find aggregate_id
      @store.get(aggregate_id)
    end
  end
end