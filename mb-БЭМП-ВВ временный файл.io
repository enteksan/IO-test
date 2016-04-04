<?xml version="1.0" encoding="windows-1251"?>
<!-- Устройства c протоколом modbus -->

<KLogicModules>
  <Module Id="7081">
    <Name>БЭМП РУ-ВВ</Name>
    <sModGroupName>Цифровые РЗА</sModGroupName>
    <CfgName>БЭМПРУЛ</CfgName>
    <Descr>МП РЗиА БЭМП РУ-ВВ</Descr>
    <Protocol>Modbus</Protocol>
    <Properties>
      <Prop Id="1" Name="Адрес модуля" Type="BYTE"  Init="1"/>
      <Prop Id="2" Name="Режим" Descr="Режим передачи 0-RTU, 1-ASCII (не реализован)" Type="BYTE" Init="0" Access="H"/>
      <Prop Id="3" Name="Карта" Descr="Адресация карты с 1" Type="BYTE" Init="0" Access="H"/>
      <Prop Id="7" Name="KU" Descr="Множитель KU" Type="WORD" Init="1"/>
      <Prop Id="8" Name="KI" Descr="Множитель KI" Type="WORD" Init="1"/>
    </Properties>
    <TagProperties>
      <Prop IdStr="Adr"      Name="Адрес модбас" Type="WORD" Access="R" Format="0x%x"/>
      <Prop IdStr="Func"     Name="Код функции"  Type="BYTE" Access="R" Init="3" Format="0x%x"/>
      <Prop IdStr="DataType" Name="Тип данных"   Type="BYTE"  Access="R" Init="11"/>
      <Prop IdStr="K"        Name="Коэффициент"  Type="FLOAT" Access="R" Init="1"/>
      <Prop IdStr="msk"      Name="Маска"        Type="WORD"  Access="R" Init="0xFFFF" Format="0x%x"/>
      <Prop IdStr="mn"	     Name="Тип множителя(0-нет, 1-KU, 2-KI, 3-KU*KI)"	Access="R"	Type="BYTE"  Init="0"/>	  
    </TagProperties>
    <TagTree>
	<Group Name="Служебные">
		<Tag Name="Связь"      Type="DI"  Adr="0x0001" Func="0" Descr="Наличие связи с устройством"/>
		<Tag Name="Время"      Type="DTI" Adr="0x0002" Func="0" Descr="Время опроса устройства"/>
		<Tag Name="Приостанов" Type="DO"  Adr="0x0003" Func="0" Descr="Приостанов опроса устройства (True - не опрашивать)"/>
	</Group>
	<Group Name="ТИ">
		<Tag Name="Ia"       Descr="Ток фазы А"                                           Type="AIF" Adr="0x0800" Measure="A"  K="0,001" mn="3"/>
		<Tag Name="Ib"       Descr="Ток фазы В"                                           Type="AIF" Adr="0x0801"  DataType="11" Measure="A" K="0,001" mn="3"/>
        <Tag Name="Ic"       Descr="Ток фазы С"                                           Type="AIF" Adr="0x0802" Measure="A"  K="0,001" mn="3"/>
		<Tag Name="фаза Ia"  Descr="Фазовый угол тока Ia"                                 Type="AIF" Adr="0x0803" Measure="A"  K="1" mn="2"/>
		<Tag Name="фаза Ib"  Descr="Фазовый угол тока Ib"                                 Type="AIF" Adr="0x0804" Measure="A"  K="1" mn="2"/>
        <Tag Name="фаза Ic"  Descr="Фазовый угол тока Ic"                                 Type="AIF" Adr="0x0805" Measure="A"  K="1" mn="2"/>
		<Tag Name="I1"       Descr="Ток прямой последовательности I1"                     Type="AIF" Adr="0x0806" Measure="A"  K="0,001" mn="3"/>
		<Tag Name="I2"       Descr="Ток обратной последовательности I2"                   Type="AIF" Adr="0x0807" Measure="A"  K="0,001" mn="3"/>
        <Tag Name="фаза I1"  Descr="Фазовый угол тока I1"                                 Type="AIF" Adr="0x0808" Measure="A"  K="1" mn="2"/>
		<Tag Name="фаза I2"  Descr="Фазовый угол тока I2"                                 Type="AIF" Adr="0x0809" Measure="A"  K="1" mn="2"/>
		<Tag Name="Iab"      Descr="Iab"                                                  Type="AIF" Adr="0x080A" Measure="A"  K="0,001" mn="3"/>
		<Tag Name="Ibc"      Descr="Ibc"                                                  Type="AIF" Adr="0x080B" Measure="A"  K="0,001" mn="3"/>
        <Tag Name="Ica"      Descr="Ica"                                                  Type="AIF" Adr="0x080C" Measure="A"  K="0,001" mn="3"/>
		<Tag Name="фаза Iab" Descr="фазовый угол тока Iab"                                Type="AIF" Adr="0x080D" Measure="A"  K="1" mn="2"/>
		<Tag Name="фаза Ibc" Descr="фазовый угол тока Ibc"                                Type="AIF" Adr="0x080E" Measure="A"  K="1" mn="2"/>
        <Tag Name="фаза Ica" Descr="фазовый угол тока Ica"                                Type="AIF" Adr="0x080F" Measure="A"  K="1" mn="2"/>                                
		<Tag Name="Ua"       Descr="Фазное напряжение Ua"                                 Type="AIF" Adr="0x0810" Measure="A"  K="0,0001" mn="0,000001"/>
		<Tag Name="Ub"       Descr="Фазное напряжение Ua"                                 Type="AIF" Adr="0x0811" Measure="A"  K="0,0001" mn="0,000001"/>
        <Tag Name="Uc"       Descr="Фазное напряжение Ua"                                 Type="AIF" Adr="0x0812" Measure="A"  K="0,0001" mn="0,000001"/>
		<Tag Name="фаза Ua"  Descr="фазовый угол напряжения Ua"                           Type="AIF" Adr="0x0813" Measure="A"  K="1" mn="1"/>
		<Tag Name="фаза Ub"  Descr="фазовый угол напряжения Ub"                           Type="AIF" Adr="0x0814" Measure="A"  K="1" mn="1"/>
        <Tag Name="фаза Uc"  Descr="фазовый угол напряжения Uc"                           Type="AIF" Adr="0x0815" Measure="A"  K="1" mn="1"/>
		<Tag Name="U1"       Descr="Напряжение прямой последовательности U1"              Type="AIF" Adr="0x0816" Measure="A"  K="0,0001" mn="1"/>
		<Tag Name="U2"       Descr="Напряжение обратной последовательности U2"            Type="AIF" Adr="0x0817" Measure="A"  K="0,0001" mn="1"/>
        <Tag Name="U0"       Descr="Напряжение нулевой последовательности U0"             Type="AIF" Adr="0x0818" Measure="A"  K="0,0001" mn="1"/>
        <Tag Name="3U0тн"    Descr="действ. знач. напр. нулевой последовательности 3U0тн" Type="AIF" Adr="0x0819" Measure="A" K="0,0001" mn="1"/>
		<Tag Name="фаза U1"  Descr="фазовый угол напряжения U1"                           Type="AIF" Adr="0x081A" Measure="A"  K="1" mn="1"/>
		<Tag Name="фаза U2"  Descr="фазовый угол напряжения U2"                           Type="AIF" Adr="0x081B" Measure="A"  K="1" mn="1"/>
        <Tag Name="фаза U0"  Descr="фазовый угол напряжения U0"                           Type="AIF" Adr="0x081C" Measure="A"  K="1" mn="1"/>
		<Tag Name="Uab"      Descr="Линейное напряжение Uab"                              Type="AIF" Adr="0x081D" Measure="A"  K="0,0001" mn="1"/>
		<Tag Name="Ubc"      Descr="Линейное напряжение Ubc"                              Type="AIF" Adr="0x081E" Measure="A"  K="0,0001" mn="1"/>
        <Tag Name="Uca"      Descr="Линейное напряжение Uca"                              Type="AIF" Adr="0x081F" Measure="A"  K="0,0001" mn="1"/>
		<Tag Name="фаза Uab" Descr="фазовый угол напряжения Uab"                          Type="AIF" Adr="0x0820" Measure="A" K="1" mn="1"/>
		<Tag Name="фаза Ubc" Descr="фазовый угол напряжения Ubc"                          Type="AIF" Adr="0x0821" Measure="A" K="1" mn="1"/>
        <Tag Name="фаза Uca" Descr="фазовый угол напряжения Ubc"                          Type="AIF" Adr="0x0822" Measure="A" K="1" mn="1"/>
		<Tag Name="Zab"      Descr="Полное сопротивление Zab"                             Type="AIF" Adr="0x0823" DataType="21" Measure="A"  K="0,01" mn="1"/>
		<Tag Name="Zbc"      Descr="Полное сопротивление Zbc"                             Type="AIF" Adr="0x0825" DataType="21" Measure="A"  K="0,01" mn="1"/>
        <Tag Name="Zca"      Descr="Полное сопротивление Zca"                             Type="AIF" Adr="0x0827" DataType="21" Measure="A"  K="0,01" mn="1"/>
		<Tag Name="фаза Zab" Descr="Фазовый угол сопротивления Zab"                       Type="AIF" Adr="0x0829" Measure="A"  K="1" mn="1"/>
		<Tag Name="фаза Zbc" Descr="Фазовый угол сопротивления Zbc"                       Type="AIF" Adr="0x082A" Measure="A"  K="1" mn="1"/>
        <Tag Name="фаза Zca" Descr="Фазовый угол сопротивления Zca"                       Type="AIF" Adr="0x082B" Measure="A"  K="1" mn="1"/>
		<Tag Name="Rab"      Descr="Активное сопротивление Rab"                           Type="AIF" Adr="0x082C" DataType="21" Measure="A" K="0,01" mn="1"/>
		<Tag Name="Xab"      Descr="Реактивное сопротивление Xab"                         Type="AIF" Adr="0x082E" DataType="21" Measure="A" K="0,01" mn="1"/>
        <Tag Name="Rbc"      Descr="Активное сопротивление Rbc"                           Type="AIF" Adr="0x0830" DataType="21" Measure="A" K="0,01" mn="1"/>
		<Tag Name="Xbc"      Descr="Реактивное сопротивление Xbc"                         Type="AIF" Adr="0x0832" DataType="21" Measure="A" K="0,01" mn="1"/>
		<Tag Name="Rca"      Descr="Активное сопротивление Rca"                           Type="AIF" Adr="0x0834" DataType="21" Measure="A" K="0,01" mn="1"/>
        <Tag Name="Xca"      Descr="Реактивное сопротивление Xca"                         Type="AIF" Adr="0x0836" DataType="21" Measure="A" K="0,01" mn="1"/>
		<Tag Name="P"        Descr="Активная мощность P"                                  Type="AIF" Adr="0x0838" DataType="21" Measure="A"  K="0,01" mn="1"/>
		<Tag Name="Q"        Descr="Реактивная мощность Q"                                Type="AIF" Adr="0x083A" DataType="21" Measure="A"  K="0,01" mn="1"/>
        <Tag Name="S"        Descr="Полная мощность S"                                    Type="AIF" Adr="0x083C" DataType="21" Measure="A"  K="0,01" mn="1"/>
        <Tag Name="F"        Descr="Частота основной гармоники F"                         Type="AIF" Adr="0x083E" Measure="A"  K="0,001" mn="1"/>

        <Tag Name="Wh полученная акт. энер."     Descr="Wh полученная активная энергия"     Type="AIF" Adr="0x083F" DataType="36" Measure="A"  K="1" mn="1"/>                      	
        <Tag Name="Wh отданная акт. энер."       Descr="Wh отданная активная энергия"       Type="AIF" Adr="0x0843" DataType="36" Measure="A"  K="1" mn="1"/>                      	
        <Tag Name="VArh полученная реакт. энер." Descr="VArh полученная реактивная энергия" Type="AIF" Adr="0x0847" DataType="36" Measure="A"  K="1" mn="1"/>                      	
        <Tag Name="VArh отданная реакт. энер."   Descr="VArh отданная реактивная энергия"   Type="AIF" Adr="0x084B" DataType="36" Measure="A"  K="1" mn="1"/>                      	
        <Tag Name="VAh отданная полн. энер."     Descr="VAh отданная полная энергия"        Type="AIF" Adr="0x084F" DataType="36" Measure="A"  K="1" mn="1"/>                      	
        <Tag Name="VAh полученная полн. энер."   Descr="VAh полученная полная энергия"      Type="AIF" Adr="0x0853" DataType="36" Measure="A"  K="1" mn="1"/>                      	



