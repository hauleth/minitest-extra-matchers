module Minitest
  module Extra
    module Matchers
      module Received
       infect_an_assertion :assert_sent, :must_receive, :dont_flip

        def assert_sent(to, method)
          assert_received to, &method
        end
      end
    end
  end
end
