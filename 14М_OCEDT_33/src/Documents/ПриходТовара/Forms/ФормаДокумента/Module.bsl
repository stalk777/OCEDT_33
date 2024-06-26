&НаКлиенте
Процедура ТоварыКоличествоПриИзменении(Элемент)
	
	ТекущиеДанные = Элементы.Товары.ТекущиеДанные;
	
	Если ТекущиеДанные = Неопределено Тогда
		Возврат;
	КонецЕсли;	
	
	ТекстСообщения = "Изменено количество";
	
	РассчитатьСуммуСтроки(ТекущиеДанные, ТекстСообщения);
	
КонецПроцедуры

&НаКлиенте
Процедура РассчитатьСуммуСтроки(ТекущиеДанные, ТекстСообщения)
	
	ТекущиеДанные.Сумма = ТекущиеДанные.Количество * ТекущиеДанные.Цена;
	
	Сообщение = Новый СообщениеПользователю();
	Сообщение.Текст = ТекстСообщения;
	Сообщение.УстановитьДанные(ЭтотОбъект);
	Сообщение.Сообщить();
	
	МояСтруктураПример = СоздатьСтруктуру();
	
КонецПроцедуры

// Создать структуру.
// 
// Возвращаемое значение:
//  Структура - Создать структуру:
// * Строка - Строка - 
// * Дата сегодня - Дата - 
// * Сумма - Число - 
// * Булево - Булево - 
&НаКлиенте
Функция СоздатьСтруктуру()
	
	Структ = Новый Структура;
	Структ.Вставить("Строка", "Привет мiр!" );
	Структ.Вставить("Дата сегодня", ТекущаяДата());
	Структ.Вставить("Сумма", 2 + 2 );
	Структ.Вставить("Булево", Истина );
	
	Возврат Структ;
	
КонецФункции

&НаКлиенте
Процедура ТоварыЦенаПриИзменении(Элемент)
	
	ТекущиеДанные = Элементы.Товары.ТекущиеДанные;
	
	Если ТекущиеДанные = Неопределено Тогда
		Возврат;
	КонецЕсли;	
	
	ТекстСообщения = "Изменена цена";
	
	РассчитатьСуммуСтроки(ТекущиеДанные, ТекстСообщения);
	
КонецПроцедуры

