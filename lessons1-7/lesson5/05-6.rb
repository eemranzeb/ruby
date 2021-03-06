#encoding=utf-8

# Выводим вводное сообщение, чтобы описать игроку ситуацию, в которой он находится. Предлагаем действия в виде цифры с описанием
puts "Для вашей вечерней прогулки вы выбрали не самый удачный район — окрестности Качаловского Кладбища, что в Южном Бутово. Что поделать? Районы, как и президентов, не выбирают.\n
  1. Пойти в сторону метро
  2. Заглянуть в ближайший ларёк
  3. Прогуляться по району
\n"

# Предлагаем игроку ввести номер варианта и записываем выбор (1, 2 или 3) в переменную choice
choice = gets.chomp

# Вне зависимости от выбора игрок встречает гопников (это ж Бутово)
puts "Не успели вы пройти и ста метров, как заметили группу не слишком элегантно одетых в тренировочные костюмы молодых ребят. И почему-то вы сразу поняли, что они не на тренировку собрались.\n
  1. Повернуть в другую сторону
  2. Продолжить идти
\n"

# Снова записываем выбор игрока в переменную choice (нам уже не важно, что он выбрал до этого)
choice = gets.chomp

# Меняем линию программы в зависимости от выбора игрока
# Если игрок выбрал "1. Повернуть в другую сторону"
if choice == "1"
  # Выводим в консоль результат действия игрока и предлагаем ему новые варианты
  puts "Вы заметили, что ребята ускорили шаг, видимо, они хотят пообщаться.\n
    1. Попытаться убежать
    2. Продолжать идти
  \n"

  # Снова запоминаем выбор игрока
  choice = gets.chomp

  # Снова меняем ход программы в зависимости от выбора игрока
  if choice == "1"
    # Если игрок выбрал 1, заканчиваем игру сообщением о проигрыше
    abort "Конечно же, гопники без труда вас догнали. Даром, что спортсмены! Они без объяснения причин отбили вам все почки и обчистили до нитки, даже ботинки взяли, размер подошёл. Что ж, в следующий раз выбирайте районы по-интеллигентее."
  else
    # Если игрок выбрал 2, игра продолжится
    puts "Вас вежливо свистнули: «Э, уважаемый». Когда вы остановились, один из ребят выступил вперёд."
  end
# Если игрок выбрал "2. Продолжить идти"
else
  puts "Когда вы поравнялись с ребятами, один из них выступил вперёд."
end

# Если игра не закончилась командой abort, течение программы продолжится здесь
puts "— Сигарет не найдётся?\n
  1. — Не курю
  2. Предложить сигарет
"

choice = gets.chomp

if choice == "1"
  puts "— Чё, спортсмен типа?.\n
    1. — Да нет, просто ...
    2. — А ты с какой целью интересуешься?
  \n"

  choice = gets.chomp

  if choice == "1"
    abort "— Чё ты там бормочешь себе под нос? Пацанов не уважаешь? — с этими словами ребята набросились на вас и изрядно помутузив, отобрали кошелёк с деньгами. Ну что ж, придётся идти домой пешком, славу богу ботинки целы."
  else
    puts "Ваш собеседник замолк, глядя вам прямо в глаза. Кажется, он ушёл глубоко в себя в поисках ответа на поставленный вопрос.\n
      1. Воспользоваться заминкой и попытаться убежать
      2. Подождать
    \n"

    choice = gets.chomp

    if choice == "1"
      # Если игрок выбрал 1, заканчиваем игру сообщением об условной победе
      abort "Вы настолько внезапно стартовали, что гопота даже не сразу начала догонять вас, а когда это произошло, вы были уже метрах в ста от них. Вы с лёгкостью оторвались от них, запутав следы в дворах и спрятались в одном из подъездов, в который по счастливой случайности входила молодая мама с ребёнком."
    else
      puts "Так и не придумав ничего внятного, гопник продолжил диалог довольно странно:
      — Ты ваще кто по жизни?\n
        1. — Чё, по беспределу наехать хочешь?
        2. Сильно ударить главного по лицу
      \n"

      choice = gets.chomp

      if choice == "1"
        abort "Главный оглянулся, чтобы посмотреть реакцию своих коллег, те стояли растерянно, не зная, как начать драку так, чтобы не вышло «по беспределу». Вам повезло, что эти гопники не такие лютые, как могли бы и реального пацана без причины кидать не станут. Они как-то нелепо попрощались с вами «Счастливого пути, уважаемый» и нестройной группой ретировались в сторону одного из дворов."
      else
        abort "Удар удался. Пацанчик сник, а все остальные рефлекторно отскочили от вас. Вы спокойно развернулись и пошли своей дорогой, внимательно слушая, не станут ли вас догонять. Но сзади слышались только тихие стоны главного и бормотание остальных горе-кидал. Что ж, если вы такой крутой, можете гулять тут и впредь."
      end
    end
  end
else
  abort "Гопник выхватывает у вас пачку целиком, сминает её и вам становится понятно, что вас сейчас будут бить. Чтобы этого избежать вы добровольно отдаёте ребятам все свои деньги, телефон и направляетесь к метро стрелять мелочь на обратную дорогу у прохожих. Вам повезло, что не пострадали ваши лицо и почки.\n
  "
end
