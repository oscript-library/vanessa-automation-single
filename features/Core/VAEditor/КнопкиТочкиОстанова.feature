﻿# language: ru


@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnUFSovm82Builds
@IgnoreOnWeb

@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@IgnoreOn8310
@IgnoreOn8311
@IgnoreOn8312
@IgnoreOn8313
@IgnoreOn8314
@IgnoreOn8315
@IgnoreOn8316

@ServerCodeCoverage


Функциональность: Работа с точками останова редактора

    Как разработчик
    Я хочу чтобы в редакторе корректно работали кнопки работы с буфером обмена
    Чтобы я мог использовать буфер обмена

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой 'VAEditor'

Сценарий: Закрытие клиента тестирования
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT


Сценарий: F11 на строке шага подсценария в HTML вставке, когда на нём установлена точка останова
	
	* Загрузка служебной фичи	
		И я перехожу в редактор Vanessa Automation из дерева

		И я перехожу к закладке с именем "ГруппаНастройки"
		И я перехожу к закладке с именем "СтраницаНастройкиVanessaEditor"
		И я устанавливаю флаг с именем 'ПоказыватьСтрокиПодсценариевVanessaEditor'
		И я перехожу к закладке с именем "ГруппаСлужебная"
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAEditor/VanessaEditor46"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	
	* Установка точки останова и активизация строки подсценария
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		"""
		 АктивизироватьСтрокуРедактораПоИдСтрокиИНомеруСтрокиФичи(5, 1);
		""" 
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 2

		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		И пауза 2
		И я нажимаю на кнопку с именем 'VanessaEditorКонтекстноеМенюБрейкпоинт'
		И пауза 2
	
	* Выполнение одного шага несколько раз
		И я нажимаю на кнопку с именем 'VanessaEditorПоказатьСписокТочекОстанова'
		Когда открылось окно 'Список точек останова'
		Тогда таблица "ДанныеТочекОстанова" стала равной по шаблону
			| '№'  | 'Текст строки'                                                                 |
			| '16' | '*И Я запоминаю значение выражения \'1\' в переменную "ИмяПеременной1"' |
		И я нажимаю на кнопку с именем 'ФормаЗакрыть'
		Когда открылось окно '*Vanessa Automation*'
		И я снимаю флаг с именем 'ФлагСценарииВыполнены'
		И я нажимаю на кнопку с именем 'VanessaEditorКонтекстноеМенюВыполнитьОдинШаг'
		И у элемента с именем "ФлагСценарииВыполнены" я жду значения "Да" в течение 150 секунд
		И я снимаю флаг с именем 'ФлагСценарииВыполнены'
		И я нажимаю на кнопку с именем 'VanessaEditorКонтекстноеМенюВыполнитьОдинШаг'
		И у элемента с именем "ФлагСценарииВыполнены" я жду значения "Да" в течение 150 секунд
		
				
	* Проверка
		И я нажимаю на кнопку с именем 'ПоказатьСкрытьТаблоПеременных'
		Тогда таблица "ТаблоПеременных" стала равной:
			| 'Имя'                 | 'Значение' | 'Тип'   |
			| 'Контекст'            | ''         | ''      |
			| 'ИмяПеременной1'      | '1'        | 'Число' |
			| 'ИмяПеременной2'      | '2'        | 'Число' |
			| 'Контекст глобальный' | ''         | ''      |
		



