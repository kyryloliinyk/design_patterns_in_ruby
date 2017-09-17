**Задача**: добавить свойства и/или поведение объекту, не меняя его существующее поведение и избегая наследования.

Класс `BaseLongboard` отвечает за создание лонгборда в базовой комплектации. Для создание такого объекта нужно передать аттрибуты `deck, truck, wheels`.

Классы `CustomPrintLongboard` & `CustomGripTapeLongboard` создают объекты лонгбордов с дополнительными опциями `grip_tape` или `print`. В качестве аргумента они принимают **экземпляр базового лонгборда** и идентификатор кастомной детали. Декоратор не меняет поведение базового объекта, поэтому в этих классах также определяются методы `price` и `equipment`.

```ruby
base_longboard = BaseLongboard.new(
  deck: some_deck_object,
  truck: some_truck_object,
  wheels: some_wheels_object
)

longboard_with_print = CustomPrintLongboard.new(base_longboard, "print_id")
ordered = CustomGripTapeLongboard(longboard_with_print, "grip_tape_id")
```
