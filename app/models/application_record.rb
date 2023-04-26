# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  class << self
    def revoke_connections
      kill_sql =
        "SELECT pg_terminate_backend(pg_stat_activity.pid) FROM pg_stat_activity WHERE pg_stat_activity.datname = 'railsondocker_development' AND pid <> pg_backend_pid();"

        ActiveRecord::Base.connection.execute(kill_sql)
    end
  end
end
