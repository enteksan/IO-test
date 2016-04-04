<?xml version="1.0" encoding="windows-1251"?>
<!-- Устройства c протоколом modbus -->

<KLogicModules>
  <Module Id="7080">
    <Name>БЭМП РУ-Л</Name>
    <sModGroupName>Цифровые РЗА</sModGroupName>
    <CfgName>БЭМПРУЛ</CfgName>
    <Descr>МП РЗиА БЭМП РУ-Л</Descr>
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
        <Tag Name="3I0"      Descr="Ток нулевой последовательности 3I0"                   Type="AIF" Adr="0x0808" Measure="A"  K="0,001" mn="3"/>
		<Tag Name="фаза I1"  Descr="Фазовый угол тока I1"                                 Type="AIF" Adr="0x0809" Measure="A"  K="1" mn="2"/>
		<Tag Name="фаза I2"  Descr="Фазовый угол тока I2"                                 Type="AIF" Adr="0x080A" Measure="A"  K="1" mn="2"/>
		<Tag Name="фаза 3I0" Descr="Фазовый угол тока I0"                                 Type="AIF" Adr="0x080B" Measure="A"  K="1" mn="2"/>
		<Tag Name="Iab"      Descr="Iab"                                                  Type="AIF" Adr="0x080C" Measure="A"  K="0,001" mn="3"/>
		<Tag Name="Ibc"      Descr="Ibc"                                                  Type="AIF" Adr="0x080D" Measure="A"  K="0,001" mn="3"/>
        <Tag Name="Ica"      Descr="Ica"                                                  Type="AIF" Adr="0x080E" Measure="A"  K="0,001" mn="3"/>
		<Tag Name="фаза Iab" Descr="фазовый угол тока Iab"                                Type="AIF" Adr="0x080F" Measure="A"  K="1" mn="2"/>
		<Tag Name="фаза Ibc" Descr="фазовый угол тока Ibc"                                Type="AIF" Adr="0x0810" Measure="A"  K="1" mn="2"/>
        <Tag Name="фаза Ica" Descr="фазовый угол тока Ica"                                Type="AIF" Adr="0x0811" Measure="A"  K="1" mn="2"/>                                
		<Tag Name="3IO ВГ"   Descr="3IO высшей гармоники"                                 Type="AIF" Adr="0x0812" Measure="A"  K="0,001" mn="2"/>
		<Tag Name="3IO-3Г"   Descr="3IO-3 гармоники"                                      Type="AIF" Adr="0x0813" Measure="A"  K="0,001" mn="2"/>
        <Tag Name="3OI-5Г"   Descr="3OI-5 гармоники"                                      Type="AIF" Adr="0x0814" Measure="A"  K="0,001" mn="2"/>                                
		<Tag Name="3IO-7Г"   Descr="3IO-7 гармоники"                                      Type="AIF" Adr="0x0815" Measure="A"  K="0,001" mn="2"/>
        <Tag Name="3OI-9Г"   Descr="3OI-9 гармоники"                                      Type="AIF" Adr="0x0816" Measure="A"  K="0,001" mn="2"/>                                
		<Tag Name="Ua"       Descr="Фазное напряжение Ua"                                 Type="AIF" Adr="0x0817" Measure="A"  K="0,0001" mn="0,000001"/>
		<Tag Name="Ub"       Descr="Фазное напряжение Ua"                                 Type="AIF" Adr="0x0818" Measure="A"  K="0,0001" mn="0,000001"/>
        <Tag Name="Uc"       Descr="Фазное напряжение Ua"                                 Type="AIF" Adr="0x0819" Measure="A"  K="0,0001" mn="0,000001"/>
		<Tag Name="фаза Ua"  Descr="фазовый угол напряжения Ua"                           Type="AIF" Adr="0x081A" Measure="A"  K="1" mn="1"/>
		<Tag Name="фаза Ub"  Descr="фазовый угол напряжения Ub"                           Type="AIF" Adr="0x081B" Measure="A"  K="1" mn="1"/>
        <Tag Name="фаза Uc"  Descr="фазовый угол напряжения Uc"                           Type="AIF" Adr="0x081C" Measure="A"  K="1" mn="1"/>
		<Tag Name="U1"       Descr="Напряжение прямой последовательности U1"              Type="AIF" Adr="0x081D" Measure="A"  K="0,0001" mn="1"/>
		<Tag Name="U2"       Descr="Напряжение обратной последовательности U2"            Type="AIF" Adr="0x081E" Measure="A"  K="0,0001" mn="1"/>
        <Tag Name="U0"       Descr="Напряжение нулевой последовательности U0"             Type="AIF" Adr="0x081F" Measure="A"  K="0,0001" mn="1"/>
        <Tag Name="3U0тн"    Descr="действ. знач. напр. нулевой последовательности 3U0тн" Type="AIF" Adr="0x0820" Measure="A" K="0,0001" mn="1"/>
		<Tag Name="фаза U1"  Descr="фазовый угол напряжения U1"                           Type="AIF" Adr="0x0821" Measure="A"  K="1" mn="1"/>
		<Tag Name="фаза U2"  Descr="фазовый угол напряжения U2"                           Type="AIF" Adr="0x0822" Measure="A"  K="1" mn="1"/>
        <Tag Name="фаза U0"  Descr="фазовый угол напряжения U0"                           Type="AIF" Adr="0x0823" Measure="A"  K="1" mn="1"/>
		<Tag Name="Uab"      Descr="Линейное напряжение Uab"                              Type="AIF" Adr="0x0824" Measure="A"  K="0,0001" mn="1"/>
		<Tag Name="Ubc"      Descr="Линейное напряжение Ubc"                              Type="AIF" Adr="0x0825" Measure="A"  K="0,0001" mn="1"/>
        <Tag Name="Uca"      Descr="Линейное напряжение Uca"                              Type="AIF" Adr="0x0826" Measure="A"  K="0,0001" mn="1"/>
		<Tag Name="фаза Uab" Descr="фазовый угол напряжения Uab"                          Type="AIF" Adr="0x0827" Measure="A" K="1" mn="1"/>
		<Tag Name="фаза Ubc" Descr="фазовый угол напряжения Ubc"                          Type="AIF" Adr="0x0828" Measure="A" K="1" mn="1"/>
        <Tag Name="фаза Uca" Descr="фазовый угол напряжения Ubc"                          Type="AIF" Adr="0x0829" Measure="A" K="1" mn="1"/>
		<Tag Name="Zab"      Descr="Полное сопротивление Zab"                             Type="AIF" Adr="0x082A" DataType="21" Measure="A"  K="0,01" mn="1"/>
		<Tag Name="Zbc"      Descr="Полное сопротивление Zbc"                             Type="AIF" Adr="0x082C" DataType="21" Measure="A"  K="0,01" mn="1"/>
        <Tag Name="Zca"      Descr="Полное сопротивление Zca"                             Type="AIF" Adr="0x082E" DataType="21" Measure="A"  K="0,01" mn="1"/>
		<Tag Name="фаза Zab" Descr="Фазовый угол сопротивления Zab"                       Type="AIF" Adr="0x0830" Measure="A"  K="1" mn="1"/>
		<Tag Name="фаза Zbc" Descr="Фазовый угол сопротивления Zbc"                       Type="AIF" Adr="0x0831" Measure="A"  K="1" mn="1"/>
        <Tag Name="фаза Zca" Descr="Фазовый угол сопротивления Zca"                       Type="AIF" Adr="0x0832" Measure="A"  K="1" mn="1"/>
		<Tag Name="Rab"      Descr="Активное сопротивление Rab"                           Type="AIF" Adr="0x0832" DataType="21" Measure="A" K="0,01" mn="1"/>
		<Tag Name="Xab"      Descr="Реактивное сопротивление Xab"                         Type="AIF" Adr="0x0835" DataType="21" Measure="A" K="0,01" mn="1"/>
        <Tag Name="Rbc"      Descr="Активное сопротивление Rbc"                           Type="AIF" Adr="0x0837" DataType="21" Measure="A" K="0,01" mn="1"/>
		<Tag Name="Xbc"      Descr="Реактивное сопротивление Xbc"                         Type="AIF" Adr="0x0839" DataType="21" Measure="A" K="0,01" mn="1"/>
		<Tag Name="Rca"      Descr="Активное сопротивление Rca"                           Type="AIF" Adr="0x083B" DataType="21" Measure="A" K="0,01" mn="1"/>
        <Tag Name="Xca"      Descr="Реактивное сопротивление Xca"                         Type="AIF" Adr="0x083D" DataType="21" Measure="A" K="0,01" mn="1"/>
		<Tag Name="P"        Descr="Активная мощность P"                                  Type="AIF" Adr="0x083F" DataType="21" Measure="A"  K="0,01" mn="1"/>
		<Tag Name="Q"        Descr="Реактивная мощность Q"                                Type="AIF" Adr="0x0841" DataType="21" Measure="A"  K="0,01" mn="1"/>
        <Tag Name="S"        Descr="Полная мощность S"                                    Type="AIF" Adr="0x0843" DataType="21" Measure="A"  K="0,01" mn="1"/>
        <Tag Name="F"        Descr="Частота основной гармоники F"                         Type="AIF" Adr="0x0845" Measure="A"  K="0,001" mn="1"/>

        <Tag Name="Wh полученная акт. энер."     Descr="Wh полученная активная энергия"     Type="AIF" Adr="0x0846" DataType="36" Measure="A"  K="1" mn="1"/>                      	
        <Tag Name="Wh отданная акт. энер."       Descr="Wh отданная активная энергия"       Type="AIF" Adr="0x084A" DataType="36" Measure="A"  K="1" mn="1"/>                      	
        <Tag Name="VArh полученная реакт. энер." Descr="VArh полученная реактивная энергия" Type="AIF" Adr="0x084E" DataType="36" Measure="A"  K="1" mn="1"/>                      	
        <Tag Name="VArh отданная реакт. энер."   Descr="VArh отданная реактивная энергия"   Type="AIF" Adr="0x0852" DataType="36" Measure="A"  K="1" mn="1"/>                      	
        <Tag Name="VAh отданная полн. энер."     Descr="VAh отданная полная энергия"        Type="AIF" Adr="0x0856" DataType="36" Measure="A"  K="1" mn="1"/>                      	
        <Tag Name="VAh полученная полн. энер."   Descr="VAh полученная полная энергия"      Type="AIF" Adr="0x085A" DataType="36" Measure="A"  K="1" mn="1"/>                      	



