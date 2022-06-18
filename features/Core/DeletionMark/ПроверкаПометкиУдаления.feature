﻿# language: ru
# encoding: utf-8
#parent uf:
@UF4_Библиотека_шагов
#parent ua:
@UA52_Работать_с_UI_прочее

@IgnoreOn82Builds
@IgnoreOn836
@IgnoreOn839
@IgnoreOn8310
@IgnoreOn8311
@IgnoreOn8312
@IgnoreOn8313
@IgnoreOn8314
@IgnoreOnOFBuilds
@IgnoreOnWeb




Функционал: Проверка пометки удаления

Контекст:
	И я удаляю все элементы Справочника "Справочник1"
	
@IgnoreOnUFSovm82Builds
Сценарий: Проверка пометки удаления на русском
	И я закрываю сеанс TESTCLIENT
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'
	
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И В командном интерфейсе я выбираю 'Основная' 'Справочник1'
	Тогда открылось окно 'Справочник1'
	И я очищаю фильтр на форме списка
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Справочник1 (создание)'
	И в поле с именем 'Наименование' я ввожу текст 'DeletionMark'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Справочник1 (создание) *' в течение 20 секунд
	
	Если в таблице "Список" есть колонка "Description" Тогда
			Тогда в таблице "Список" я перехожу к строке:
				| 'Description'  |
				| 'DeletionMark' |
	Иначе			
			Тогда в таблице "Список" я перехожу к строке:
				| 'Наименование'  |
				| 'DeletionMark' |

	И в таблице "Список" текущая строка не помечена на удаление
	И Проверяю шаги на Исключение:
        |'И в таблице "Список" текущая строка помечена на удаление'|		
	
	И Я запоминаю значение выражения '0' в переменную "ЕстьПометка"
	Если в таблице "Список" текущая строка помечена на удаление тогда
		И Я запоминаю значение выражения '1' в переменную "ЕстьПометка"
	Тогда переменная "ЕстьПометка" имеет значение 0

	И Я запоминаю значение выражения '0' в переменную "ЕстьПометка"
	Если в таблице "Список" текущая строка не помечена на удаление тогда
		И Я запоминаю значение выражения '1' в переменную "ЕстьПометка"
	Тогда переменная "ЕстьПометка" имеет значение 1
		
		
	И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюУстановитьПометкуУдаления' на элементе формы с именем "Список"
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку 'Да'
	И пауза 1
	Если появилось окно с заголовком "1С:Предприятие" Тогда
		Тогда я закрываю текущее окно
	
	И в таблице "Список" текущая строка помечена на удаление
	И Проверяю шаги на Исключение:
        |'И в таблице "Список" текущая строка не помечена на удаление'|		


	И Я запоминаю значение выражения '0' в переменную "ЕстьПометка"
	Если в таблице "Список" текущая строка помечена на удаление тогда
		И Я запоминаю значение выражения '1' в переменную "ЕстьПометка"
	Тогда переменная "ЕстьПометка" имеет значение 1

	И Я запоминаю значение выражения '0' в переменную "ЕстьПометка"
	Если в таблице "Список" текущая строка не помечена на удаление тогда
		И Я запоминаю значение выражения '1' в переменную "ЕстьПометка"
	Тогда переменная "ЕстьПометка" имеет значение 0


Сценарий: Проверка пометки удаления на английском
	И я закрываю сеанс TESTCLIENT
	Когда в базе есть пользователь "VanessaUserEN" с паролем "1" с языком "English"
	Когда Я копирую текущий профиль TestClient с установкой параметров:
		| 'Имя подключения' | 'Порт' | 'Логин'         | 'Пароль' |  'Дополнительные параметры строки запуска'  |
		| 'VanessaUserEN'   | '1'    | 'VanessaUserEN' | '1'      |   '/Len /Vlen'                              |	
	
	И Я подключаю клиент тестирования "VanessaUserEN" из таблицы клиентов тестирования
	

	И В командном интерфейсе я выбираю 'Main' 'Справочник1'
	Тогда открылось окно 'Справочник1'
	
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Справочник1 (create)'
	И в поле с именем 'Наименование' я ввожу текст 'DeletionMark'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Справочник1 (create) *' в течение 20 секунд
	
	Если в таблице "Список" есть колонка "Description" Тогда
			Тогда в таблице "Список" я перехожу к строке:
				| 'Description'  |
				| 'DeletionMark' |
	Иначе			
			Тогда в таблице "Список" я перехожу к строке:
				| 'Наименование'  |
				| 'DeletionMark' |

	И в таблице "Список" текущая строка не помечена на удаление
	И Проверяю шаги на Исключение:
        |'И в таблице "Список" текущая строка помечена на удаление'|		

	И Я запоминаю значение выражения '0' в переменную "ЕстьПометка"
	Если в таблице "Список" текущая строка помечена на удаление тогда
		И Я запоминаю значение выражения '1' в переменную "ЕстьПометка"
	Тогда переменная "ЕстьПометка" имеет значение 0

	И Я запоминаю значение выражения '0' в переменную "ЕстьПометка"
	Если в таблице "Список" текущая строка не помечена на удаление тогда
		И Я запоминаю значение выражения '1' в переменную "ЕстьПометка"
	Тогда переменная "ЕстьПометка" имеет значение 1


	И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюУстановитьПометкуУдаления' на элементе формы с именем "Список"
	Тогда открылось окно '1C:Enterprise'
	И я нажимаю на кнопку 'Yes'
	И пауза 1
	Если появилось окно с заголовком "1C:Enterprise" Тогда
		Тогда я закрываю текущее окно
		
	И в таблице "Список" текущая строка помечена на удаление
	И Проверяю шаги на Исключение:
        |'И в таблице "Список" текущая строка не помечена на удаление'|		
		
		
	И Я запоминаю значение выражения '0' в переменную "ЕстьПометка"
	Если в таблице "Список" текущая строка помечена на удаление тогда
		И Я запоминаю значение выражения '1' в переменную "ЕстьПометка"
	Тогда переменная "ЕстьПометка" имеет значение 1

	И Я запоминаю значение выражения '0' в переменную "ЕстьПометка"
	Если в таблице "Список" текущая строка не помечена на удаление тогда
		И Я запоминаю значение выражения '1' в переменную "ЕстьПометка"
	Тогда переменная "ЕстьПометка" имеет значение 0
		
		
Сценарий: Удаление служебных пользователей
	Дано я удаляю все элементы Справочника "Справочник1"
	Когда Я удаляю пользователя "VanessaUserEN"
	И я закрываю TestClient "VanessaUserEN"
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'
	