</Group>
	<!--
	<Group Name="DI">
                <Tag Name="РПО"         Descr="РПО"                Type="DI"  Adr="0x0500" msk="0x0001" />
                <Tag Name="РПВ"         Descr="РПВ"                Type="DI"  Adr="0x0501" msk="0x0001" />
                <Tag Name="Внешее откл" Descr="Внешнее отключение" Type="DI"  Adr="0x0503" msk="0x0001" />              
                <Tag Name="ВКЛ"         Descr="Включить"           Type="DI"  Adr="0x0509" msk="0x0001" />
                <Tag Name="ОТКЛ"        Descr="Отключить"          Type="DI"  Adr="0x0508" msk="0x0001" />
        </Group>  
	-->  
	
	<Group Name="Счетчики">
		<Tag Name="Сч.АПВ1"       Descr="Счетчик АПВ1"      Type="AIF" Adr="0x3400" Measure="A"  K="0,01" mn="1"/>
		<Tag Name="Сч.АПВ1 усп."  Descr="Счетчик АПВ1 усп." Type="AIF" Adr="0x3401" Measure="A"  K="0,01" mn="1"/>
		<Tag Name="Сч.АПВ2"       Descr="Счетчик АПВ2"      Type="AIF" Adr="0x3402" Measure="A"  K="0,01" mn="1"/>
		<Tag Name="Сч.АПВ2 усп."  Descr="Счетчик АПВ2 усп." Type="AIF" Adr="0x3403" Measure="A"  K="0,01" mn="1"/>           
	</Group>

	<Group Name="ТС">
		<Tag Name="РПО"              Descr="РПО"             Type="DI"  Adr="0x1900" msk="0x0001" />
        <Tag Name="РПВ"              Descr="РПВ"             Type="DI"  Adr="0x1901" msk="0x0001" />
		<Tag Name="АВТОМАТ ТН"       Descr="Автомат ТН"      Type="DI"  Adr="0x1902" msk="0x0001" />
		<Tag Name="ВН_ОТКЛ-1"        Descr="Внешнее откл. без АПВ и АВР"  Type="DI"  Adr="0x1903" msk="0x0001" />
        <Tag Name="ВН_СИГН-1"        Descr="Внешний сигн 1"  Type="DI"  Adr="0x1904" msk="0x0001" />              
        <Tag Name="ЗДЗ ВВ\ВЫВ"       Descr="ЗДЗ Ввод\Вывод"  Type="DI"  Adr="0x1905" msk="0x0001" />
        <Tag Name="ЗДЗ ВЫКЛ"         Descr="ЗДЗ выключена"   Type="DI"  Adr="0x1906" msk="0x0001" />
		<Tag Name="ПОЛОЖ_ТЕЛЕЖ"      Descr="Полож тележки"   Type="DI"  Adr="0x1907" msk="0x0001" />
        <Tag Name="ОТКЛЮЧИТЬ"        Descr="ОТКЛЮЧИТЬ"       Type="DI"  Adr="0x1908" msk="0x0001" />
        <Tag Name="ВКЛЮЧИТЬ"         Descr="ВКЛЮЧИТЬ"        Type="DI"  Adr="0x1909" msk="0x0001" />              
        <Tag Name="АВТОМАТ ШП"       Descr="АВТОМАТ ШП"      Type="DI"  Adr="0x191A" msk="0x0001" />
        <Tag Name="ПРИВ.НЕГОТОВ"     Descr="Привод не готов" Type="DI"  Adr="0x190B" msk="0x0001" />
		<Tag Name="Блок ЛЗШ"         Descr="Блокировка ЛЗШ" Type="DI"  Adr="0x190B" msk="0x0001" />
		<Tag Name="Блок ЛЗШ СВ"      Descr="Блокировка ЛЗШ от СВ" Type="DI"  Adr="0x190B" msk="0x0001" />
		<Tag Name="УРОВ"             Descr="УРОВ" Type="DI"  Adr="0x190B" msk="0x0001" />
		<Tag Name="ЗДЗ секции"       Descr="Дуговая защита секции" Type="DI"  Adr="0x190B" msk="0x0001" />
		<Tag Name="Откл с АПВ"       Descr="Отключение с АПВ" Type="DI"  Adr="0x190B" msk="0x0001" />
		<Tag Name="ВНР"              Descr="Восстановление нормального режима" Type="DI"  Adr="0x190B" msk="0x0001" />
		<Tag Name="U смеж секции"    Descr="Наличие U на смежной секции" Type="DI"  Adr="0x190B" msk="0x0001" />
		<Tag Name="РПВ СВ"           Descr="Положение секционного выключателя" Type="DI"  Adr="0x190B" msk="0x0001" />
		<Tag Name="Откл с АВР"       Descr="Отключение с АВР" Type="DI"  Adr="0x190B" msk="0x0001" />
		<Tag Name="Блок АВР"         Descr="Блокировка АВР" Type="DI"  Adr="0x190B" msk="0x0001" />
		<Tag Name="ОТКЛ.ПО ТУ"       Descr="ОТКЛ.ПО ТУ"      Type="DI"  Adr="0x1916" msk="0x0001" />
		<Tag Name="ВКЛ. ПО ТУ"       Descr="ВКЛ. ПО ТУ"      Type="DI"  Adr="0x1917" msk="0x0001" />
		<Tag Name="СБРОС СИГН."      Descr="Сброс сигнализации по ТУ"     Type="DI"  Adr="0x1918" msk="0x0001" />
		<Tag Name="Блок АПВ"         Descr="Блокировка АПВ"          Type="DI"  Adr="0x1919" msk="0x0001" />
		<Tag Name="Сброс сигн"       Descr="Сброс сигнала"       Type="DI"  Adr="0x191A" msk="0x0001" />
		<Tag Name="АВР"              Descr="АВР (вход)"       Type="DI"  Adr="0x191B" msk="0x0001" />
		<Tag Name="ПУСК ОСЦИЛ."      Descr="ПУСК Осциллографа"     Type="DI"  Adr="0x191E" msk="0x0001" />
		<Tag Name="МТЗ-1"            Descr="Пуск МТЗ-1"         Type="DI"  Adr="0x1920" msk="0x0001" />
		<Tag Name="СР.МТЗ-1"         Descr="Срабатывание МТЗ-1"        Type="DI"  Adr="0x1921" msk="0x0001" />
		<Tag Name="П.МТЗ-2"          Descr="Пуск МТЗ-2"         Type="DI"  Adr="0x1922" msk="0x0001" />
		<Tag Name="СР.МТЗ-2"         Descr="Срабатывание МТЗ-2"        Type="DI"  Adr="0x1923" msk="0x0001" />
		<Tag Name="П.МТЗ-3"          Descr="Пуск МТЗ-3"         Type="DI"  Adr="0x1924" msk="0x0001" />
		<Tag Name="СР.МТЗ-3"         Descr="Срабатывание МТЗ-3"        Type="DI"  Adr="0x1925" msk="0x0001" />
		<Tag Name="ПУСК МТЗ"         Descr="Пуск МТЗ"        Type="DI"  Adr="0x1928" msk="0x0001" />
		<Tag Name="УСК МТЗ"          Descr="Ускорение МТЗ"         Type="DI"  Adr="0x1929" msk="0x0001" />
		<Tag Name="ПУСК ПО U"        Descr="ПУСК МТЗ ПО U"       Type="DI"  Adr="0x192A" msk="0x0001" />
		<Tag Name="П.ЗОЗЗ"           Descr="Пуск защиты от замыканий на землю"          Type="DI"  Adr="0x192F" msk="0x0001" />
		<Tag Name="СР.3ОЗЗ"          Descr="Сраб. защиты от замыканий на землю"         Type="DI"  Adr="0x1930" msk="0x0001" />
		<Tag Name="П.3ОФ"            Descr="Пуск защиты от обрыва фазы"     Type="DI"  Adr="0x1931" msk="0x0001" />
		<Tag Name="СР.3ОФ"           Descr="Сраб.защиты от обрыва фазы"     Type="DI"  Adr="0x1932" msk="0x0001" />
		<Tag Name="СР. ЛЗШ"          Descr="Сраб. ЛЗШ"       Type="DI"  Adr="0x1933" msk="0x0001" />
		<Tag Name="Неиспр.ЛЗШ"       Descr="Неисправность ЛЗШ"        Type="DI"  Adr="0x1934" msk="0x0001" />
		<Tag Name="Сигн.ЛЗШ"         Descr="ЗДЗ ВЫКЛ"        Type="DI"  Adr="0x1934" msk="0x0001" />
		<Tag Name="ЗДЗ В ШКАФУ"      Descr="ЗДЗ В ШКАФУ"     Type="DI"  Adr="0x1935" msk="0x0001" />
		<Tag Name="П. ЗДЗ по I"      Descr="ЗДЗ В ШКАФУ"     Type="DI"  Adr="0x1935" msk="0x0001" />
		<Tag Name="СР.ЗДЗ"           Descr="Сраб. защиты от дуговых замыканий(ЗДЗ)"  Type="DI"  Adr="0x1936" msk="0x0001" />
		<Tag Name="НЕИСПР.ЗДЗ"       Descr="Неисправность ЗДЗ"      Type="DI"  Adr="0x1937" msk="0x0001" />
		<Tag Name="П.ЗМН"            Descr="Пуск защиты от минимального напряжения"          Type="DI"  Adr="0x192F" msk="0x0001" />
		<Tag Name="СР.3МН"           Descr="Сраб. защиты от минимального напряжения"         Type="DI"  Adr="0x1930" msk="0x0001" />		
		<Tag Name="ПОВР.Ф.А"         Descr="Повреждение Фазы А"        Type="DI"  Adr="0x1938" msk="0x0001" />
		<Tag Name="ПОВР.Ф.В"         Descr="Повреждение Фазы В"        Type="DI"  Adr="0x1939" msk="0x0001" />
		<Tag Name="ПОВР.Ф.С"         Descr="Повреждение Фазы С"        Type="DI"  Adr="0x193A" msk="0x0001" />
		<Tag Name="ПОВР.Ф.N"         Descr="Повреждение Фазы N"        Type="DI"  Adr="0x193B" msk="0x0001" />
		<Tag Name="ВНЕШ.СИГН."       Descr="ВНЕШ.СИГН."    Type="DI"  Adr="0x193C" msk="0x0001" />
		<Tag Name="ВНЕШ.ОТКЛ."       Descr="ВНЕШ.ОТКЛ."    Type="DI"  Adr="0x193D" msk="0x0001" />
		<Tag Name="ВО с АПВ"         Descr="ВНЕШ.СИГН.-2"    Type="DI"  Adr="0x193E" msk="0x0001" />
		<Tag Name="ВО с АВР"         Descr="ВНЕШ.ОТКЛ.-2"    Type="DI"  Adr="0x193F" msk="0x0001" />
		<Tag Name="ВНЕШ.ОТКЛ(СИГН)"  Descr="ВНЕШ.СИГН.-3"    Type="DI"  Adr="0x1940" msk="0x0001" />
		<Tag Name="ВН.СИГН.\ОТКЛ."   Descr="ВН.СИГН.\ОТКЛ."  Type="DI"  Adr="0x1942" msk="0x0001" />
		<Tag Name="ОБРЫВ 1,2 ФАЗ"    Descr="ОБРЫВ 1,2 ФАЗ"   Type="DI"  Adr="0x1943" msk="0x0001" />
		<Tag Name="ОБРЫВ 3 ФАЗ"      Descr="ОБРЫВ 3 ФАЗ"     Type="DI"  Adr="0x1944" msk="0x0001" />
		<Tag Name="НЕИПР.ЦН"         Descr="НЕИПР.ЦН"        Type="DI"  Adr="0x1945" msk="0x0001" />
		<Tag Name="УРОВ"             Descr="УРОВ"            Type="DI"  Adr="0x1946" msk="0x0001" />
		<Tag Name="СБРОС АПВ"        Descr="СБРОС АПВ"       Type="DI"  Adr="0x1947" msk="0x0001" />
		<Tag Name="ГОТ.АПВ-1"        Descr="ГОТ.АПВ-1"       Type="DI"  Adr="0x1948" msk="0x0001" />
		<Tag Name="СР.АПВ-1"         Descr="СР.АПВ-1"        Type="DI"  Adr="0x1949" msk="0x0001" />
		<Tag Name="ГОТ.АПВ-2"        Descr="ГОТ.АПВ-2"       Type="DI"  Adr="0x194A" msk="0x0001" />
		<Tag Name="СР.АПВ-2"         Descr="СР.АПВ-2"        Type="DI"  Adr="0x194B" msk="0x0001" />
		<Tag Name="СР.АПВ"           Descr="СР.АПВ"          Type="DI"  Adr="0x194C" msk="0x0001" />
		<Tag Name="СР.АЧР-1"         Descr="СР.АЧР-1"        Type="DI"  Adr="0x194D" msk="0x0001" />
		<Tag Name="СР.АЧР-2"         Descr="СР.АЧР-2"        Type="DI"  Adr="0x194E" msk="0x0001" />
		<Tag Name="ОТКЛ.ОТ АЧР"      Descr="ОТКЛ.ОТ АЧР"     Type="DI"  Adr="0x194F" msk="0x0001" />
		<Tag Name="СБРОС ЧАПВ"       Descr="СБРОС ЧАПВ"      Type="DI"  Adr="0x1950" msk="0x0001" />
		<Tag Name="ГОТ.ЧАПВ"         Descr="ГОТ.ЧАПВ"        Type="DI"  Adr="0x1951" msk="0x0001" />
		<Tag Name="ВКЛ.ОТ ЧАПВ"      Descr="ВКЛ.ОТ ЧАПВ"     Type="DI"  Adr="0x1952" msk="0x0001" />
		<Tag Name="ОТКЛ.КНОПКОЙ"     Descr="ОТКЛ.КНОПКОЙ"    Type="DI"  Adr="0x1953" msk="0x0001" />
		<Tag Name="ВКЛ.КНОПКОЙ"      Descr="ВКЛ.КНОПКОЙ"     Type="DI"  Adr="0x1954" msk="0x0001" />
		<Tag Name="ОТКЛ.ОТ КУ"       Descr="ОТКЛ.ОТ КУ"      Type="DI"  Adr="0x1955" msk="0x0001" />
		<Tag Name="ВКЛ.ОТ КУ"        Descr="ВКЛ.ОТ КУ"       Type="DI"  Adr="0x1956" msk="0x0001" />
		<Tag Name="ОТКЛ.ОТ ТУ"       Descr="ОТКЛ.ОТ ТУ"      Type="DI"  Adr="0x1957" msk="0x0001" />
		<Tag Name="ВКЛ.ОТ ТУ"        Descr="ВКЛ.ОТ ТУ"       Type="DI"  Adr="0x1958" msk="0x0001" />
		<Tag Name="ОТКЛ.ОТ АСУ"      Descr="ОТКЛ.ОТ АСУ"     Type="DI"  Adr="0x1959" msk="0x0001" />
		<Tag Name="ВКЛ.ОТ АСУ"       Descr="ВКЛ.ОТ АСУ"      Type="DI"  Adr="0x195A" msk="0x0001" />
		<Tag Name="РКО"              Descr="РКО"             Type="DI"  Adr="0x195B" msk="0x0001" />
		<Tag Name="РКВ"              Descr="РКВ"             Type="DI"  Adr="0x195C" msk="0x0001" />
		<Tag Name="НЕИП.ЦО"          Descr="НЕИП.ЦО"         Type="DI"  Adr="0x195D" msk="0x0001" />
		<Tag Name="НЕИП.ЦВ"          Descr="НЕИП.ЦВ"         Type="DI"  Adr="0x195E" msk="0x0001" />
		<Tag Name="НЕИСП.ВЫКЛ."      Descr="НЕИСП.ВЫКЛ."     Type="DI"  Adr="0x195F" msk="0x0001" />
		<Tag Name="НЕИСП.КУ"         Descr="НЕИСП.КУ"        Type="DI"  Adr="0x1960" msk="0x0001" />
		<Tag Name="НЕИСП.ТУ"         Descr="НЕИСП.ТУ"        Type="DI"  Adr="0x1961" msk="0x0001" />
		<Tag Name="ПРИВОД НЕ ГОТОВ"  Descr="ПРИВОД НЕ ГОТОВ" Type="DI"  Adr="0x1962" msk="0x0001" />
		<Tag Name="АВТ.ШП ОТКЛ."     Descr="АВТ.ШП ОТКЛ."    Type="DI"  Adr="0x1963" msk="0x0001" />
		<Tag Name="НЕГ.ВЫКЛ."        Descr="НЕГ.ВЫКЛ."       Type="DI"  Adr="0x1964" msk="0x0001" />
		<Tag Name="НЕИСПР.ЦУ"        Descr="НЕИСПР.ЦУ"       Type="DI"  Adr="0x1965" msk="0x0001" />
		<Tag Name="РПО"              Descr="РПО"             Type="DI"  Adr="0x1966" msk="0x0001" />
		<Tag Name="РПВ"              Descr="РПВ"             Type="DI"  Adr="0x1967" msk="0x0001" />
		<Tag Name="РФ"               Descr="РФ"              Type="DI"  Adr="0x1968" msk="0x0001" />
		<Tag Name="ОТКЛ.ОТ РЗА"      Descr="ОТКЛ.ОТ РЗА"     Type="DI"  Adr="0x1969" msk="0x0001" />
		<Tag Name="ОТКЛЮЧИТЬ"        Descr="ОТКЛЮЧИТЬ"       Type="DI"  Adr="0x196A" msk="0x0001" />
		<Tag Name="ВКЛ.ЗАБЛ."        Descr="ВКЛ.ЗАБЛ."       Type="DI"  Adr="0x196B" msk="0x0001" />
		<Tag Name="ВКЛ.ОТ АПВ(ВД)"   Descr="ВКЛ.ОТ АПВ(ВД)"  Type="DI"  Adr="0x196C" msk="0x0001" />
		<Tag Name="ВКЛ.ОТ ЧАПВ(ВД)"  Descr="ВКЛ.ОТ ЧАПВ(ВД)" Type="DI"  Adr="0x196D" msk="0x0001" />
		<Tag Name="ВКЛЮЧ
		
		
		ЪЕМ СИГН."       Descr="СЪЕМ СИГН."      Type="DI"  Adr="0x1971" msk="0x0001" />
		<Tag Name="ВЫВОД ФУНКЦИЙ"    Descr="ВЫВОД ФУНКЦИЙ"   Type="DI"  Adr="0x1972" msk="0x0001" />
		<Tag Name="СР.ЗАЩИТ"         Descr="СР.ЗАЩИТ"        Type="DI"  Adr="0x1973" msk="0x0001" />
		<Tag Name="ПРЕДУП.СИГНАЛ"    Descr="ПРЕДУП.СИГНАЛ"   Type="DI"  Adr="0x1974" msk="0x0001" />
		<Tag Name="ВЫЗОВ"            Descr="ВЫЗОВ"           Type="DI"  Adr="0x1975" msk="0x0001" />
		<Tag Name="ИЗНОС ПРЕВЫШЕН"   Descr="ИЗНОС ПРЕВЫШЕН"  Type="DI"  Adr="0x1976" msk="0x0001" />
		<Tag Name="КЛЮЧ АПВ"         Descr="КЛЮЧ АПВ"        Type="DI"  Adr="0x1977" msk="0x0001" />
		<Tag Name="АПВ ВЫВЕДЕНО"     Descr="АПВ ВЫВЕДЕНО"    Type="DI"  Adr="0x1978" msk="0x0001" />
		<Tag Name="КЛЮЧ АЧР"         Descr="КЛЮЧ АЧР"        Type="DI"  Adr="0x1979" msk="0x0001" />
		<Tag Name="АЧР ВЫВЕДЕНО"     Descr="АЧР ВЫВЕДЕНО"    Type="DI"  Adr="0x197A" msk="0x0001" />
		<Tag Name="КЛЮЧ УРОВ"        Descr="КЛЮЧ УРОВ"       Type="DI"  Adr="0x197B" msk="0x0001" />
		<Tag Name="УРОВ ВЫВЕДЕНО"    Descr="УРОВ ВЫВЕДЕНО"   Type="DI"  Adr="0x197C" msk="0x0001" />
		<Tag Name="КЛЮЧ ВН.ОТКЛ."    Descr="КЛЮЧ ВН.ОТКЛ."   Type="DI"  Adr="0x197D" msk="0x0001" />
		<Tag Name="ВН.ОТКЛ.ВЫВЕДЕНО" Descr="В.ОТКЛ.ВЫВЕДЕНО" Type="DI"  Adr="0x197E" msk="0x0001" />
		<Tag Name="О ОТКЛЮЧИТЬ"      Descr="О ОТКЛЮЧИТЬ"     Type="DI"  Adr="0x197F" msk="0x0001" />
		<Tag Name="I ВКЛЮЧИТЬ"       Descr="I ВКЛЮЧИТЬ"      Type="DI"  Adr="0x1980" msk="0x0001" />
		<Tag Name="МЕСТ.УПРАВ."      Descr="МЕСТ.УПРАВ."     Type="DI"  Adr="0x1981" msk="0x0001" />
		<Tag Name="РАЗРЕШЕНИЕ АСУ"   Descr="РАЗРЕШЕНИЕ АСУ"  Type="DI"  Adr="0x1982" msk="0x0001" />
		<Tag Name="АСУ ВЫВЕДЕНО"     Descr="АСУ ВЫВЕДЕНО"    Type="DI"  Adr="0x1983" msk="0x0001" />
		<Tag Name="С СБРОС СИГН."    Descr="С СБРОС СИГН."   Type="DI"  Adr="0x1984" msk="0x0001" />
		<Tag Name="КОНТР.СВЕТОД."    Descr="КОНТР.СВЕТОД."   Type="DI"  Adr="0x1985" msk="0x0001" />
		<Tag Name="РУЧНОЙ ПУСК ОСЦ." Descr="РУЧН ПУСК ОСЦ."  Type="DI"  Adr="0x1986" msk="0x0001" />
		<Tag Name="ПУСК ОСЦ."        Descr="ПУСК ОСЦ."       Type="DI"  Adr="0x1987" msk="0x0001" />

	</Group>  
