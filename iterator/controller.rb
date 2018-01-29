class Controller
  def index
    # CallSomeApi performs request to external api
    # and returns instance of ResponseWrapper with data (agregate object)
    data = CallSomeApi.new(params).call
    # We can iterate agregate data object
    # despite the fact that this is not a collection
    # without knowing it's internal structure
    entities = data.map { |attributes| Entity.new(attributes) }

    response json: entities,
             each_serializer: EntitySerializer,
             # We can also use all other ResponseWrapper's interface
             # which is not related to iterated collection
             meta: {
               total: data.total
               current_page: data.current_page
             }
  end
end
