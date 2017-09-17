**Задача**: упростить процесс создания комплексного объекта путем инкапсуляции логики в отдельном объекте.

Для создания объекта `Longboard` необхоимо передать в качестве аргументов объекты `Wheels`, `Trucks` & `Deck`. Для создания каждого из этих объектов нужно передать дополнительные аргументы, некоторые из которых являются общими (`rider_level`, `width` & `length`).

Без использования класса `LongboardBuilder`, создание всех объектов будет происходить следующим образом:

```ruby
rider_level = :beginner
longboard_width = 8.5
longboard_length = 40

wheels = Wheels.new(size: 70, type: rider_level)
trucks = Trucks.new(type: :reverse, width: longboard_width)
deck = Deck.new(
  flex: 5.7,
  type: rider_level,
  width: longboard_width,
  length: longboard_length
)

longboard = Longboard.new(deck: deck, wheels: wheels, trucks: trucks)
```

Недостаток этого подхода в том, что логика создания целевого объекта не очевидна. Также некоторые данные дожны быть указаны дважды, что увеличивает риск возникновения багов.

Поместив всю логику в один класс `LongboardBuilder`, мы можем создать его экземпляр с общими атрибутами и с помощью отдельных методов передать параметры для создания дополнительных объектов.

```ruby
builder = LongboardBuilder.new(
  rider_level: :beginner,
  length: 40,
  width: 8.5
)

builder.wheels = {size: 70}
builder.trucks = {type: :reverse}
builder.deck = {flex: 5.7}

three_new_longboards = builder.longboard(3)
```

Также он обладает дополнительным поведением, которое позволяет выполнить валидацию данных перед сохранением и создать массив одинаковых объектов.
