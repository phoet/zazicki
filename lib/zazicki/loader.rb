module Zazicki
  class Loader
    def initialize(klass, app, *args, &block)
      @klass  = klass
      @app    = app
      @args   = args
      @block  = block
    end

    def call(env)
      @klass.constantize.new(@app, *@args, &@block).call(env)
    end
  end
end
