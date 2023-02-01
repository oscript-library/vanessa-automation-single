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


Функциональность: Кнопка редактирования таблицы

    Как разработчик
    Я хочу чтобы в редакторе была возможность открыть редактор таблицы Gherkin
    Чтобы я мог быстро изменять состав колонок таблицы Gherkin

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой 'VAEditor'




Сценарий: Кнопка редактирования таблицы

	
	* Загрузка служебной фичи	
		И я перехожу в редактор Vanessa Automation из дерева

		И я перехожу к закладке с именем "ГруппаСлужебная"
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAEditor/VanessaEditor13"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient


	* Установка нужной строки текущей
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'VanessaTabs.current.editor.setPosition(17, 1, \"\");'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 1
		И я перехожу к закладке с именем "ГруппаЗапускТестов"

	* Открытие редактора таблиц

		И я нажимаю на кнопку с именем 'VanessaEditorКонтекстноеМенюРедактироватьТаблицуТекст'
		Тогда открылось окно 'Редактор таблиц Gherkin'

	* Проверка текущего состояния
		Тогда таблица "ТаблицаНаФорме" стала равной:
			| 'Колонка1'      | 'Колонка2'      |
			| '\'Колонка1\''  | '\'Колонка2\''  |
			| '\'Значение1\'' | '\'Значение2\'' |
		
		Тогда таблица "СписокКолонок" стала равной:
			| 'Пометка' | 'Значение' |
			| 'Да'      | 'Колонка1' |
			| 'Да'      | 'Колонка2' |
	
	* Сдвиг колонки вниз и проверка состояния
		И в таблице "СписокКолонок" я перехожу к строке:
			| 'Значение' | 'Пометка' |
			| 'Колонка1' | 'Да'      |
			
		И в таблице "СписокКолонок" я нажимаю на кнопку с именем 'РедакторТаблицСписокКолонокСдвинутьКолонкуВниз'
		Тогда таблица "ТаблицаНаФорме" стала равной:
			| 'Колонка2'      | 'Колонка1'      |
			| '\'Колонка2\''  | '\'Колонка1\''  |
			| '\'Значение2\'' | '\'Значение1\'' |

		Тогда таблица "СписокКолонок" стала равной:
			| 'Пометка' | 'Значение' |
			| 'Да'      | 'Колонка2' |
			| 'Да'      | 'Колонка1' |
				
				
	* Сдвиг колонки вверх и проверка состояния	
		И в таблице "СписокКолонок" я перехожу к строке:
			| 'Значение' | 'Пометка' |
			| 'Колонка1' | 'Да'      |
			
					
		И в таблице "СписокКолонок" я нажимаю на кнопку с именем 'РедакторТаблицСписокКолонокСдвинутьКолонкуВВерх'
		Тогда таблица "ТаблицаНаФорме" стала равной:
			| 'Колонка1'      | 'Колонка2'      |
			| '\'Колонка1\''  | '\'Колонка2\''  |
			| '\'Значение1\'' | '\'Значение2\'' |

		Тогда таблица "СписокКолонок" стала равной:
			| 'Пометка' | 'Значение' |
			| 'Да'      | 'Колонка1' |
			| 'Да'      | 'Колонка2' |
		
	* Снятие флага у одной колонки			
				
		И в таблице "СписокКолонок" я перехожу к строке:
			| 'Значение' | 'Пометка' |
			| 'Колонка2' | 'Да'      |
		И в таблице "СписокКолонок" я снимаю флаг с именем 'СписокКолонокПометка'
		И в таблице "СписокКолонок" я нажимаю на кнопку с именем 'РедакторТаблицСписокКолонокСдвинутьКолонкуВВерх'
		И я нажимаю на кнопку с именем 'РедакторТаблицФормаОК'

	* Проверка результата
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'Сообщить(СокрЛП(VanessaTabs.current.editor.getLineContent(17)))'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 1
		Тогда в логе сообщений TestClient есть строки:
			|'\| \'Колонка1\'  \|'|

		И Пауза 1
		И я очищаю окно сообщений пользователю
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'Сообщить(СокрЛП(VanessaTabs.current.editor.getLineContent(18)))'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 1
		Тогда в логе сообщений TestClient есть строки:
			|'\| \'Значение1\' \|'|

		И я очищаю окно сообщений пользователю

	* Добавление колонки
		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		И Пауза 1
		И я нажимаю на кнопку с именем 'VanessaEditorКонтекстноеМенюРедактироватьТаблицуТекст'
		Тогда открылось окно 'Редактор таблиц Gherkin'
		И в таблице "СписокКолонок" я нажимаю на кнопку с именем 'РедакторТаблицСписокКолонокДобавитьКолонку'
		Тогда открылось окно 'Введите имя новой колонки'
		И в поле с именем 'InputFld' я ввожу текст 'КолонкаНовая'
		И я нажимаю на кнопку с именем 'OK'

	* Проверка результата

		И в таблице "ТаблицаНаФорме" я перехожу к строке:
			| 'КолонкаНовая' |
			| '\'\''         |

		И в таблице "ТаблицаНаФорме" в поле с именем 'ТаблицаНаФорме_Колонка2' я ввожу текст '\'НовоеЗначение\''
		И в таблице "ТаблицаНаФорме" я завершаю редактирование строки


		Тогда таблица "ТаблицаНаФорме" стала равной:
			| 'Колонка1'      | 'КолонкаНовая'      |
			| '\'Колонка1\''  | '\'КолонкаНовая\''  |
			| '\'Значение1\'' | '\'НовоеЗначение\'' |
		

		
		Тогда таблица "СписокКолонок" стала равной:
			| 'Пометка' | 'Значение'     |
			| 'Да'      | 'Колонка1'     |
			| 'Да'      | 'КолонкаНовая' |

		И в таблице "СписокКолонок" я перехожу к строке:
			| 'Значение' | 'Пометка' |
			| 'Колонка1' | 'Да'      |
		И в таблице "СписокКолонок" я снимаю флаг с именем 'СписокКолонокПометка'
		
		И Пауза 1

		

					
		
		И я нажимаю на кнопку с именем 'РедакторТаблицФормаОК'
						
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'Сообщить(СокрЛП(VanessaTabs.current.editor.getLineContent(17)))'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 1
		Тогда в логе сообщений TestClient есть строки по шаблону:
			|'\| \'КолонкаНовая\'*'|
		


		И Пауза 1
		И я очищаю окно сообщений пользователю
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'Сообщить(СокрЛП(VanessaTabs.current.editor.getLineContent(18)))'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 1
		Тогда в логе сообщений TestClient есть строки по шаблону:
			|'\| \'НовоеЗначение\'*'|


		* Проверка добавление колонки, когда сняты пометки
			И я перехожу к закладке с именем "ГруппаЗапускТестов"
			И Пауза 1
			И я нажимаю на кнопку с именем 'VanessaEditorКонтекстноеМенюРедактироватьТаблицуТекст'
			Тогда открылось окно 'Редактор таблиц Gherkin'
		
			И в таблице "СписокКолонок" я снимаю флаг с именем 'СписокКолонокПометка'

			Когда открылось окно 'Редактор таблиц Gherkin'
			И в таблице "СписокКолонок" я нажимаю на кнопку с именем 'РедакторТаблицСписокКолонокДобавитьКолонку'
			Тогда открылось окно 'Введите имя новой колонки'
			И в поле с именем 'InputFld' я ввожу текст 'ЕщёКолонка2'
			И я нажимаю на кнопку с именем 'OK'

			И Пауза 1
			Тогда таблица "ТаблицаНаФорме" стала равной:
				| 'ЕщёКолонка2'     |
				| '\'ЕщёКолонка2\'' |
				| '\'\''            |
			
						
										
		