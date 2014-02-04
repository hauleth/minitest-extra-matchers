module Minitest::Extra::Matchers::Subject
  def self.included(base)
    base.extend ClassMethods
    base.class_eval do
      alias_method :context, :describe
    end
  end

  Minitest::Expectations.methods.grep(/^(must|wont)_/).each do |m|
    define_method m do |*args, &block|
      subject.send(m, *args, &block)
    end
  end

  def pending
    skip('Not yet implemented...')
  end

  module ClassMethods
    def subject(name = nil, &block)
      if name
        let(name, &block)
        let(:subject) { send(name) }
      else
        let(:subject, &block)
      end
    end

    def its(name, &block)
      it { subject.send(name).instance_eval(&block) }
    end

    def pending
      it { pending }
    end
  end
end