<!--
	<Group Name="Реле">
                <Tag Name="RL1"      Descr="Состояние реле 1"  Type="DI"  Adr="0x0700" msk="0x0001" />
                <Tag Name="RL2"      Descr="Состояние реле 2"  Type="DI"  Adr="0x0701" msk="0x0001" />
                <Tag Name="RL3"      Descr="Состояние реле 3"  Type="DI"  Adr="0x0702" msk="0x0001" />
                <Tag Name="RL4"      Descr="Состояние реле 4"  Type="DI"  Adr="0x0703" msk="0x0001" />
                <Tag Name="RL5"      Descr="Состояние реле 5"  Type="DI"  Adr="0x0704" msk="0x0001" />
                <Tag Name="RL6"      Descr="Состояние реле 6"  Type="DI"  Adr="0x0705" msk="0x0001" />
                <Tag Name="RL7"      Descr="Состояние реле 7"  Type="DI"  Adr="0x0706" msk="0x0001" />
                <Tag Name="RL8"      Descr="Состояние реле 8"  Type="DI"  Adr="0x0707" msk="0x0001" />
                <Tag Name="RL9"      Descr="Состояние реле 9"  Type="DI"  Adr="0x0708" msk="0x0001" />
                <Tag Name="RL10"     Descr="Состояние реле 10" Type="DI"  Adr="0x0709" msk="0x0001" />
                <Tag Name="RL11"     Descr="Состояние реле 11" Type="DI"  Adr="0x070A" msk="0x0001" />
                <Tag Name="RL12"     Descr="Состояние реле 12" Type="DI"  Adr="0x070B" msk="0x0001" />
                <Tag Name="RL13"     Descr="Состояние реле 13" Type="DI"  Adr="0x070C" msk="0x0001" />
                <Tag Name="RL14"     Descr="Состояние реле 14" Type="DI"  Adr="0x070D" msk="0x0001" />
                <Tag Name="RL15"     Descr="Состояние реле 15" Type="DI"  Adr="0x070E" msk="0x0001" />
                <Tag Name="RL16"     Descr="Состояние реле 16" Type="DI"  Adr="0x070F" msk="0x0001" />
                <Tag Name="RL17"     Descr="Состояние реле 17" Type="DI"  Adr="0x0710" msk="0x0001" />
                <Tag Name="RL18"     Descr="Состояние реле 18" Type="DI"  Adr="0x0711" msk="0x0001" />
    </Group>  
	-->
