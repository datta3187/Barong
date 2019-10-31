# frozen_string_literal: true

module API
  module V2
    module Entities
      # Basic user info
      class User < Grape::Entity
        format_with(:iso_timestamp) { |d| d&.utc&.iso8601 }

        expose :email, documentation: { type: 'String' }
        expose :uid, documentation: { type: 'String' }
        expose :role, documentation: { type: 'String' }
        expose :level, documentation: { type: 'Integer' }
        expose :otp, documentation: { type: 'Boolean', desc: 'is 2FA enabled for account' }
        expose :state, documentation: { type: 'String' }
        expose :referral_id, documentation: { type: 'String' }

        expose :referred, documentation: { type: 'Integer' } do |user|
          user.children.count
        end

        expose :rank, documentation: { type: 'Integer' } do |user|
          user.rank_no
        end

        expose :leading_users, documentation: { type: 'Integer' } do |user|
          user.leading_users.count
        end

        expose :trailing_users, documentation: { type: 'Integer' } do |user|
          user.trailing_users.count
        end
      end
    end
  end
end
