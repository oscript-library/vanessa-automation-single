﻿//начало текста модуля

///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////

&НаКлиенте
// контекст фреймворка Vanessa-Behavior
Перем Ванесса;
 
&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;

// Делает отключение модуля
&НаКлиенте
Функция ОтключениеМодуля() Экспорт

	Ванесса = Неопределено;
	Контекст = Неопределено;
	КонтекстСохраняемый = Неопределено;

КонецФункции

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯРазвернулВсеВеткиДереваVB()","ЯРазвернулВсеВеткиДереваVB","Когда я развернул все ветки дерева VB");

	Возврат ВсеТесты;
КонецФункции
	
&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета);
КонецФункции
	
&НаКлиенте
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции



///////////////////////////////////////////////////
//Работа со сценариями
///////////////////////////////////////////////////

&НаКлиенте
// Функция выполняется перед началом каждого сценария
Функция ПередНачаломСценария() Экспорт
	
КонецФункции

&НаКлиенте
// Функция выполняется перед окончанием каждого сценария
Функция ПередОкончаниемСценария() Экспорт
	
КонецФункции



///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
Функция РазвернутьСтрокуДерева(Строка,Элементы_ДеревоТестов)
	ИдентификаторСтроки=Строка.ПолучитьИдентификатор();
	Элементы_ДеревоТестов.Развернуть(ИдентификаторСтроки);
КонецФункции

&НаКлиенте
Функция СделатьОбходСтрок(Строки,Элементы_ДеревоТестов)
	Для каждого Строка Из Строки Цикл
		РазвернутьСтрокуДерева(Строка,Элементы_ДеревоТестов);
		
		ПодчиненныеСтроки = Строка.ПолучитьЭлементы();
		СделатьОбходСтрок(ПодчиненныеСтроки,Элементы_ДеревоТестов);
	КонецЦикла;
КонецФункции

&НаКлиенте
//Когда я развернул все ветки дерева VB
//@ЯРазвернулВсеВеткиДереваVB()
Функция ЯРазвернулВсеВеткиДереваVB() Экспорт
	ДеревоТестовСтроки = Ванесса.Объект.ДеревоТестов.ПолучитьЭлементы();
	Элементы_ДеревоТестов = Ванесса.Элементы.ДеревоТестов;
	
	СделатьОбходСтрок(ДеревоТестовСтроки,Элементы_ДеревоТестов);
КонецФункции

//окончание текста модуля