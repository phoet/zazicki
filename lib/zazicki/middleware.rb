module Zazicki
  module Middleware
    def build(app)
      if @klass
        super
      else
        Zazicki::Loader.new(@name, app, *@args, &@block)
      end
    end
  end
end