Сценарий: F11 на основной строке шага подсценария, когда на нём установлена точка останова
	
	* Загрузка служебной фичи	
		И я перехожу в редактор Vanessa Automation из дерева

		И я перехожу к закладке с именем "ГруппаНастройки"
		И я перехожу к закладке с именем "СтраницаНастройкиVanessaEditor"
		И я устанавливаю флаг с именем 'ПоказыватьСтрокиПодсценариевVanessaEditor'
		И я перехожу к закладке с именем "ГруппаСлужебная"
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAEditor/VanessaEditor45"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	
	* Установка точки останова и активизация строки подсценария
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'VanessaTabs.current.editor.setPosition(16, 1, \"\");'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 2

		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		И пауза 2
		И я нажимаю на кнопку с именем 'VanessaEditorКонтекстноеМенюБрейкпоинт'
		И пауза 2
	
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'VanessaTabs.current.editor.setPosition(15, 1, \"\");'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 2
		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		И пауза 2

	* Выполнение одного шага несколько раз
		И я нажимаю на кнопку с именем 'VanessaEditorПоказатьСписокТочекОстанова'
		Когда открылось окно 'Список точек останова'
		Тогда таблица "ДанныеТочекОстанова" стала равной по шаблону
			| '№'  | 'Текст строки'                                   |
			| '16' | '*И ДляПроверкиТочкиОстановаПодсценарийF11_1' |
		И я нажимаю на кнопку с именем 'ФормаЗакрыть'
		Когда открылось окно '*Vanessa Automation*'
		И я снимаю флаг с именем 'ФлагСценарииВыполнены'
		И я нажимаю на кнопку с именем 'VanessaEditorКонтекстноеМенюВыполнитьОдинШаг'
		И у элемента с именем "ФлагСценарииВыполнены" я жду значения "Да" в течение 150 секунд
		И я снимаю флаг с именем 'ФлагСценарииВыполнены'
		И я нажимаю на кнопку с именем 'VanessaEditorКонтекстноеМенюВыполнитьОдинШаг'
		И у элемента с именем "ФлагСценарииВыполнены" я жду значения "Да" в течение 150 секунд
		
				
	* Проверка
		И я нажимаю на кнопку с именем 'ПоказатьСкрытьТаблоПеременных'
		Тогда таблица "ТаблоПеременных" стала равной:
			| 'Имя'                 | 'Значение' | 'Тип'   |
			| 'Контекст'            | ''         | ''      |
			| 'ИмяПеременной1'      | '1'        | 'Число' |
			| 'ИмяПеременной11'     | '11'       | 'Число' |
			| 'ИмяПеременной2'      | '2'        | 'Число' |
			| 'ИмяПеременной3'      | '3'        | 'Число' |
			| 'Контекст глобальный' | ''         | ''      |
		



Сценарий: F11 на обычном шаге, на котором установлена точка останова
	
	* Загрузка служебной фичи	
		И я перехожу в редактор Vanessa Automation из дерева

		И я перехожу к закладке с именем "ГруппаНастройки"
		И я перехожу к закладке с именем "СтраницаНастройкиVanessaEditor"
		И я устанавливаю флаг с именем 'ПоказыватьСтрокиПодсценариевVanessaEditor'
		И я перехожу к закладке с именем "ГруппаСлужебная"
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAEditor/VanessaEditor44"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	
	* Установка точки останова и активизация строки подсценария
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'VanessaTabs.current.editor.setPosition(15, 1, \"\");'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 2

		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		И пауза 2
	
	* Выполнение одного шага несколько раз
		И я нажимаю на кнопку с именем 'VanessaEditorКонтекстноеМенюБрейкпоинт'
		И пауза 2
		И я нажимаю на кнопку с именем 'VanessaEditorПоказатьСписокТочекОстанова'
		Когда открылось окно 'Список точек останова'
		Тогда таблица "ДанныеТочекОстанова" стала равной по шаблону
			| '№'  | 'Текст строки'                                                            |
			| '15' | '*И Я запоминаю значение выражения \'11\' в переменную "ИмяПеременной11"' |
		И я нажимаю на кнопку с именем 'ФормаЗакрыть'
		Когда открылось окно '*Vanessa Automation*'
		И я снимаю флаг с именем 'ФлагСценарииВыполнены'
		И я нажимаю на кнопку с именем 'VanessaEditorКонтекстноеМенюВыполнитьОдинШаг'
		И у элемента с именем "ФлагСценарииВыполнены" я жду значения "Да" в течение 150 секунд
		
				
	* Проверка
		И я нажимаю на кнопку с именем 'ПоказатьСкрытьТаблоПеременных'
		Тогда таблица "ТаблоПеременных" стала равной:
			| 'Имя'                 | 'Значение' | 'Тип'   |
			| 'Контекст'            | ''         | ''      |
			| 'ИмяПеременной11'     | '11'       | 'Число' |
			| 'Контекст глобальный' | ''         | ''      |
		
		
				