<Group Name="ТУ">
<!--
1. В сигнал Инициализация записываем False (возможно это пароль, который по умолчанию равен 0)
2. Записываем True в тег ВКЛ или ОТКЛ
3. Записываем True в тег Команда выполнение
-->
                <Tag Name="ВКЛ"                Descr="Команда включить"   Type="DO"  Adr="0x0D00" Func="5" DataType="1" />
                <Tag Name="ОТКЛ"               Descr="Команда отключить"  Type="DO"  Adr="0x0D01" Func="5" DataType="1" />
                <Tag Name="Команда выполнение" Descr="Выполнение команды" Type="DO"  Adr="0x0D02" Func="5" DataType="1" />
                <Tag Name="Сброс"              Descr="Сброс сигнализации" Type="DO"  Adr="0x0D03" Func="5" DataType="1" />
		<Tag Name="Упр АПВ"       Descr="Упр. АПВ"                   Type="DO"  Adr="0x0300" Func="6" DataType="0" />
		<Tag Name="Упр АРЧ"       Descr="Упр. АРЧ"                   Type="DO"  Adr="0x0301" Func="6" DataType="0" />
		<Tag Name="УПР УРОВ"      Descr="УПР. УРОВ"                  Type="DO"  Adr="0x0302" Func="6" DataType="0" />
		<Tag Name="УПР ВО"        Descr="УПР ВО"                     Type="DO"  Adr="0x0303" Func="6" DataType="0" />
		<Tag Name="Инициализация" Descr="Инициализация (записать 0)" Type="AO"  Adr="0x030f" Func="6" DataType="0" />	


