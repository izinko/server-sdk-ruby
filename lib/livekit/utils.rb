class ::Hash
  # via https://stackoverflow.com/a/25835016/2257038
  def stringify_keys
    h = self.map do |k, v|
      v_str = if v.instance_of? Hash
          v.stringify_keys
        else
          v
        end

      [k.to_s, v_str]
    end
    Hash[h]
  end

  # via https://stackoverflow.com/a/25835016/2257038
  def symbol_keys
    h = self.map do |k, v|
      v_sym = if v.instance_of? Hash
          v.symbol_keys
        else
          v
        end

      [k.to_sym, v_sym]
    end
    Hash[h]
  end
end
