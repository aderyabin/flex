module Flex
  module Utils
    extend self

    def data_from_source(source)
      return unless source
      data = case source
             when Hash              then stringified_hash(source)
             when /^\s*\{.+\}\s*$/m then source
             when String            then YAML.load(source)
             else raise ArgumentError, "expected a String or Hash instance (got #{source.inspect})"
             end
      raise ArgumentError, "the source does not decode to an Array, Hash or String (got #{data.inspect})" \
            unless data.is_a?(Hash) || data.is_a?(Array) || data.is_a?(String)
      data
    end

    def erb_process(source)
      varname = "_flex_#{source.hash.to_s.tr('-', '_')}"
      ERB.new(File.read(source), nil, nil, varname).result
    end

    def group_array_by(ary)
      h = {}
      ary.each do |i|
        k = yield i
        if h.has_key?(k)
          h[k] << i
        else
          h[k] = [i]
        end
      end
      h
    end

    def stringified_hash(hash)
      h = {}
      hash.each do |k,v|
        h[k.to_s] = v.is_a?(Hash) ? stringified_hash(v) : v
      end
      h
    end

    def load_tasks
      load File.expand_path('../../tasks/index.rake', __FILE__)
    end

  end
end
