module Minitest
  module Extra
    module Matchers
      module Receive
        def self.included(base)
          base.class_eval do
            infect_an_assertion :assert_sent, :must_receive, :dont_flip
          end
        end

        def assert_sent(to, method)
          assert_received to, &method
        end
      end
    end
  end
end
