require "sandthorn_snapshot_memcached/version"
require "sandthorn_snapshot_memcached/snapshot_store"


module SandthornSnapshotMemcached
  class << self
    def from_url url
      SnapshotStore.new url
    end
  end

end
