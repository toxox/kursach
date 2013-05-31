module AlbumsHelper
  def put_name_or_not_available(model, attribute_id)
    model.find_by_id(attribute_id) ? model.find_by_id(attribute_id).name : "N/A"
  end
end
