entry = @search[:hits].first.deep_symbolize_keys
json.id entry[:_id]
json.call(entry[:_source], :label, :type, :annotations, :object_properties)
