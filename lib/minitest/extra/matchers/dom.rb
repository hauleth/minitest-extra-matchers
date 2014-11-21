require 'equivalent-xml'

module Minitest
  module Extra
    module Matchers
      module DOM
        def self.included(_)
          Object.infect_an_assertion :assert_dom_equal, :must_equal_dom
          Object.infect_an_assertion :assert_attr_equal, :must_have_attr
        end

        def assert_dom_equal(expected, actual, opts = {})
          expected_dom = Nokogiri::HTML.fragment(expected)
          actual_dom   = Nokogiri::HTML.fragment(actual)

          assert(EquivalentXml.equivalent?(actual, expected, opts),
                 ['expected:', expected_dom.to_s,
                  'actual:', actual_dom.to_s].join("\n"))

        end

        def assert_attr_equal(value, element, name)
          actual = Nokogiri::HTML.fragment(element).child.attr(name)

          assert_equal value, actual
        end
      end
    end
  end
end
