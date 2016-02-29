class AssetCreator
  def execute note, asset_params
    puts 'Time Now: ' + Time.now.to_s

    if note.updated_at > Time.now
      note.assets.create! asset_params
      retun true
    else
      return false
    end
  end
end
