﻿# language: ru

@lessons

Функционал: Интерактивная справка. Прочие настройки.

Сценарий: Прочие настройки

	* Привет! В этом уроке я расскажу тебе про оставшиеся настройки, которые находятся на закладке Прочее. Давай откроем второй экземпляр Ванессы в режиме обучения.
		И я открываю Vanessa Automation в режиме обучения
		
	* Данные настройки находится тут.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаНастройкиПрочее' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Прочие настройки" UI Automation
			| 'Имя'                                       |
			| 'ВычислитьPIDЭтогоСеанса1'                  |
			| 'PIDЭтогоСеанса'                            |
			| 'ПолучитьСтрокуЗапуска'                     |
			| 'ПолучитьСтрокуЗапускаСВыводомЛогаВКонсоль' |
	
	* Эта гиперссылка позволяет вычислить идентификатор процесса менеджера тестирования.
		И я делаю подсветку нескольких элементов VA с их заголовком "Вычислить идентифкатор процесса менеджера тестирования" UI Automation
			| 'Имя'                      |
			| 'ВычислитьPIDЭтогоСеанса1' |
	* Иногда это используется в сценариях. Например, в сценариях интерактивной справки.		
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ВычислитьPIDЭтогоСеанса1' UI Automation

	* При этом в данном поле отобразится идентификатор процесса.
		И я делаю подсветку нескольких элементов VA с их заголовком "PID процесса" UI Automation
			| 'Имя'            |
			| 'PIDЭтогоСеанса' |
	
	* Продолжим. Данная гиперссылка позволяет получить команду операционной системы для запуска сессии тестирования.
		И я делаю подсветку нескольких элементов VA с их заголовком "Получить строку запуска из командной строки" UI Automation
			| 'Имя'                   |
			| 'ПолучитьСтрокуЗапуска' |
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ПолучитьСтрокуЗапуска' UI Automation
		И Пауза 1
		
			
	* Продолжим. Данная гиперссылка позволяет получить команду операционной системы для запуска сессии тестирования с выводом сообщений в консоль.
		И я делаю подсветку нескольких элементов VA с их заголовком "Получить строку запуска из командной строки" UI Automation
			| 'Имя'                                       |
			| 'ПолучитьСтрокуЗапускаСВыводомЛогаВКонсоль' |
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ПолучитьСтрокуЗапускаСВыводомЛогаВКонсоль' UI Automation
		И Пауза 1
		
	* Этот вариант лушче, т.к. снижает нагрузку на диск.	
			



	* На этом всё, переходи к следующему уроку интерактивной справки.