Сценарий: Шагаем с помощью F11 по шагам подсценариев
	
	* Загрузка служебной фичи	
		И я перехожу в редактор Vanessa Automation из дерева

		И я перехожу к закладке с именем "ГруппаНастройки"
		И я перехожу к закладке с именем "СтраницаНастройкиVanessaEditor"
		И я устанавливаю флаг с именем 'ПоказыватьСтрокиПодсценариевVanessaEditor'
		И я перехожу к закладке с именем "ГруппаСлужебная"
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAEditor/VanessaEditor43"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	
	* Установка точки останова и активизация строки подсценария
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		"""
		 АктивизироватьСтрокуРедактораПоИдСтрокиИНомеруСтрокиФичи(5, 1);
		""" 
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 2

		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		И пауза 2
	
	* Выполнение одного шага несколько раз
		И я делаю 7 раз
			И я снимаю флаг с именем 'ФлагСценарииВыполнены'
			И я нажимаю на кнопку с именем 'VanessaEditorКонтекстноеМенюВыполнитьОдинШаг'
			И у элемента с именем "ФлагСценарииВыполнены" я жду значения "Да" в течение 150 секунд
			И Пауза 0.1
			
				
	* Проверка
		И я нажимаю на кнопку с именем 'ПоказатьСкрытьТаблоПеременных'
		Тогда таблица "ТаблоПеременных" стала равной:
			| 'Имя'                 | 'Значение' | 'Тип'   |
			| 'Контекст'            | ''         | ''      |
			| 'ИмяПеременной1'      | '1'        | 'Число' |
			| 'ИмяПеременной2'      | '2'        | 'Число' |
			| 'ИмяПеременной22'     | '22'       | 'Число' |
			| 'ИмяПеременной3'      | '3'        | 'Число' |
			| 'ИмяПеременной4'      | '4'        | 'Число' |
			| 'ИмяПеременной5'      | '5'        | 'Число' |
			| 'ИмяПеременной6'      | '6'        | 'Число' |
			| 'Контекст глобальный' | ''         | ''      |
		
				


Сценарий: Точки останова в подсценарии, дале выполнение главной строки подсценария по F11
	
	* Загрузка служебной фичи	
		И я перехожу в редактор Vanessa Automation из дерева

		И я перехожу к закладке с именем "ГруппаНастройки"
		И я перехожу к закладке с именем "СтраницаНастройкиVanessaEditor"
		И я устанавливаю флаг с именем 'ПоказыватьСтрокиПодсценариевVanessaEditor'
		И я перехожу к закладке с именем "ГруппаСлужебная"
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAEditor/VanessaEditor42"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	
	* Установка точки останова и активизация строки подсценария
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		"""
		 Event = "UPDATE_BREAKPOINTS";
		 Arg = "[{""lineNumber"":2,""codeWidget"":""b2"",""enable"":true}]";
		 VanessaEditorOnReceiveEventHandler(Event, Arg);
		""" 
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 2

		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'VanessaTabs.current.editor.setPosition(16, 1, \"\");'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 2

		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		И пауза 2
	
	* Выполнение одного шага
		И я снимаю флаг с именем 'ФлагСценарииВыполнены'
		И я нажимаю на кнопку с именем 'VanessaEditorКонтекстноеМенюВыполнитьОдинШаг'
		И у элемента с именем "ФлагСценарииВыполнены" я жду значения "Да" в течение 150 секунд
				
	* Проверка
		И я нажимаю на кнопку с именем 'ПоказатьСкрытьТаблоПеременных'
		Тогда таблица "ТаблоПеременных" содержит строки
			| 'Имя'                 | 'Значение' | 'Тип'   |
			| 'ИмяПеременной1'      | '1'        | 'Число' |
		И я нажимаю на кнопку с именем 'ПанельVanessaEditorФормаПерейтиВДеревоШагов'
		И я нажимаю на кнопку с именем 'ФормаРазвернутьВсеСтрокиДереваСлужебный'
		Тогда таблица "ДеревоТестов" стала равной:
			| 'Наименование'                                                         | 'Статус'  |
			| 'VanessaEditor42.feature'                                              | ''        |
			| 'VAEditor42'                                                           | ''        |
			| 'VAEditor42'                                                           | ''        |
			| 'И ДляПроверкиТочкиОстановаПодсценарий'                                | ''        |
			| 'И Я запоминаю значение выражения \'1\' в переменную "ИмяПеременной1"' | ''        |
			| 'И Я запоминаю значение выражения \'2\' в переменную "ИмяПеременной2"' | ''        |
			| 'И Я запоминаю значение выражения \'3\' в переменную "ИмяПеременной3"' | ''        |
			| 'И ДляПроверкиТочкиОстановаПодсценарий'                                | ''        |
			| 'И Я запоминаю значение выражения \'1\' в переменную "ИмяПеременной1"' | 'Success' |
			| 'И Я запоминаю значение выражения \'2\' в переменную "ИмяПеременной2"' | ''        |
			| 'И Я запоминаю значение выражения \'3\' в переменную "ИмяПеременной3"' | ''        |
		
				
					
