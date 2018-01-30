**Задача**: добавить свойства и/или поведение объекту, не меняя его существующее поведение и избегая наследования.

Класс `BaseLongboard` отвечает за создание лонгборда в базовой комплектации. Для создание такого объекта нужно передать аттрибуты `deck, truck, wheels`.

Класс `CustomPrintLongboard` создает объект лонгборда с дополнительной опцией `print`. При инициализации он ожидает получить экземпляр `BaseLongboard` и `CustomPrint`.

Декоратор не меняет поведение базового объекта. Поэтому он определяет методы `price` и `equipment`, которые декорируют поведение базового объекта. Также добавляет новое поведение объекту (`decorated_object_behavior`). Остальные обращения к декоратору должны быть делегированы базовому объекту (как в случае с `base_object_behavior`).

```ruby
base_longboard = BaseLongboard.new(
  deck: some_deck_object,
  truck: some_truck_object,
  wheels: some_wheels_object
)

custom_print = CustomPrint.new(some_arguments)

longboard_with_print = CustomPrintLongboard.new(base_longboard, custom_print)
```
