# frozen_string_literal: true

module Phobos
  module Handler
    def self.included(base)
      base.extend(ClassMethods)
    end

    def before_consume(payload, _metadata)
      payload
    end

    def consume(_payload, _metadata)
      raise NotImplementedError
    end

    def around_consume(_payload, _metadata)
      yield
    end

    module ClassMethods
      def start(kafka_client); end

      def stop; end
    end
  end
end
