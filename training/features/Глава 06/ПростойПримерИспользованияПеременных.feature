﻿# language: ru

@lessons

Функционал: Интерактивная справка. Для чего нужны переменные языка Gherkin? Пример использования.

Сценарий: Для чего нужны переменные языка Gherkin? Пример использования.

	* Привет! В этом уроке я расскажу тебе про то, для чего нужны переменные языка Gherkin и покажу простой пример их применения. Давай откроем второй экземпляр Ванессы в режиме обучения.
		И я открываю Vanessa Automation в режиме обучения

	* Основное назначение переменных - это хранить промежуточное значение, которое может быть потом использовано либо в этом же сценарии, либо в других сценариях.
	* Переменные бывают локальные и глобальные.

	* Давай загрузим тестовый пример.
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features\Примеры\ПримерДляЧегоНужныПеременные.feature"

	* Сначала рассмотрим пример работы с локальными переменными.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 7 по 9 строку 'Создание и использование локальной переменной' подсценарий
	* Важный момент. Локальные переменные существуют только в пределах сценария, в котором они были созданы.
	* После завершения выполнения сценария все локальные переменные будут удалены.

	* Существует несколько шагов, которые сохраняют значение в переменную.
	* В данном случае используется шаг, который сохраняет произвольную строку в переменную.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 8 по 8 строку 'Сохранение строки в переменную' подсценарий

	* Здесь первый параметр - это строка, которую нужно сохранить.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 8 "ООО Ромашка" 'Строка, которую нужно сохранить'
	* А второй параметр - это имя будущей переменной.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 8 "ИмяКонтрагента" 'Имя переменной'
	* Обрати внимание, что так как мы сейчас создаём локальную переменную, то её имя можно писать без использования каких либо спецс^имволов.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 8 "ИмяКонтрагента" 'Имя переменной'

	* Движемся далее. Данный шаг показывает как можно использовать локальную переменную.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 9 по 9 строку 'Использование локальной переменной' подсценарий
	* При этом чтобы передать значение переменной в шаг её имя нужно обрамить символами доллара.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 9 "$ИмяКонтрагента$" 'Значение локальной переменной передаётся в шаг'

	* Теперь рассмотрим пример работы с глобальной переменной.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 11 по 13 строку 'Создание глобальной переменной' подсценарий
	* Важный момент. Глобальные переменные существуют, пока открыта форма Vanessa Automation.	
	* Перед созданием глобальной переменной лучше выполнить этот шаг. Он удалит глобальную переменную, если она уже существует.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 12 по 12 строку 'Удаление ранее созданной переменной' подсценарий
	* Далее можно использовать те же шаги, которые создают локальные переменные, но при указании имени переменной его надо обрамить двумя символами доллара.	
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 13 "$$ИмяКонтрагентаГлобально$$" 'Значение глобальной переменной передаётся в шаг'
	
	* И так как была создана глобальная переменная, её можно использовать в других сценариях, как показано в этом примере.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 18 по 18 строку 'Использование глобальной переменной в другом сценарии' подсценарий
	* При передаче значения глобальной переменной в шаг её имя нужно обрамить двумя символами доллара.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 18 "$$ИмяКонтрагентаГлобально$$" 'Значение глобальной	 переменной передаётся в шаг'

	* На этом всё, переходи к следующему уроку интерактивной справки.



