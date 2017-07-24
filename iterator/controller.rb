class Controller
  def index
    data = CallSomeApi.new(params).call # Returns instance of ResponseWrapper
    entities = data.each { |model_attributes| Entity.new(model_attributes) }

    response json: entities,
             each_serializer: EntitySerializer,
             meta: { total: data.total }
  end
end
