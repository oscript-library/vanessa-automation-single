﻿
&НаКлиенте
Процедура ОбработкаКоманды(ПараметрКоманды, ПараметрыВыполненияКоманды)
	
	Если VAExtensionКлиент.ЭтоWindowsКлиент() Тогда
		
		// Получаем данные через буфер обмена - безопасный режим расширения VAExtension должен быть отключен.
		COMОбъектHtmlfile = Новый COMОбъект("htmlfile");
		Штрихкод = COMОбъектHtmlfile.ParentWindow.ClipboardData.Getdata("Text");    
		
		VAExtensionКлиент.ЭмуляцияРаботыСканераШтрикода(Штрихкод);
	
	КонецЕсли;	
	
КонецПроцедуры

