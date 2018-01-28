В уже существующем примере для Observer паттерна все объекты-обозреватели отвечают за 2 задачи: следят за изменениями в игре и выполняют свою основную функцию.

Их общее поведение можно вынести в отдельный объект `Observer`, который будет принимать при инициализации **комманду** как аргумент и выполнять ее при наличии изменений в игре.

Это похоже на выключатели, которые имеют внешне одинаковую пластиковую обертку но могут выполнять абсолютно разные функции.

```ruby
game = Game.new

game.add_observers([
  Observer.new( UpdateStatistics.new ),
  Observer.new( DoSomethingElse.new )
])
```

Согласно конвеншенам, комманда должна иметь метод `execute`, который работает как транзакция - либо выполняется целиком, либо не выполняется и возвращает ошибку.

При необходимости отмены действия комманда может иметь метод `unexecute`, который вточности возвращает предыдущее состояние.