Сценарий: Закрытие клиента тестирования
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT


Сценарий: Проверка, что в разных вкладках разный список точек останова
	* Загрузка служебной фичи	
		И я перехожу в редактор Vanessa Automation из дерева

		И я перехожу к закладке с именем "ГруппаСлужебная"
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAEditor/VanessaEditor32"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

	* Установка нужной строки текущей
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'VanessaTabs.current.editor.setPosition(19, 1, \"\");'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 2
		И я перехожу к закладке с именем "ГруппаЗапускТестов"

	* Установка точки останова
		И я нажимаю на кнопку с именем 'VanessaEditorSetBreakPoint'
		И Пауза 3

	* Проверка списка точек останова в первой вкладке
		И я нажимаю на кнопку с именем 'VanessaEditorПоказатьСписокТочекОстанова'
		Тогда открылось окно 'Список точек останова'
		Тогда таблица "ДанныеТочекОстанова" стала равной:
			| '№'  | 'Текст строки'                                                               |
			| '19' | '    И Я запоминаю значение выражения \'2+2\' в переменную "ИмяПеременной2"' |
		И Я закрываю окно 'Список точек останова'
						
	* Открытие второй вкладки			
		И я перехожу к закладке с именем "ГруппаСлужебная"
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAEditor/VanessaEditor33"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

	* Установка нужной строки текущей
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'VanessaTabs.current.editor.setPosition(21, 1, \"\");'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 2
		И я перехожу к закладке с именем "ГруппаЗапускТестов"

	* Установка точки останова
		И я нажимаю на кнопку с именем 'VanessaEditorSetBreakPoint'
		И пауза 2

	* Проверка списка точек останова во второй вкладке
		И я нажимаю на кнопку с именем 'VanessaEditorПоказатьСписокТочекОстанова'
		Тогда открылось окно 'Список точек останова'
		Тогда таблица "ДанныеТочекОстанова" стала равной:
			| '№'  | 'Текст строки'                                                                 |
			| '21' | '    И Я запоминаю значение выражения \'30+30\' в переменную "ИмяПеременной3"' |
		И Я закрываю окно 'Список точек останова'

	* Активируем первую вкладку и переходим в дерево. Дерево должно само обновиться.
		
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'МодульРедакторТекста().АктивизироватьВкладкуПоЗаголовку("VanessaEditor32")'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 2
		И я перехожу к закладке с именем "ГруппаЗапускТестов"
	
	* Проверка списка точек останова в первой вкладке
		И я нажимаю на кнопку с именем 'VanessaEditorПоказатьСписокТочекОстанова'
		Тогда открылось окно 'Список точек останова'
		Тогда таблица "ДанныеТочекОстанова" стала равной:
			| '№'  | 'Текст строки'                                                               |
			| '19' | '    И Я запоминаю значение выражения \'2+2\' в переменную "ИмяПеременной2"' |
		И Я закрываю окно 'Список точек останова'
	

