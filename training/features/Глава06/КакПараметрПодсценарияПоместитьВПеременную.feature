﻿# language: ru

@lessons

Функционал: Интерактивная справка. Как параметр подсценария поместить в переменную.

Сценарий: Как параметр подсценария поместить в переменную.

	* Привет! В этом уроке я расскажу тебе как параметр подсценария поместить в переменную. Давай откроем второй экземпляр Ванессы в режиме обучения.
		И я открываю Vanessa Automation в режиме обучения

	* Загр^узим тестовый пример.
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features\Примеры\ПримерКакПараметрПодсценарияПоместитьВПеременную.feature"

	* В данном примере у экспортного сценария есть один параметр.	
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 7 "Параметр1" 'Параметр подсценария'

	* Чтобы его поместить в переменную нужно использовать этот шаг
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 9 по 9 строку 'Параметр будет помещен в переменную' подсценарий

	* Важно, чтобы имя параметра, указанное тут	
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 7 "Параметр1" 'Параметр подсценария'
	* Совпадало с именем параметра указанного тут	
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 9 "Параметр1" 'Параметр шага'

	* На этом всё, переходи к следующему уроку интерактивной справки.



