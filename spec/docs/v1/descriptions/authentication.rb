module Docs
  module V1
    module Authentication
      extend Dox::DSL::Syntax

      document :api do
        resource 'Authentication' do
          endpoint '/auth'
          group 'Authentication'
        end
      end

      document :create do
        action 'Sign In'
      end
    end
  end
end