Сценарий: Проверка, что выполнение сценария с текущего шага не остановится, если у начальной строки установлена точка останова и это подсценарий

	* Загрузка служебной фичи	
		И я перехожу в редактор Vanessa Automation из дерева

		И я перехожу к закладке с именем "ГруппаСлужебная"
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAEditor/VanessaEditor25"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

	* Установка нужной строки текущей
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'VanessaTabs.current.editor.setPosition(28, 1, \"\");'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 2
		И я перехожу к закладке с именем "ГруппаЗапускТестов"

	* Установка точки останова
		И я нажимаю на кнопку с именем 'VanessaEditorSetBreakPoint'
		И пауза 2

	* Запуск со строки, где установлена точка останова
		И я нажимаю на кнопку с именем 'VanessaEditorКонтекстноеМенюВыполнитьДанныйСценарийСТекущегоШага'
		И у элемента с именем "ФлагСценарииВыполнены" я жду значения "Да" в течение 60 секунд

	* Проверка результата
		И я нажимаю на кнопку с именем 'ПанельVanessaEditorФормаПерейтиВДеревоШагов'
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "СтраницаСлужебноеОсновное"
		И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		Тогда таблица "ДеревоТестов" стала равной:
			| 'Наименование'                                                           | 'Статус'  |
			| 'VanessaEditor25.feature'                                                | ''        |
			| 'VAEditor25'                                                             | ''        |
			| 'VAEditor25_1'                                                           | ''        |
			| 'И Я запоминаю значение выражения \'1+1\' в переменную "ИмяПеременной1"' | ''        |
			| 'И Я запоминаю значение выражения \'2+2\' в переменную "ИмяПеременной2"' | ''        |
			| 'И Я запоминаю значение выражения \'3+3\' в переменную "ИмяПеременной3"' | ''        |
			| 'VAEditor25_2'                                                           | 'Failed'  |
			| 'И Я запоминаю значение выражения \'2+2\' в переменную "ИмяПеременной2"' | ''        |
			| 'И Я вызваю шаг и исключение в подсценарии "ТекстИсключения"'            | 'Failed'  |
			| 'И я выполняю код встроенного языка'                                     | 'Success' |
			| '\| \'Сообщить("Hello world 1.")\' \|'                                  | ''        |
			| 'И я удаляю переменную \'ИмяПеременной1\''                               | 'Success' |
			| 'И Я запоминаю значение выражения \'1+1\' в переменную "ИмяПеременной1"' | 'Success' |
			| 'И я вызываю исключение \'ТекстИсключения\' уровень два'                 | 'Failed'  |
			| 'И я вызываю исключение \'ТекстИсключения\''                             | 'Failed'  |
			| 'И Я запоминаю значение выражения \'3+3\' в переменную "ИмяПеременной3"' | ''        |
		
		








Сценарий: Проверка, что выполнение сценария с текущего шага не остановится, если у начальной строки установлена точка останова и это обычный шаг

	* Загрузка служебной фичи	
		И я перехожу в редактор Vanessa Automation из дерева

		И я перехожу к закладке с именем "ГруппаСлужебная"
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAEditor/VanessaEditor22"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

	* Установка нужной строки текущей
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'VanessaTabs.current.editor.setPosition(18, 1, \"\");'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 2
		И я перехожу к закладке с именем "ГруппаЗапускТестов"

	* Установка точки останова
		И я нажимаю на кнопку с именем 'VanessaEditorSetBreakPoint'
		И пауза 2

	* Установка нужной строки текущей
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'VanessaTabs.current.editor.setPosition(20, 1, \"\");'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 2
		И я перехожу к закладке с именем "ГруппаЗапускТестов"

	* Установка точки останова
		И я нажимаю на кнопку с именем 'VanessaEditorSetBreakPoint'
		И пауза 2

	* Установка нужной строки текущей
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'VanessaTabs.current.editor.setPosition(18, 1, \"\");'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 2
		И я перехожу к закладке с именем "ГруппаЗапускТестов"

	* Запуск со строки, где установлена точка останова
		И я нажимаю на кнопку с именем 'VanessaEditorКонтекстноеМенюВыполнитьДанныйСценарийСТекущегоШага'
		И у элемента с именем "ФлагСценарииВыполнены" я жду значения "Да" в течение 60 секунд

	* Проверка результата
		И я нажимаю на кнопку с именем 'ПанельVanessaEditorФормаПерейтиВДеревоШагов'
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "СтраницаСлужебноеОсновное"
		И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		Тогда таблица "ДеревоТестов" стала равной:
			| 'Наименование'                                                           | 'Статус'  |
			| 'VanessaEditor22.feature'                                                | ''        |
			| 'VAEditor22'                                                             | ''        |
			| 'VAEditor22'                                                             | ''        |
			| 'И Я запоминаю значение выражения \'1+1\' в переменную "ИмяПеременной1"' | ''        |
			| 'И Я запоминаю значение выражения \'2+2\' в переменную "ИмяПеременной2"' | 'Success' |
			| 'И Я запоминаю значение выражения \'3+3\' в переменную "ИмяПеременной3"' | ''        |



