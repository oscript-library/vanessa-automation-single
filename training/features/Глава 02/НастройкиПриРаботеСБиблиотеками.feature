﻿# language: ru

@lessons

Функционал: Интерактивная справка. Основные элементы на закладке "Библиотеки"

Сценарий: Основные элементы на закладке "Библиотеки"

	* Привет! В этом уроке я расскажу тебе про основные элементы закладки "Библиотеки". Давай откроем второй экземпляр Ванессы в режиме обучения.
		И я открываю Vanessa Automation в режиме обучения
		
	
	* Отлично. Смотри. На данной закладке происходит подключение библиотек шагов.
		И Я делаю подсветку закладки VA и переход к ней "ГруппаКаталогиБиблиотек" "Библиотеки шагов"
		И Пауза 1
	
	* Библиотеки шагов нужно подключать в двух случаях.
	* Первый - когда используется основная поставка Vanessa Automation, а не Vanessa Single.
	* В этом случае в данной таблице должна быть строка, в которой указан путь к библиотеке шагов из основной поставки.
		И Я делаю подсветку элемента VA с типом "List". Элемент ищется у родителя элемента "МетаданныеБиблиотек" "Таблица библиотек"	
	* Обычно эта строка создаётся автоматически и руками её добавлять не нужно.

	* Второй случай - когда при написании тестов используются не только шаги из основной поставки Vanessa Automation, но также и собственные шаги.
	* Тогда в данной таблице нужно указать путь к каталогу этих шагов.
		И Я делаю подсветку элемента VA с типом "List". Элемент ищется у родителя элемента "МетаданныеБиблиотек" "Таблица библиотек"	

	* Тоже самое касается общих экспортных сценариев.

	* На этом всё, переходи к следующему уроку интерактивной справки.