</Group>
	
	<Group Name="Счетчики">
		<Tag Name="Сч.АПВ1"       Descr="Счетчик АПВ1"      Type="AIF" Adr="0x3400" Measure="A"  K="0,01" mn="1"/>
		<Tag Name="Сч.АПВ1 усп."  Descr="Счетчик АПВ1 усп." Type="AIF" Adr="0x3401" Measure="A"  K="0,01" mn="1"/>
		<Tag Name="Сч.АПВ2"       Descr="Счетчик АПВ2"      Type="AIF" Adr="0x3402" Measure="A"  K="0,01" mn="1"/>
		<Tag Name="Сч.АПВ2 усп."  Descr="Счетчик АПВ2 усп." Type="AIF" Adr="0x3403" Measure="A"  K="0,01" mn="1"/>           
	</Group>

	<Group Name="ТС">
		<Tag Name="РПО"              Descr="РПО"             Type="DI"  Adr="0x1900" msk="0x0001" />
        <Tag Name="РПВ"              Descr="РПВ"             Type="DI"  Adr="0x1901" msk="0x0001" />
		<Tag Name="АЧР"              Descr="АЧР"             Type="DI"  Adr="0x1902" msk="0x0001" />
		<Tag Name="ВН_ОТКЛ-1"        Descr="Внешнее Откл 1"  Type="DI"  Adr="0x1903" msk="0x0001" />
        <Tag Name="ВН_СИГН-1"        Descr="Внешний сигн 1"  Type="DI"  Adr="0x1904" msk="0x0001" />              
        <Tag Name="ЗДЗ ВВ\ВЫВ"       Descr="ЗДЗ Ввод\Вывод"  Type="DI"  Adr="0x1905" msk="0x0001" />
        <Tag Name="ЗДЗ ВЫКЛ"         Descr="ЗДЗ выключена"   Type="DI"  Adr="0x1906" msk="0x0001" />
		<Tag Name="ПОЛОЖ_ТЕЛЕЖ"      Descr="Полож тележки"   Type="DI"  Adr="0x1907" msk="0x0001" />
        <Tag Name="ОТКЛЮЧИТЬ"        Descr="ОТКЛЮЧИТЬ"       Type="DI"  Adr="0x1908" msk="0x0001" />
        <Tag Name="ВКЛЮЧИТЬ"         Descr="ВКЛЮЧИТЬ"        Type="DI"  Adr="0x1909" msk="0x0001" />              
        <Tag Name="АВТОМАТ ШП"       Descr="АВТОМАТ ШП"      Type="DI"  Adr="0x191A" msk="0x0001" />
        <Tag Name="ПРИВ.НЕГОТОВ"     Descr="Привод не готов" Type="DI"  Adr="0x190B" msk="0x0001" />
		<Tag Name="БЛОК3ОЗЗ"         Descr="Блокировка 3ОЗЗ" Type="DI"  Adr="0x190C" msk="0x0001" />
		<Tag Name="ЧАПВ"             Descr="ЧАПВ"            Type="DI"  Adr="0x190D" msk="0x0001" />
		<Tag Name="ВН.ОТКЛ2"         Descr="Внешнее откл 2"  Type="DI"  Adr="0x190E" msk="0x0001" />
		<Tag Name="ВН.СИГН-2"        Descr="Внешний сигн 2"  Type="DI"  Adr="0x190F" msk="0x0001" />
		<Tag Name="ВЫВОД АПВ"        Descr="ВЫВОД АПВ"       Type="DI"  Adr="0x1910" msk="0x0001" />
		<Tag Name="ВЫВОД ЧАПВ"       Descr="ВЫВОД ЧАПВ"      Type="DI"  Adr="0x1911" msk="0x0001" />
		<Tag Name="ПОЛОЖ.КА1[ШР]"    Descr="ПОЛОЖ.КА1[ШР]"   Type="DI"  Adr="0x1912" msk="0x0001" />
		<Tag Name="ПОЛОЖ.КА2[ШЗ]"    Descr="ПОЛОЖ.КА2[ШЗ]"   Type="DI"  Adr="0x1913" msk="0x0001" />
		<Tag Name="ПОЛОЖ.КА3[ЛР]"    Descr="ПОЛОЖ.КА3[ЛР]"   Type="DI"  Adr="0x1914" msk="0x0001" />
		<Tag Name="ПОЛОЖ.КА4[ЛЗ]"    Descr="ПОЛОЖ.КА4[ЛЗ]"   Type="DI"  Adr="0x1915" msk="0x0001" />
		<Tag Name="ОТКЛ.ПО ТУ"       Descr="ОТКЛ.ПО ТУ"      Type="DI"  Adr="0x1916" msk="0x0001" />
		<Tag Name="ВКЛ. ПО ТУ"       Descr="ВКЛ. ПО ТУ"      Type="DI"  Adr="0x1917" msk="0x0001" />
		<Tag Name="СБРОС СИГН."      Descr="СБРОС СИГН."     Type="DI"  Adr="0x1918" msk="0x0001" />
		<Tag Name="ДЕБЛОК"           Descr="ДЕБЛОК"          Type="DI"  Adr="0x1919" msk="0x0001" />
		<Tag Name="ВН.СИГН-3"        Descr="ВН.СИГН-3"       Type="DI"  Adr="0x191A" msk="0x0001" />
		<Tag Name="ВН.ОТКЛ-3"        Descr="ВН.ОТКЛ-3"       Type="DI"  Adr="0x191B" msk="0x0001" />
		<Tag Name="ПОЛОЖ.КА-5"       Descr="ПОЛОЖ.КА-5"      Type="DI"  Adr="0x191C" msk="0x0001" />
		<Tag Name="ПОЛОЖ.КА-6"       Descr="ПОЛОЖ.КА-6"      Type="DI"  Adr="0x191D" msk="0x0001" />
		<Tag Name="ПУСК ОСЦИЛ."      Descr="ПУСК ОСЦИЛ."     Type="DI"  Adr="0x191E" msk="0x0001" />
		<Tag Name="БЛОК.МТЗ-4"       Descr="БЛОК.МТЗ-4"      Type="DI"  Adr="0x191F" msk="0x0001" />
		<Tag Name="МТЗ-1"            Descr="П.МТЗ-1"         Type="DI"  Adr="0x1920" msk="0x0001" />
		<Tag Name="СР.МТЗ-1"         Descr="СР.МТЗ-1"        Type="DI"  Adr="0x1921" msk="0x0001" />
		<Tag Name="П.МТЗ-2"          Descr="П.МТЗ-2"         Type="DI"  Adr="0x1922" msk="0x0001" />
		<Tag Name="СР.МТЗ-2"         Descr="СР.МТЗ-2"        Type="DI"  Adr="0x1923" msk="0x0001" />
		<Tag Name="П.МТЗ-3"          Descr="П.МТЗ-3"         Type="DI"  Adr="0x1924" msk="0x0001" />
		<Tag Name="СР.МТЗ-3"         Descr="СР.МТЗ-3"        Type="DI"  Adr="0x1925" msk="0x0001" />
		<Tag Name="СР.МТЗ-4 СИГН."   Descr="СР.МТЗ-4 СИГН."  Type="DI"  Adr="0x1926" msk="0x0001" />
		<Tag Name="СР.МТЗ-4 ОТКЛ."   Descr="СР.МТЗ-4 ОТКЛ."  Type="DI"  Adr="0x1927" msk="0x0001" />
		<Tag Name="ПУСК МТЗ"         Descr="ПУСК МТЗ"        Type="DI"  Adr="0x1928" msk="0x0001" />
		<Tag Name="УСК МТЗ"          Descr="УСК МТЗ"         Type="DI"  Adr="0x1929" msk="0x0001" />
		<Tag Name="ПУСК ПО U"        Descr="ПУСК ПО U"       Type="DI"  Adr="0x192A" msk="0x0001" />
		<Tag Name="П.3ОЗЗ-1"         Descr="П.3ОЗЗ-1"        Type="DI"  Adr="0x192B" msk="0x0001" />
		<Tag Name="СР.3ОЗЗ-1"        Descr="СР.3ОЗЗ-1"       Type="DI"  Adr="0x192C" msk="0x0001" />
		<Tag Name="П.3ОЗЗ-2"         Descr="П.3ОЗЗ-2"        Type="DI"  Adr="0x192D" msk="0x0001" />
		<Tag Name="СР.3ОЗЗ-2"        Descr="СР.3ОЗЗ-2"       Type="DI"  Adr="0x192E" msk="0x0001" />
		<Tag Name="П.3ОЗЗ"           Descr="П.3ОЗЗ"          Type="DI"  Adr="0x192F" msk="0x0001" />
		<Tag Name="СР.3ОЗЗ"          Descr="СР.3ОЗЗ"         Type="DI"  Adr="0x1930" msk="0x0001" />
		<Tag Name="П.3ОФ"            Descr="П.3ОФ"           Type="DI"  Adr="0x1931" msk="0x0001" />
		<Tag Name="СР.3ОФ"           Descr="СР.3ОФ"          Type="DI"  Adr="0x1932" msk="0x0001" />
		<Tag Name="ЗДЗ ВЫВОД"        Descr="ЗДЗ ВЫВОД"       Type="DI"  Adr="0x1933" msk="0x0001" />
		<Tag Name="ЗДЗ ВЫКЛ"         Descr="ЗДЗ ВЫКЛ"        Type="DI"  Adr="0x1934" msk="0x0001" />
		<Tag Name="ЗДЗ В ШКАФУ"      Descr="ЗДЗ В ШКАФУ"     Type="DI"  Adr="0x1935" msk="0x0001" />
		<Tag Name="СР.ЗДЗ"           Descr="СР.ЗДЗ"          Type="DI"  Adr="0x1936" msk="0x0001" />
		<Tag Name="НЕИСПР.ЗДЗ"       Descr="НЕИСПР.ЗДЗ"      Type="DI"  Adr="0x1937" msk="0x0001" />
		<Tag Name="ПОВР.Ф.А"         Descr="ПОВР.Ф.А"        Type="DI"  Adr="0x1938" msk="0x0001" />
		<Tag Name="ПОВР.Ф.В"         Descr="ПОВР.Ф.В"        Type="DI"  Adr="0x1939" msk="0x0001" />
		<Tag Name="ПОВР.Ф.С"         Descr="ПОВР.Ф.С"        Type="DI"  Adr="0x193A" msk="0x0001" />
		<Tag Name="ПОВР.Ф.N"         Descr="ПОВР.Ф.N"        Type="DI"  Adr="0x193B" msk="0x0001" />
		<Tag Name="ВНЕШ.СИГН.-1"     Descr="ВНЕШ.СИГН.-1"    Type="DI"  Adr="0x193C" msk="0x0001" />
		<Tag Name="ВНЕШ.ОТКЛ.-1"     Descr="ВНЕШ.ОТКЛ.-1"    Type="DI"  Adr="0x193D" msk="0x0001" />
		<Tag Name="ВНЕШ.СИГН.-2"     Descr="ВНЕШ.СИГН.-2"    Type="DI"  Adr="0x193E" msk="0x0001" />
		<Tag Name="ВНЕШ.ОТКЛ.-2"     Descr="ВНЕШ.ОТКЛ.-2"    Type="DI"  Adr="0x193F" msk="0x0001" />
		<Tag Name="ВНЕШ.СИГН.-3"     Descr="ВНЕШ.СИГН.-3"    Type="DI"  Adr="0x1940" msk="0x0001" />
		<Tag Name="ВНЕШ.ОТКЛ.-3"     Descr="ВНЕШ.ОТКЛ.-3"    Type="DI"  Adr="0x1941" msk="0x0001" />
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
		<Tag Name="ВКЛЮЧИТЬ"         Descr="ВКЛЮЧИТЬ"        Type="DI"  Adr="0x196E" msk="0x0001" />
		<Tag Name="АВАР.СИГН."       Descr="АВАР.СИГН."      Type="DI"  Adr="0x196F" msk="0x0001" />
		<Tag Name="САМОПРОИЗ.ОТКЛ."  Descr="САМОПРОИЗ.ОТКЛ." Type="DI"  Adr="0x1970" msk="0x0001" />
		<Tag Name="СЪЕМ СИГН."       Descr="СЪЕМ СИГН."      Type="DI"  Adr="0x1971" msk="0x0001" />
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

    </TagTree>
  </Module>
  
</KLogicModules>