Сценарий: Закрытие клиента тестирования
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT


Сценарий: Проверка, что при переходе в дерво и обратно останутся точки останова
	* Загрузка служебной фичи	
		И я перехожу в редактор Vanessa Automation из дерева

		И я перехожу к закладке с именем "ГруппаСлужебная"
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAEditor/VanessaEditor21"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient


	* Установка нужной строки текущей
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'VanessaTabs.current.editor.setPosition(18, 1, \"\");'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 2
		И я перехожу к закладке с именем "ГруппаЗапускТестов"

	* Установка точки останова
		И я нажимаю на кнопку с именем 'VanessaEditorSetBreakPoint'
		И пауза 2


	* Переход в дерево и обратно
		И я нажимаю на кнопку с именем 'ПанельVanessaEditorФормаПерейтиВДеревоШагов'
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "СтраницаСлужебноеОсновное"
		И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
		И я перехожу к закладке с именем "ГруппаЗапускТестов"

		Тогда таблица "ДеревоТестов" стала равной:
			| 'Наименование'                                                           | 'Статус' |
			| 'VanessaEditor21.feature'                                                | ''       |
			| 'VAEditor21'                                                             | ''       |
			| 'VAEditor21'                                                             | ''       |
			| 'И Я запоминаю значение выражения \'1+1\' в переменную "ИмяПеременной1"' | ''       |
			| 'И Я запоминаю значение выражения \'2+2\' в переменную "ИмяПеременной2"' | ''       |
			| 'И Я запоминаю значение выражения \'3+3\' в переменную "ИмяПеременной3"' | ''       |

		И в таблице "ДеревоТестов" я перехожу к строке:
			| 'Наименование'                                                           |
			| 'И Я запоминаю значение выражения \'3+3\' в переменную "ИмяПеременной3"' |
		
		И я перехожу в редактор Vanessa Automation из дерева
		И пауза 2
		И я нажимаю на кнопку с именем 'VanessaEditorПоказатьСписокТочекОстанова'
		Когда открылось окно 'Список точек останова'
		Тогда таблица "ДанныеТочекОстанова" стала равной:
			| '№'  |
			| '18' |
		И Я закрываю окно 'Список точек останова'



Сценарий: Закрытие клиента тестирования
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT


Сценарий: Остановка на строке подсценария, когда не отображаются строки подсценариев

	* Загрузка служебной фичи	
		И я перехожу в редактор Vanessa Automation из дерева

		И я перехожу к закладке с именем "ГруппаСлужебная"
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAEditor/VanessaEditor19"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient


	* Установка нужной строки текущей
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'VanessaTabs.current.editor.setPosition(19, 1, \"\");'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 2
		И я перехожу к закладке с именем "ГруппаЗапускТестов"

	* Установка точки останова
		И я нажимаю на кнопку с именем 'VanessaEditorSetBreakPoint'
		И пауза 2


	* Выполнение сценария	
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient	

	* Проверка что сработала точка останова
		Тогда в логе сообщений TestClient нет строки "Технические данные"
		Тогда в логе сообщений TestClient нет строки "Были ошибки"
		Тогда в логе сообщений TestClient есть строки:
			|'Остановка на брейкпоинте.'|







