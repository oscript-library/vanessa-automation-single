﻿# language: ru

@lessons

Функционал: Интерактивная справка. Переход к следующей ошибке при выполнении сценариев.

Сценарий: Переход к следующей ошибке при выполнении сценариев

	* Привет! В этом уроке я расскажу тебе про то, как быстро перейти к строке сценария с ошибкой. Давай откроем второй экземпляр Ванессы в режиме обучения.
		И я открываю Vanessa Automation в режиме обучения
		И я скрываю часть кнопок командной панели редактора в режиме обучения

	* Загр^узим тестовый пример.
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features\Примеры\ПримерПереходКСледующейОшибке.feature"

	* И выполним данный сценарий.
		И Я запускаю сценарий VA в режиме обучения и жду окончания выполнения

	* В данном примере с ошибкой выполнилось сразу три сценария.
	* Для того, чтобы быстро перейти к строке с ошибкой нужно нажать на эту кнопку. Или нажать горячую клавишу эф восемь.
		И Я делаю подсветку элемента формы VA по имени "VanessaEditorПерейтиКСледующейОшибке" "Быстрый переход к строке с ошибкой"

	* При нажатии на данную кнопку будет выполнен переход к строке с ошибкой.	
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorПерейтиКСледующейОшибке' UI Automation
		И Пауза 1
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 7 по 7 строку 'Переход к строке с ошибкой' подсценарий

	* Повторное нажатие выполнит переход к следующей строке с ошибкой. И так далее.	
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorПерейтиКСледующейОшибке' UI Automation
		И Пауза 1
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 12 по 12 строку 'Переход к строке с ошибкой' подсценарий
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'VanessaEditorПерейтиКСледующейОшибке' UI Automation
		И Пауза 1
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 17 по 17 строку 'Переход к строке с ошибкой' подсценарий
		
	* На этом всё, переходи к следующему уроку интерактивной справки.



