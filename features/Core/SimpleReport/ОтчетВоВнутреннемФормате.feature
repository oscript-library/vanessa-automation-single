﻿# language: ru
# encoding: utf-8
#parent uf:
@UF5_формирование_результатов_выполнения_сценариев
#parent ua:
@UA20_формировать_прочие_отчеты

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



Функционал: Отчет во внутреннем формате


Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой

	
Сценарий: Отчет во внутреннем формате
		
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ВнутреннийОтчет/ФичаДляПроверкиВстроенногоОтчета"
	И В открытой форме я перехожу к закладке с заголовком "Сервис"
	
	И я перехожу к закладке с именем "СтраницаОтчетыОЗапуске"
	И я изменяю флаг с именем 'ДелатьОтчетВоВнутреннемФормате'
	И я нажимаю на кнопку с именем 'ФормаПерезагрузитьИВыполнить'

	Тогда открылось окно 'Таблица'
	
	Тогда табличный документ "SpreadsheetDocument" равен:
		| '   ФичаДляПроверкиВстроенногоОтчета.feature' | ''                                                                     |
		| '      ФичаДляПроверкиВстроенногоОтчета'      | ''                                                                     |
		| '         ДляПроверкиВстроенногоОтчета01'     | ''                                                                     |
		| ''                                            | 'И Я запоминаю значение выражения \'1\' в переменную "ИмяПеременной1"' |
		| ''                                            | ''                                                                     |
		| ''                                            | 'И Я запоминаю значение выражения \'2\' в переменную "ИмяПеременной2"' |
		| ''                                            | ''                                                                     |
		| '         ДляПроверкиВстроенногоОтчета02'     | ''                                                                     |
		| ''                                            | 'И Я запоминаю значение выражения \'3\' в переменную "ИмяПеременной3"' |
		| ''                                            | ''                                                                     |
		| ''                                            | 'И Я запоминаю значение выражения \'4\' в переменную "ИмяПеременной4"' |
	