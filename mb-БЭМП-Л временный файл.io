<?xml version="1.0" encoding="windows-1251"?>
<!-- ���������� c ���������� modbus -->

<KLogicModules>
  <Module Id="7080">
    <Name>���� ��-�</Name>
    <sModGroupName>�������� ���</sModGroupName>
    <CfgName>�������</CfgName>
    <Descr>�� ���� ���� ��-�</Descr>
    <Protocol>Modbus</Protocol>
    <Properties>
      <Prop Id="1" Name="����� ������" Type="BYTE"  Init="1"/>
      <Prop Id="2" Name="�����" Descr="����� �������� 0-RTU, 1-ASCII (�� ����������)" Type="BYTE" Init="0" Access="H"/>
      <Prop Id="3" Name="�����" Descr="��������� ����� � 1" Type="BYTE" Init="0" Access="H"/>
      <Prop Id="7" Name="KU" Descr="��������� KU" Type="WORD" Init="1"/>
      <Prop Id="8" Name="KI" Descr="��������� KI" Type="WORD" Init="1"/>
    </Properties>
    <TagProperties>
      <Prop IdStr="Adr"      Name="����� ������" Type="WORD" Access="R" Format="0x%x"/>
      <Prop IdStr="Func"     Name="��� �������"  Type="BYTE" Access="R" Init="3" Format="0x%x"/>
      <Prop IdStr="DataType" Name="��� ������"   Type="BYTE"  Access="R" Init="11"/>
      <Prop IdStr="K"        Name="�����������"  Type="FLOAT" Access="R" Init="1"/>
      <Prop IdStr="msk"      Name="�����"        Type="WORD"  Access="R" Init="0xFFFF" Format="0x%x"/>
      <Prop IdStr="mn"	     Name="��� ���������(0-���, 1-KU, 2-KI, 3-KU*KI)"	Access="R"	Type="BYTE"  Init="0"/>	  
    </TagProperties>
    <TagTree>
	<Group Name="���������">
		<Tag Name="�����"      Type="DI"  Adr="0x0001" Func="0" Descr="������� ����� � �����������"/>
		<Tag Name="�����"      Type="DTI" Adr="0x0002" Func="0" Descr="����� ������ ����������"/>
		<Tag Name="����������" Type="DO"  Adr="0x0003" Func="0" Descr="���������� ������ ���������� (True - �� ����������)"/>
	</Group>
	<Group Name="��">
		<Tag Name="Ia"       Descr="��� ���� �"                                           Type="AIF" Adr="0x0800" Measure="A"  K="0,001" mn="3"/>
		<Tag Name="Ib"       Descr="��� ���� �"                                           Type="AIF" Adr="0x0801"  DataType="11" Measure="A" K="0,001" mn="3"/>
        <Tag Name="Ic"       Descr="��� ���� �"                                           Type="AIF" Adr="0x0802" Measure="A"  K="0,001" mn="3"/>
		<Tag Name="���� Ia"  Descr="������� ���� ���� Ia"                                 Type="AIF" Adr="0x0803" Measure="A"  K="1" mn="2"/>
		<Tag Name="���� Ib"  Descr="������� ���� ���� Ib"                                 Type="AIF" Adr="0x0804" Measure="A"  K="1" mn="2"/>
        <Tag Name="���� Ic"  Descr="������� ���� ���� Ic"                                 Type="AIF" Adr="0x0805" Measure="A"  K="1" mn="2"/>
		<Tag Name="I1"       Descr="��� ������ ������������������ I1"                     Type="AIF" Adr="0x0806" Measure="A"  K="0,001" mn="3"/>
		<Tag Name="I2"       Descr="��� �������� ������������������ I2"                   Type="AIF" Adr="0x0807" Measure="A"  K="0,001" mn="3"/>
        <Tag Name="3I0"      Descr="��� ������� ������������������ 3I0"                   Type="AIF" Adr="0x0808" Measure="A"  K="0,001" mn="3"/>
		<Tag Name="���� I1"  Descr="������� ���� ���� I1"                                 Type="AIF" Adr="0x0809" Measure="A"  K="1" mn="2"/>
		<Tag Name="���� I2"  Descr="������� ���� ���� I2"                                 Type="AIF" Adr="0x080A" Measure="A"  K="1" mn="2"/>
		<Tag Name="���� 3I0" Descr="������� ���� ���� I0"                                 Type="AIF" Adr="0x080B" Measure="A"  K="1" mn="2"/>
		<Tag Name="Iab"      Descr="Iab"                                                  Type="AIF" Adr="0x080C" Measure="A"  K="0,001" mn="3"/>
		<Tag Name="Ibc"      Descr="Ibc"                                                  Type="AIF" Adr="0x080D" Measure="A"  K="0,001" mn="3"/>
        <Tag Name="Ica"      Descr="Ica"                                                  Type="AIF" Adr="0x080E" Measure="A"  K="0,001" mn="3"/>
		<Tag Name="���� Iab" Descr="������� ���� ���� Iab"                                Type="AIF" Adr="0x080F" Measure="A"  K="1" mn="2"/>
		<Tag Name="���� Ibc" Descr="������� ���� ���� Ibc"                                Type="AIF" Adr="0x0810" Measure="A"  K="1" mn="2"/>
        <Tag Name="���� Ica" Descr="������� ���� ���� Ica"                                Type="AIF" Adr="0x0811" Measure="A"  K="1" mn="2"/>                                
		<Tag Name="3IO ��"   Descr="3IO ������ ���������"                                 Type="AIF" Adr="0x0812" Measure="A"  K="0,001" mn="2"/>
		<Tag Name="3IO-3�"   Descr="3IO-3 ���������"                                      Type="AIF" Adr="0x0813" Measure="A"  K="0,001" mn="2"/>
        <Tag Name="3OI-5�"   Descr="3OI-5 ���������"                                      Type="AIF" Adr="0x0814" Measure="A"  K="0,001" mn="2"/>                                
		<Tag Name="3IO-7�"   Descr="3IO-7 ���������"                                      Type="AIF" Adr="0x0815" Measure="A"  K="0,001" mn="2"/>
        <Tag Name="3OI-9�"   Descr="3OI-9 ���������"                                      Type="AIF" Adr="0x0816" Measure="A"  K="0,001" mn="2"/>                                
		<Tag Name="Ua"       Descr="������ ���������� Ua"                                 Type="AIF" Adr="0x0817" Measure="A"  K="0,0001" mn="0,000001"/>
		<Tag Name="Ub"       Descr="������ ���������� Ua"                                 Type="AIF" Adr="0x0818" Measure="A"  K="0,0001" mn="0,000001"/>
        <Tag Name="Uc"       Descr="������ ���������� Ua"                                 Type="AIF" Adr="0x0819" Measure="A"  K="0,0001" mn="0,000001"/>
		<Tag Name="���� Ua"  Descr="������� ���� ���������� Ua"                           Type="AIF" Adr="0x081A" Measure="A"  K="1" mn="1"/>
		<Tag Name="���� Ub"  Descr="������� ���� ���������� Ub"                           Type="AIF" Adr="0x081B" Measure="A"  K="1" mn="1"/>
        <Tag Name="���� Uc"  Descr="������� ���� ���������� Uc"                           Type="AIF" Adr="0x081C" Measure="A"  K="1" mn="1"/>
		<Tag Name="U1"       Descr="���������� ������ ������������������ U1"              Type="AIF" Adr="0x081D" Measure="A"  K="0,0001" mn="1"/>
		<Tag Name="U2"       Descr="���������� �������� ������������������ U2"            Type="AIF" Adr="0x081E" Measure="A"  K="0,0001" mn="1"/>
        <Tag Name="U0"       Descr="���������� ������� ������������������ U0"             Type="AIF" Adr="0x081F" Measure="A"  K="0,0001" mn="1"/>
        <Tag Name="3U0��"    Descr="������. ����. ����. ������� ������������������ 3U0��" Type="AIF" Adr="0x0820" Measure="A" K="0,0001" mn="1"/>
		<Tag Name="���� U1"  Descr="������� ���� ���������� U1"                           Type="AIF" Adr="0x0821" Measure="A"  K="1" mn="1"/>
		<Tag Name="���� U2"  Descr="������� ���� ���������� U2"                           Type="AIF" Adr="0x0822" Measure="A"  K="1" mn="1"/>
        <Tag Name="���� U0"  Descr="������� ���� ���������� U0"                           Type="AIF" Adr="0x0823" Measure="A"  K="1" mn="1"/>
		<Tag Name="Uab"      Descr="�������� ���������� Uab"                              Type="AIF" Adr="0x0824" Measure="A"  K="0,0001" mn="1"/>
		<Tag Name="Ubc"      Descr="�������� ���������� Ubc"                              Type="AIF" Adr="0x0825" Measure="A"  K="0,0001" mn="1"/>
        <Tag Name="Uca"      Descr="�������� ���������� Uca"                              Type="AIF" Adr="0x0826" Measure="A"  K="0,0001" mn="1"/>
		<Tag Name="���� Uab" Descr="������� ���� ���������� Uab"                          Type="AIF" Adr="0x0827" Measure="A" K="1" mn="1"/>
		<Tag Name="���� Ubc" Descr="������� ���� ���������� Ubc"                          Type="AIF" Adr="0x0828" Measure="A" K="1" mn="1"/>
        <Tag Name="���� Uca" Descr="������� ���� ���������� Ubc"                          Type="AIF" Adr="0x0829" Measure="A" K="1" mn="1"/>
		<Tag Name="Zab"      Descr="������ ������������� Zab"                             Type="AIF" Adr="0x082A" DataType="21" Measure="A"  K="0,01" mn="1"/>
		<Tag Name="Zbc"      Descr="������ ������������� Zbc"                             Type="AIF" Adr="0x082C" DataType="21" Measure="A"  K="0,01" mn="1"/>
        <Tag Name="Zca"      Descr="������ ������������� Zca"                             Type="AIF" Adr="0x082E" DataType="21" Measure="A"  K="0,01" mn="1"/>
		<Tag Name="���� Zab" Descr="������� ���� ������������� Zab"                       Type="AIF" Adr="0x0830" Measure="A"  K="1" mn="1"/>
		<Tag Name="���� Zbc" Descr="������� ���� ������������� Zbc"                       Type="AIF" Adr="0x0831" Measure="A"  K="1" mn="1"/>
        <Tag Name="���� Zca" Descr="������� ���� ������������� Zca"                       Type="AIF" Adr="0x0832" Measure="A"  K="1" mn="1"/>
		<Tag Name="Rab"      Descr="�������� ������������� Rab"                           Type="AIF" Adr="0x0832" DataType="21" Measure="A" K="0,01" mn="1"/>
		<Tag Name="Xab"      Descr="���������� ������������� Xab"                         Type="AIF" Adr="0x0835" DataType="21" Measure="A" K="0,01" mn="1"/>
        <Tag Name="Rbc"      Descr="�������� ������������� Rbc"                           Type="AIF" Adr="0x0837" DataType="21" Measure="A" K="0,01" mn="1"/>
		<Tag Name="Xbc"      Descr="���������� ������������� Xbc"                         Type="AIF" Adr="0x0839" DataType="21" Measure="A" K="0,01" mn="1"/>
		<Tag Name="Rca"      Descr="�������� ������������� Rca"                           Type="AIF" Adr="0x083B" DataType="21" Measure="A" K="0,01" mn="1"/>
        <Tag Name="Xca"      Descr="���������� ������������� Xca"                         Type="AIF" Adr="0x083D" DataType="21" Measure="A" K="0,01" mn="1"/>
		<Tag Name="P"        Descr="�������� �������� P"                                  Type="AIF" Adr="0x083F" DataType="21" Measure="A"  K="0,01" mn="1"/>
		<Tag Name="Q"        Descr="���������� �������� Q"                                Type="AIF" Adr="0x0841" DataType="21" Measure="A"  K="0,01" mn="1"/>
        <Tag Name="S"        Descr="������ �������� S"                                    Type="AIF" Adr="0x0843" DataType="21" Measure="A"  K="0,01" mn="1"/>
        <Tag Name="F"        Descr="������� �������� ��������� F"                         Type="AIF" Adr="0x0845" Measure="A"  K="0,001" mn="1"/>

        <Tag Name="Wh ���������� ���. ����."     Descr="Wh ���������� �������� �������"     Type="AIF" Adr="0x0846" DataType="36" Measure="A"  K="1" mn="1"/>                      	
        <Tag Name="Wh �������� ���. ����."       Descr="Wh �������� �������� �������"       Type="AIF" Adr="0x084A" DataType="36" Measure="A"  K="1" mn="1"/>                      	
        <Tag Name="VArh ���������� �����. ����." Descr="VArh ���������� ���������� �������" Type="AIF" Adr="0x084E" DataType="36" Measure="A"  K="1" mn="1"/>                      	
        <Tag Name="VArh �������� �����. ����."   Descr="VArh �������� ���������� �������"   Type="AIF" Adr="0x0852" DataType="36" Measure="A"  K="1" mn="1"/>                      	
        <Tag Name="VAh �������� ����. ����."     Descr="VAh �������� ������ �������"        Type="AIF" Adr="0x0856" DataType="36" Measure="A"  K="1" mn="1"/>                      	
        <Tag Name="VAh ���������� ����. ����."   Descr="VAh ���������� ������ �������"      Type="AIF" Adr="0x085A" DataType="36" Measure="A"  K="1" mn="1"/>                      	



