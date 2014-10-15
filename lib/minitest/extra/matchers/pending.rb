module Minitest
  module Extra
    module Matchers
      module Pending
        def self.included(base)
          base.extend ClassMethods
          base.class_eval do
          end
        end

        def pending
          skip('Not yet implemented...')
        end

        module ClassMethods
          def pending(name = nil)
            it(name) { pending }
          end
        end
      end
    end
  end
end