Сценарий: Сброс точек останова

	* Загрузка служебной фичи	
		И я перехожу в редактор Vanessa Automation из дерева

		И я перехожу к закладке с именем "ГруппаСлужебная"
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAEditor/VanessaEditor02"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient


	* Установка нужной строки текущей
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'VanessaTabs.current.editor.setPosition(17, 1, \"\");'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 2
		И я перехожу к закладке с именем "ГруппаЗапускТестов"

	* Установка точки останова
		И я нажимаю на кнопку с именем 'VanessaEditorSetBreakPoint'
		И пауза 2

	* Проверка списка точек останова
		И я нажимаю на кнопку с именем 'VanessaEditorПоказатьСписокТочекОстанова'
		Тогда открылось окно 'Список точек останова'
		Тогда таблица "ДанныеТочекОстанова" стала равной:
			| '№'  |
			| '17' |
		И я нажимаю на кнопку с именем 'ФормаПерейти'

	* Очистка списка точек останова
		И я нажимаю на кнопку с именем 'VanessaEditorRemoveBreakPoints'

	* Проверка списка точек останова	
		И я нажимаю на кнопку с именем 'VanessaEditorПоказатьСписокТочекОстанова'
		Тогда открылось окно 'Список точек останова'
		Тогда в таблице "ДанныеТочекОстанова" количество строк "равно" 0
		И я нажимаю на кнопку с именем 'ФормаЗакрыть'

	* Выполнение сценария
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient		
		

	* Проверка, что выполнились все строки

		И я нажимаю на кнопку с именем 'ПанельVanessaEditorФормаПерейтиВДеревоШагов'
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "СтраницаСлужебноеОсновное"
		И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		Тогда таблица "ДеревоТестов" стала равной:
			| 'Наименование'                                                           | 'Статус'  |
			| 'VanessaEditor02.feature'                                                | ''        |
			| 'VAEditor02'                                                             | ''        |
			| 'VAEditor02'                                                             | 'Success' |
			| 'И Я запоминаю значение выражения \'1+1\' в переменную "ИмяПеременной1"' | 'Success' |
			| 'И Я запоминаю значение выражения \'2+2\' в переменную "ИмяПеременной2"' | 'Success' |
			| 'И Я запоминаю значение выражения \'3+3\' в переменную "ИмяПеременной3"' | 'Success' |








Сценарий: Работа с точками останова редактора

	* Загрузка служебной фичи	
		И я перехожу в редактор Vanessa Automation из дерева

		И я перехожу к закладке с именем "ГруппаСлужебная"
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAEditor/VanessaEditor01"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient


	* Установка нужной строки текущей
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'VanessaTabs.current.editor.setPosition(17, 1, \"\");'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 2
		И я перехожу к закладке с именем "ГруппаЗапускТестов"

	* Установка точки останова
		И я нажимаю на кнопку с именем 'VanessaEditorSetBreakPoint'
		И пауза 2

	* Проверка списка точек останова
		И я нажимаю на кнопку с именем 'VanessaEditorПоказатьСписокТочекОстанова'
		Тогда открылось окно 'Список точек останова'
		Тогда таблица "ДанныеТочекОстанова" стала равной:
			| '№'  |
			| '17' |
		И я нажимаю на кнопку с именем 'ФормаПерейти'


		И я нажимаю на кнопку с именем 'VanessaEditorПоказатьСписокТочекОстанова'
		Тогда открылось окно 'Список точек останова'
		Тогда таблица "ДанныеТочекОстанова" стала равной:
			| '№'  |
			| '17' |
		И я нажимаю на кнопку с именем 'ФормаЗакрыть'



	* Выполнение сценария	
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient	

	* Проверка, что выполнилась только первая строка

		И я нажимаю на кнопку с именем 'ПанельVanessaEditorФормаПерейтиВДеревоШагов'
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "СтраницаСлужебноеОсновное"
		И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		Тогда таблица "ДеревоТестов" стала равной:
			| 'Наименование'                                                           | 'Статус'  |
			| 'VanessaEditor01.feature'                                                | ''        |
			| 'VAEditor01'                                                             | ''        |
			| 'VAEditor01'                                                             | ''        |
			| 'И Я запоминаю значение выражения \'1+1\' в переменную "ИмяПеременной1"' | 'Success' |
			| 'И Я запоминаю значение выражения \'2+2\' в переменную "ИмяПеременной2"' | ''        |
			| 'И Я запоминаю значение выражения \'3+3\' в переменную "ИмяПеременной3"' | ''        |


		И я закрываю сеанс текущего клиента тестирования
		