</Group>
	
	<Group Name="��������">
		<Tag Name="��.���1"       Descr="������� ���1"      Type="AIF" Adr="0x3400" Measure="A"  K="0,01" mn="1"/>
		<Tag Name="��.���1 ���."  Descr="������� ���1 ���." Type="AIF" Adr="0x3401" Measure="A"  K="0,01" mn="1"/>
		<Tag Name="��.���2"       Descr="������� ���2"      Type="AIF" Adr="0x3402" Measure="A"  K="0,01" mn="1"/>
		<Tag Name="��.���2 ���."  Descr="������� ���2 ���." Type="AIF" Adr="0x3403" Measure="A"  K="0,01" mn="1"/>           
	</Group>

	<Group Name="��">
		<Tag Name="���"              Descr="���"             Type="DI"  Adr="0x1900" msk="0x0001" />
        <Tag Name="���"              Descr="���"             Type="DI"  Adr="0x1901" msk="0x0001" />
		<Tag Name="���"              Descr="���"             Type="DI"  Adr="0x1902" msk="0x0001" />
		<Tag Name="��_����-1"        Descr="������� ���� 1"  Type="DI"  Adr="0x1903" msk="0x0001" />
        <Tag Name="��_����-1"        Descr="������� ���� 1"  Type="DI"  Adr="0x1904" msk="0x0001" />              
        <Tag Name="��� ��\���"       Descr="��� ����\�����"  Type="DI"  Adr="0x1905" msk="0x0001" />
        <Tag Name="��� ����"         Descr="��� ���������"   Type="DI"  Adr="0x1906" msk="0x0001" />
		<Tag Name="�����_�����"      Descr="����� �������"   Type="DI"  Adr="0x1907" msk="0x0001" />
        <Tag Name="���������"        Descr="���������"       Type="DI"  Adr="0x1908" msk="0x0001" />
        <Tag Name="��������"         Descr="��������"        Type="DI"  Adr="0x1909" msk="0x0001" />              
        <Tag Name="������� ��"       Descr="������� ��"      Type="DI"  Adr="0x191A" msk="0x0001" />
        <Tag Name="����.�������"     Descr="������ �� �����" Type="DI"  Adr="0x190B" msk="0x0001" />
		<Tag Name="����3���"         Descr="���������� 3���" Type="DI"  Adr="0x190C" msk="0x0001" />
		<Tag Name="����"             Descr="����"            Type="DI"  Adr="0x190D" msk="0x0001" />
		<Tag Name="��.����2"         Descr="������� ���� 2"  Type="DI"  Adr="0x190E" msk="0x0001" />
		<Tag Name="��.����-2"        Descr="������� ���� 2"  Type="DI"  Adr="0x190F" msk="0x0001" />
		<Tag Name="����� ���"        Descr="����� ���"       Type="DI"  Adr="0x1910" msk="0x0001" />
		<Tag Name="����� ����"       Descr="����� ����"      Type="DI"  Adr="0x1911" msk="0x0001" />
		<Tag Name="�����.��1[��]"    Descr="�����.��1[��]"   Type="DI"  Adr="0x1912" msk="0x0001" />
		<Tag Name="�����.��2[��]"    Descr="�����.��2[��]"   Type="DI"  Adr="0x1913" msk="0x0001" />
		<Tag Name="�����.��3[��]"    Descr="�����.��3[��]"   Type="DI"  Adr="0x1914" msk="0x0001" />
		<Tag Name="�����.��4[��]"    Descr="�����.��4[��]"   Type="DI"  Adr="0x1915" msk="0x0001" />
		<Tag Name="����.�� ��"       Descr="����.�� ��"      Type="DI"  Adr="0x1916" msk="0x0001" />
		<Tag Name="���. �� ��"       Descr="���. �� ��"      Type="DI"  Adr="0x1917" msk="0x0001" />
		<Tag Name="����� ����."      Descr="����� ����."     Type="DI"  Adr="0x1918" msk="0x0001" />
		<Tag Name="������"           Descr="������"          Type="DI"  Adr="0x1919" msk="0x0001" />
		<Tag Name="��.����-3"        Descr="��.����-3"       Type="DI"  Adr="0x191A" msk="0x0001" />
		<Tag Name="��.����-3"        Descr="��.����-3"       Type="DI"  Adr="0x191B" msk="0x0001" />
		<Tag Name="�����.��-5"       Descr="�����.��-5"      Type="DI"  Adr="0x191C" msk="0x0001" />
		<Tag Name="�����.��-6"       Descr="�����.��-6"      Type="DI"  Adr="0x191D" msk="0x0001" />
		<Tag Name="���� �����."      Descr="���� �����."     Type="DI"  Adr="0x191E" msk="0x0001" />
		<Tag Name="����.���-4"       Descr="����.���-4"      Type="DI"  Adr="0x191F" msk="0x0001" />
		<Tag Name="���-1"            Descr="�.���-1"         Type="DI"  Adr="0x1920" msk="0x0001" />
		<Tag Name="��.���-1"         Descr="��.���-1"        Type="DI"  Adr="0x1921" msk="0x0001" />
		<Tag Name="�.���-2"          Descr="�.���-2"         Type="DI"  Adr="0x1922" msk="0x0001" />
		<Tag Name="��.���-2"         Descr="��.���-2"        Type="DI"  Adr="0x1923" msk="0x0001" />
		<Tag Name="�.���-3"          Descr="�.���-3"         Type="DI"  Adr="0x1924" msk="0x0001" />
		<Tag Name="��.���-3"         Descr="��.���-3"        Type="DI"  Adr="0x1925" msk="0x0001" />
		<Tag Name="��.���-4 ����."   Descr="��.���-4 ����."  Type="DI"  Adr="0x1926" msk="0x0001" />
		<Tag Name="��.���-4 ����."   Descr="��.���-4 ����."  Type="DI"  Adr="0x1927" msk="0x0001" />
		<Tag Name="���� ���"         Descr="���� ���"        Type="DI"  Adr="0x1928" msk="0x0001" />
		<Tag Name="��� ���"          Descr="��� ���"         Type="DI"  Adr="0x1929" msk="0x0001" />
		<Tag Name="���� �� U"        Descr="���� �� U"       Type="DI"  Adr="0x192A" msk="0x0001" />
		<Tag Name="�.3���-1"         Descr="�.3���-1"        Type="DI"  Adr="0x192B" msk="0x0001" />
		<Tag Name="��.3���-1"        Descr="��.3���-1"       Type="DI"  Adr="0x192C" msk="0x0001" />
		<Tag Name="�.3���-2"         Descr="�.3���-2"        Type="DI"  Adr="0x192D" msk="0x0001" />
		<Tag Name="��.3���-2"        Descr="��.3���-2"       Type="DI"  Adr="0x192E" msk="0x0001" />
		<Tag Name="�.3���"           Descr="�.3���"          Type="DI"  Adr="0x192F" msk="0x0001" />
		<Tag Name="��.3���"          Descr="��.3���"         Type="DI"  Adr="0x1930" msk="0x0001" />
		<Tag Name="�.3��"            Descr="�.3��"           Type="DI"  Adr="0x1931" msk="0x0001" />
		<Tag Name="��.3��"           Descr="��.3��"          Type="DI"  Adr="0x1932" msk="0x0001" />
		<Tag Name="��� �����"        Descr="��� �����"       Type="DI"  Adr="0x1933" msk="0x0001" />
		<Tag Name="��� ����"         Descr="��� ����"        Type="DI"  Adr="0x1934" msk="0x0001" />
		<Tag Name="��� � �����"      Descr="��� � �����"     Type="DI"  Adr="0x1935" msk="0x0001" />
		<Tag Name="��.���"           Descr="��.���"          Type="DI"  Adr="0x1936" msk="0x0001" />
		<Tag Name="������.���"       Descr="������.���"      Type="DI"  Adr="0x1937" msk="0x0001" />
		<Tag Name="����.�.�"         Descr="����.�.�"        Type="DI"  Adr="0x1938" msk="0x0001" />
		<Tag Name="����.�.�"         Descr="����.�.�"        Type="DI"  Adr="0x1939" msk="0x0001" />
		<Tag Name="����.�.�"         Descr="����.�.�"        Type="DI"  Adr="0x193A" msk="0x0001" />
		<Tag Name="����.�.N"         Descr="����.�.N"        Type="DI"  Adr="0x193B" msk="0x0001" />
		<Tag Name="����.����.-1"     Descr="����.����.-1"    Type="DI"  Adr="0x193C" msk="0x0001" />
		<Tag Name="����.����.-1"     Descr="����.����.-1"    Type="DI"  Adr="0x193D" msk="0x0001" />
		<Tag Name="����.����.-2"     Descr="����.����.-2"    Type="DI"  Adr="0x193E" msk="0x0001" />
		<Tag Name="����.����.-2"     Descr="����.����.-2"    Type="DI"  Adr="0x193F" msk="0x0001" />
		<Tag Name="����.����.-3"     Descr="����.����.-3"    Type="DI"  Adr="0x1940" msk="0x0001" />
		<Tag Name="����.����.-3"     Descr="����.����.-3"    Type="DI"  Adr="0x1941" msk="0x0001" />
		<Tag Name="��.����.\����."   Descr="��.����.\����."  Type="DI"  Adr="0x1942" msk="0x0001" />
		<Tag Name="����� 1,2 ���"    Descr="����� 1,2 ���"   Type="DI"  Adr="0x1943" msk="0x0001" />
		<Tag Name="����� 3 ���"      Descr="����� 3 ���"     Type="DI"  Adr="0x1944" msk="0x0001" />
		<Tag Name="�����.��"         Descr="�����.��"        Type="DI"  Adr="0x1945" msk="0x0001" />
		<Tag Name="����"             Descr="����"            Type="DI"  Adr="0x1946" msk="0x0001" />
		<Tag Name="����� ���"        Descr="����� ���"       Type="DI"  Adr="0x1947" msk="0x0001" />
		<Tag Name="���.���-1"        Descr="���.���-1"       Type="DI"  Adr="0x1948" msk="0x0001" />
		<Tag Name="��.���-1"         Descr="��.���-1"        Type="DI"  Adr="0x1949" msk="0x0001" />
		<Tag Name="���.���-2"        Descr="���.���-2"       Type="DI"  Adr="0x194A" msk="0x0001" />
		<Tag Name="��.���-2"         Descr="��.���-2"        Type="DI"  Adr="0x194B" msk="0x0001" />
		<Tag Name="��.���"           Descr="��.���"          Type="DI"  Adr="0x194C" msk="0x0001" />
		<Tag Name="��.���-1"         Descr="��.���-1"        Type="DI"  Adr="0x194D" msk="0x0001" />
		<Tag Name="��.���-2"         Descr="��.���-2"        Type="DI"  Adr="0x194E" msk="0x0001" />
		<Tag Name="����.�� ���"      Descr="����.�� ���"     Type="DI"  Adr="0x194F" msk="0x0001" />
		<Tag Name="����� ����"       Descr="����� ����"      Type="DI"  Adr="0x1950" msk="0x0001" />
		<Tag Name="���.����"         Descr="���.����"        Type="DI"  Adr="0x1951" msk="0x0001" />
		<Tag Name="���.�� ����"      Descr="���.�� ����"     Type="DI"  Adr="0x1952" msk="0x0001" />
		<Tag Name="����.�������"     Descr="����.�������"    Type="DI"  Adr="0x1953" msk="0x0001" />
		<Tag Name="���.�������"      Descr="���.�������"     Type="DI"  Adr="0x1954" msk="0x0001" />
		<Tag Name="����.�� ��"       Descr="����.�� ��"      Type="DI"  Adr="0x1955" msk="0x0001" />
		<Tag Name="���.�� ��"        Descr="���.�� ��"       Type="DI"  Adr="0x1956" msk="0x0001" />
		<Tag Name="����.�� ��"       Descr="����.�� ��"      Type="DI"  Adr="0x1957" msk="0x0001" />
		<Tag Name="���.�� ��"        Descr="���.�� ��"       Type="DI"  Adr="0x1958" msk="0x0001" />
		<Tag Name="����.�� ���"      Descr="����.�� ���"     Type="DI"  Adr="0x1959" msk="0x0001" />
		<Tag Name="���.�� ���"       Descr="���.�� ���"      Type="DI"  Adr="0x195A" msk="0x0001" />
		<Tag Name="���"              Descr="���"             Type="DI"  Adr="0x195B" msk="0x0001" />
		<Tag Name="���"              Descr="���"             Type="DI"  Adr="0x195C" msk="0x0001" />
		<Tag Name="����.��"          Descr="����.��"         Type="DI"  Adr="0x195D" msk="0x0001" />
		<Tag Name="����.��"          Descr="����.��"         Type="DI"  Adr="0x195E" msk="0x0001" />
		<Tag Name="�����.����."      Descr="�����.����."     Type="DI"  Adr="0x195F" msk="0x0001" />
		<Tag Name="�����.��"         Descr="�����.��"        Type="DI"  Adr="0x1960" msk="0x0001" />
		<Tag Name="�����.��"         Descr="�����.��"        Type="DI"  Adr="0x1961" msk="0x0001" />
		<Tag Name="������ �� �����"  Descr="������ �� �����" Type="DI"  Adr="0x1962" msk="0x0001" />
		<Tag Name="���.�� ����."     Descr="���.�� ����."    Type="DI"  Adr="0x1963" msk="0x0001" />
		<Tag Name="���.����."        Descr="���.����."       Type="DI"  Adr="0x1964" msk="0x0001" />
		<Tag Name="������.��"        Descr="������.��"       Type="DI"  Adr="0x1965" msk="0x0001" />
		<Tag Name="���"              Descr="���"             Type="DI"  Adr="0x1966" msk="0x0001" />
		<Tag Name="���"              Descr="���"             Type="DI"  Adr="0x1967" msk="0x0001" />
		<Tag Name="��"               Descr="��"              Type="DI"  Adr="0x1968" msk="0x0001" />
		<Tag Name="����.�� ���"      Descr="����.�� ���"     Type="DI"  Adr="0x1969" msk="0x0001" />
		<Tag Name="���������"        Descr="���������"       Type="DI"  Adr="0x196A" msk="0x0001" />
		<Tag Name="���.����."        Descr="���.����."       Type="DI"  Adr="0x196B" msk="0x0001" />
		<Tag Name="���.�� ���(��)"   Descr="���.�� ���(��)"  Type="DI"  Adr="0x196C" msk="0x0001" />
		<Tag Name="���.�� ����(��)"  Descr="���.�� ����(��)" Type="DI"  Adr="0x196D" msk="0x0001" />
		<Tag Name="��������"         Descr="��������"        Type="DI"  Adr="0x196E" msk="0x0001" />
		<Tag Name="����.����."       Descr="����.����."      Type="DI"  Adr="0x196F" msk="0x0001" />
		<Tag Name="���������.����."  Descr="���������.����." Type="DI"  Adr="0x1970" msk="0x0001" />
		<Tag Name="���� ����."       Descr="���� ����."      Type="DI"  Adr="0x1971" msk="0x0001" />
		<Tag Name="����� �������"    Descr="����� �������"   Type="DI"  Adr="0x1972" msk="0x0001" />
		<Tag Name="��.�����"         Descr="��.�����"        Type="DI"  Adr="0x1973" msk="0x0001" />
		<Tag Name="������.������"    Descr="������.������"   Type="DI"  Adr="0x1974" msk="0x0001" />
		<Tag Name="�����"            Descr="�����"           Type="DI"  Adr="0x1975" msk="0x0001" />
		<Tag Name="����� ��������"   Descr="����� ��������"  Type="DI"  Adr="0x1976" msk="0x0001" />
		<Tag Name="���� ���"         Descr="���� ���"        Type="DI"  Adr="0x1977" msk="0x0001" />
		<Tag Name="��� ��������"     Descr="��� ��������"    Type="DI"  Adr="0x1978" msk="0x0001" />
		<Tag Name="���� ���"         Descr="���� ���"        Type="DI"  Adr="0x1979" msk="0x0001" />
		<Tag Name="��� ��������"     Descr="��� ��������"    Type="DI"  Adr="0x197A" msk="0x0001" />
		<Tag Name="���� ����"        Descr="���� ����"       Type="DI"  Adr="0x197B" msk="0x0001" />
		<Tag Name="���� ��������"    Descr="���� ��������"   Type="DI"  Adr="0x197C" msk="0x0001" />
		<Tag Name="���� ��.����."    Descr="���� ��.����."   Type="DI"  Adr="0x197D" msk="0x0001" />
		<Tag Name="��.����.��������" Descr="�.����.��������" Type="DI"  Adr="0x197E" msk="0x0001" />
		<Tag Name="� ���������"      Descr="� ���������"     Type="DI"  Adr="0x197F" msk="0x0001" />
		<Tag Name="I ��������"       Descr="I ��������"      Type="DI"  Adr="0x1980" msk="0x0001" />
		<Tag Name="����.�����."      Descr="����.�����."     Type="DI"  Adr="0x1981" msk="0x0001" />
		<Tag Name="���������� ���"   Descr="���������� ���"  Type="DI"  Adr="0x1982" msk="0x0001" />
		<Tag Name="��� ��������"     Descr="��� ��������"    Type="DI"  Adr="0x1983" msk="0x0001" />
		<Tag Name="� ����� ����."    Descr="� ����� ����."   Type="DI"  Adr="0x1984" msk="0x0001" />
		<Tag Name="�����.������."    Descr="�����.������."   Type="DI"  Adr="0x1985" msk="0x0001" />
		<Tag Name="������ ���� ���." Descr="���� ���� ���."  Type="DI"  Adr="0x1986" msk="0x0001" />
		<Tag Name="���� ���."        Descr="���� ���."       Type="DI"  Adr="0x1987" msk="0x0001" />

	</Group>  

