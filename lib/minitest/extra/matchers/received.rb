module Minitest
  module Extra
    module Matchers
      module Received
        def self.included(_)
          Object.infect_an_assertion :assert_sent, :must_receive, :dont_flip
        end

        def assert_sent(to, method)
          assert_received to, &method
        end
      end
    end
  end
end
