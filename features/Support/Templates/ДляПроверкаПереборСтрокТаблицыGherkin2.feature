# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA30_Прочие_макеты

@tree
@IgnoreOnCIMainBuild

Функционал: ДляПроверкаПереборСтрокТаблицыGherkin2




Сценарий: ДляПроверкаПереборСтрокТаблицыGherkin2
	И для каждой строки таблицы я выполняю в обратном порядке
		|'кол1'|'кол2'|
		|'зн1'|'зн2'|
		|'зн3'|'зн4'|
		|'зн5'|'зн6'|
		И я вывожу значение переменной "Кол1"
		Тогда я прерываю цикл
	
	И для каждой строки таблицы я выполняю
		|'кол1'|'кол2'|
		|'зн1'|'зн2'|
		|'зн3'|'зн4'|
		|'зн5'|'зн6'|
		И я вывожу значение переменной "Кол2"
		Тогда я прерываю цикл