</Group>
	<!--
	<Group Name="Дата и время">
		<Tag Name="Год"      Type="AIF" Adr="0x0000" msk="0xFFFF" Descr="Год"/>
                <Tag Name="Месяц"    Type="AIF" Adr="0x0028" msk="0xFF00" Descr="Месяц"/>
                <Tag Name="День"     Type="AII" Adr="0x0029" msk="0x00FF" Descr="день"/>
                <Tag Name="Час"      Type="AII" Adr="0x0029" msk="0xFF00" Descr="Час"/>
                <Tag Name="Мин"      Type="AII" Adr="0x002A" msk="0x00FF" Descr="Минута"/>
                <Tag Name="Сек"      Type="AII" Adr="0x002A" msk="0xFF00" Descr="Секунда"/>
  	</Group>
	
  	<Group Name="Инфо о реле и сетевая идентификация">
                <Tag Name="M"   Type="AII" Adr="0x0000" Descr="Mодификация"/>
                <Tag Name="V"   Type="AII" Adr="0x000F" Descr="Версия прошивки"/>
                <Tag Name="SN"  Type="AII" Adr="0x000D" Descr="Серийный номер реле"/>
                <Tag Name="SN"  Type="AII" Adr="0x000E" Descr="Серийный номер реле"/>
                <Tag Name="Adr" Type="AII" Adr="0x0010" Descr="Сетевой адрес"/>
                <Tag Name="Baud" Type="AII" Adr="0x0011" Descr="Код скорости обмена"/>
	</Group>
	-->


    </TagTree>
  </Module>
  
</KLogicModules>