<Group Name="��">
<!--
1. � ������ ������������� ���������� False (�������� ��� ������, ������� �� ��������� ����� 0)
2. ���������� True � ��� ��� ��� ����
3. ���������� True � ��� ������� ����������
-->
        <Tag Name="���"                Descr="������� ��������"   Type="DO"  Adr="0x0D00" Func="5" DataType="1" />
        <Tag Name="����"               Descr="������� ���������"  Type="DO"  Adr="0x0D01" Func="5" DataType="1" />
        <Tag Name="������� ����������" Descr="���������� �������" Type="DO"  Adr="0x0D02" Func="5" DataType="1" />
        <Tag Name="�����"              Descr="����� ������������" Type="DO"  Adr="0x0D03" Func="5" DataType="1" />
		<Tag Name="��� ���"       Descr="���. ���"                   Type="DO"  Adr="0x0300" Func="6" DataType="0" />
		<Tag Name="��� ���"       Descr="���. ���"                   Type="DO"  Adr="0x0301" Func="6" DataType="0" />
		<Tag Name="��� ����"      Descr="���. ����"                  Type="DO"  Adr="0x0302" Func="6" DataType="0" />
		<Tag Name="��� ��"        Descr="��� ��"                     Type="DO"  Adr="0x0303" Func="6" DataType="0" />
		<Tag Name="�������������" Descr="������������� (�������� 0)" Type="AO"  Adr="0x030f" Func="6" DataType="0" />	


</Group>

    </TagTree>
  </Module>
  
</KLogicModules>
