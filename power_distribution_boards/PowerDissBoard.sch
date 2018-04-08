<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.6.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="con-wago-500">
<description>&lt;b&gt;Wago Screw Clamps&lt;/b&gt;&lt;p&gt;
Grid 5.00 mm&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="W237-103">
<description>&lt;b&gt;WAGO SCREW CLAMP&lt;/b&gt;</description>
<wire x1="4.093" y1="-2.255" x2="5.897" y2="-0.299" width="0.254" layer="51"/>
<wire x1="-0.911" y1="-2.331" x2="0.994" y2="-0.299" width="0.254" layer="51"/>
<wire x1="-5.991" y1="-2.306" x2="-3.984" y2="-0.299" width="0.254" layer="51"/>
<wire x1="-7.489" y1="-5.481" x2="7.497" y2="-5.481" width="0.1524" layer="21"/>
<wire x1="7.497" y1="3.714" x2="7.497" y2="3.511" width="0.1524" layer="21"/>
<wire x1="7.497" y1="3.714" x2="-7.489" y2="3.714" width="0.1524" layer="21"/>
<wire x1="-7.489" y1="-5.481" x2="-7.489" y2="-3.093" width="0.1524" layer="21"/>
<wire x1="-7.489" y1="-3.093" x2="-5.889" y2="-3.093" width="0.1524" layer="21"/>
<wire x1="-5.889" y1="-3.093" x2="-4.111" y2="-3.093" width="0.1524" layer="51"/>
<wire x1="-4.111" y1="-3.093" x2="-0.885" y2="-3.093" width="0.1524" layer="21"/>
<wire x1="0.893" y1="-3.093" x2="4.119" y2="-3.093" width="0.1524" layer="21"/>
<wire x1="5.897" y1="-3.093" x2="7.497" y2="-3.093" width="0.1524" layer="21"/>
<wire x1="-7.489" y1="-3.093" x2="-7.489" y2="3.511" width="0.1524" layer="21"/>
<wire x1="7.497" y1="-3.093" x2="7.497" y2="-5.481" width="0.1524" layer="21"/>
<wire x1="7.497" y1="3.511" x2="-7.489" y2="3.511" width="0.1524" layer="21"/>
<wire x1="7.497" y1="3.511" x2="7.497" y2="-3.093" width="0.1524" layer="21"/>
<wire x1="-7.489" y1="3.511" x2="-7.489" y2="3.714" width="0.1524" layer="21"/>
<wire x1="-0.885" y1="-3.093" x2="0.893" y2="-3.093" width="0.1524" layer="51"/>
<wire x1="4.119" y1="-3.093" x2="5.897" y2="-3.093" width="0.1524" layer="51"/>
<circle x="-5" y="-1.29" radius="1.4986" width="0.1524" layer="51"/>
<circle x="5.0076" y="-1.29" radius="1.4986" width="0.1524" layer="51"/>
<circle x="-5" y="2.1898" radius="0.508" width="0.1524" layer="21"/>
<circle x="5.0076" y="2.1898" radius="0.508" width="0.1524" layer="21"/>
<circle x="0.0038" y="-1.29" radius="1.4986" width="0.1524" layer="51"/>
<circle x="0.0038" y="2.1898" radius="0.508" width="0.1524" layer="21"/>
<pad name="1" x="-5" y="-1.29" drill="1.1938" shape="long" rot="R90"/>
<pad name="2" x="0" y="-1.29" drill="1.1938" shape="long" rot="R90"/>
<pad name="3" x="5" y="-1.29" drill="1.1938" shape="long" rot="R90"/>
<text x="-6.905" y="0.615" size="1.27" layer="51" ratio="10">1</text>
<text x="-1.8504" y="0.5642" size="1.27" layer="51" ratio="10">2</text>
<text x="3.1534" y="0.615" size="1.27" layer="51" ratio="10">3</text>
<text x="-5.3048" y="-4.9476" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-5.6858" y="-7.4622" size="1.27" layer="25" ratio="10">&gt;NAME</text>
</package>
<package name="W237-102">
<description>&lt;b&gt;WAGO SCREW CLAMP&lt;/b&gt;</description>
<wire x1="-3.491" y1="-2.286" x2="-1.484" y2="-0.279" width="0.254" layer="51"/>
<wire x1="1.488" y1="-2.261" x2="3.469" y2="-0.254" width="0.254" layer="51"/>
<wire x1="-4.989" y1="-5.461" x2="4.993" y2="-5.461" width="0.1524" layer="21"/>
<wire x1="4.993" y1="3.734" x2="4.993" y2="3.531" width="0.1524" layer="21"/>
<wire x1="4.993" y1="3.734" x2="-4.989" y2="3.734" width="0.1524" layer="21"/>
<wire x1="-4.989" y1="-5.461" x2="-4.989" y2="-3.073" width="0.1524" layer="21"/>
<wire x1="-4.989" y1="-3.073" x2="-3.389" y2="-3.073" width="0.1524" layer="21"/>
<wire x1="-3.389" y1="-3.073" x2="-1.611" y2="-3.073" width="0.1524" layer="51"/>
<wire x1="-1.611" y1="-3.073" x2="1.615" y2="-3.073" width="0.1524" layer="21"/>
<wire x1="3.393" y1="-3.073" x2="4.993" y2="-3.073" width="0.1524" layer="21"/>
<wire x1="-4.989" y1="-3.073" x2="-4.989" y2="3.531" width="0.1524" layer="21"/>
<wire x1="4.993" y1="-3.073" x2="4.993" y2="-5.461" width="0.1524" layer="21"/>
<wire x1="-4.989" y1="3.531" x2="4.993" y2="3.531" width="0.1524" layer="21"/>
<wire x1="-4.989" y1="3.531" x2="-4.989" y2="3.734" width="0.1524" layer="21"/>
<wire x1="4.993" y1="3.531" x2="4.993" y2="-3.073" width="0.1524" layer="21"/>
<wire x1="1.615" y1="-3.073" x2="3.393" y2="-3.073" width="0.1524" layer="51"/>
<circle x="-2.5" y="-1.27" radius="1.4986" width="0.1524" layer="51"/>
<circle x="-2.5" y="2.2098" radius="0.508" width="0.1524" layer="21"/>
<circle x="2.5038" y="-1.27" radius="1.4986" width="0.1524" layer="51"/>
<circle x="2.5038" y="2.2098" radius="0.508" width="0.1524" layer="21"/>
<pad name="1" x="-2.5" y="-1.27" drill="1.1938" shape="long" rot="R90"/>
<pad name="2" x="2.5" y="-1.27" drill="1.1938" shape="long" rot="R90"/>
<text x="-5.04" y="-7.62" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-3.8462" y="-5.0038" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.532" y="0.635" size="1.27" layer="21" ratio="10">1</text>
<text x="0.421" y="0.635" size="1.27" layer="21" ratio="10">2</text>
</package>
</packages>
<symbols>
<symbol name="KL">
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<text x="0" y="0.889" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<pin name="KL" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="KL+V">
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<text x="-2.54" y="-3.683" size="1.778" layer="96">&gt;VALUE</text>
<text x="0" y="0.889" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<pin name="KL" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="W237-103" prefix="X" uservalue="yes">
<description>&lt;b&gt;WAGO SCREW CLAMP&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="KL" x="0" y="5.08" addlevel="always"/>
<gate name="-2" symbol="KL" x="0" y="0" addlevel="always"/>
<gate name="-3" symbol="KL+V" x="0" y="-5.08" addlevel="always"/>
</gates>
<devices>
<device name="" package="W237-103">
<connects>
<connect gate="-1" pin="KL" pad="1"/>
<connect gate="-2" pin="KL" pad="2"/>
<connect gate="-3" pin="KL" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="237-103" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="18M7116" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="W237-102" prefix="X" uservalue="yes">
<description>&lt;b&gt;WAGO SCREW CLAMP&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="KL" x="0" y="5.08" addlevel="always"/>
<gate name="-2" symbol="KL+V" x="0" y="0" addlevel="always"/>
</gates>
<devices>
<device name="" package="W237-102">
<connects>
<connect gate="-1" pin="KL" pad="1"/>
<connect gate="-2" pin="KL" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="237-102" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="70K9898" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="X1" library="con-wago-500" deviceset="W237-103" device=""/>
<part name="X2" library="con-wago-500" deviceset="W237-103" device=""/>
<part name="X3" library="con-wago-500" deviceset="W237-103" device=""/>
<part name="X4" library="con-wago-500" deviceset="W237-103" device=""/>
<part name="X5" library="con-wago-500" deviceset="W237-102" device=""/>
<part name="X6" library="con-wago-500" deviceset="W237-103" device=""/>
<part name="X7" library="con-wago-500" deviceset="W237-103" device=""/>
<part name="X8" library="con-wago-500" deviceset="W237-103" device=""/>
<part name="X9" library="con-wago-500" deviceset="W237-103" device=""/>
<part name="X10" library="con-wago-500" deviceset="W237-102" device=""/>
<part name="X11" library="con-wago-500" deviceset="W237-103" device=""/>
<part name="X12" library="con-wago-500" deviceset="W237-103" device=""/>
<part name="X13" library="con-wago-500" deviceset="W237-103" device=""/>
<part name="X14" library="con-wago-500" deviceset="W237-103" device=""/>
<part name="X15" library="con-wago-500" deviceset="W237-102" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="X1" gate="-1" x="7.62" y="33.02"/>
<instance part="X1" gate="-2" x="7.62" y="27.94"/>
<instance part="X1" gate="-3" x="7.62" y="22.86"/>
<instance part="X2" gate="-1" x="7.62" y="15.24"/>
<instance part="X2" gate="-2" x="7.62" y="10.16"/>
<instance part="X2" gate="-3" x="7.62" y="5.08"/>
<instance part="X3" gate="-1" x="38.1" y="5.08" rot="R180"/>
<instance part="X3" gate="-2" x="38.1" y="10.16" rot="R180"/>
<instance part="X3" gate="-3" x="38.1" y="15.24" rot="R180"/>
<instance part="X4" gate="-1" x="38.1" y="22.86" rot="R180"/>
<instance part="X4" gate="-2" x="38.1" y="27.94" rot="R180"/>
<instance part="X4" gate="-3" x="38.1" y="33.02" rot="R180"/>
<instance part="X5" gate="-1" x="25.4" y="53.34" rot="R270"/>
<instance part="X5" gate="-2" x="20.32" y="53.34" rot="R270"/>
<instance part="X6" gate="-1" x="55.88" y="33.02"/>
<instance part="X6" gate="-2" x="55.88" y="27.94"/>
<instance part="X6" gate="-3" x="55.88" y="22.86"/>
<instance part="X7" gate="-1" x="55.88" y="15.24"/>
<instance part="X7" gate="-2" x="55.88" y="10.16"/>
<instance part="X7" gate="-3" x="55.88" y="5.08"/>
<instance part="X8" gate="-1" x="86.36" y="5.08" rot="R180"/>
<instance part="X8" gate="-2" x="86.36" y="10.16" rot="R180"/>
<instance part="X8" gate="-3" x="86.36" y="15.24" rot="R180"/>
<instance part="X9" gate="-1" x="86.36" y="22.86" rot="R180"/>
<instance part="X9" gate="-2" x="86.36" y="27.94" rot="R180"/>
<instance part="X9" gate="-3" x="86.36" y="33.02" rot="R180"/>
<instance part="X10" gate="-1" x="73.66" y="53.34" rot="R270"/>
<instance part="X10" gate="-2" x="68.58" y="53.34" rot="R270"/>
<instance part="X11" gate="-1" x="106.68" y="33.02"/>
<instance part="X11" gate="-2" x="106.68" y="27.94"/>
<instance part="X11" gate="-3" x="106.68" y="22.86"/>
<instance part="X12" gate="-1" x="106.68" y="15.24"/>
<instance part="X12" gate="-2" x="106.68" y="10.16"/>
<instance part="X12" gate="-3" x="106.68" y="5.08"/>
<instance part="X13" gate="-1" x="137.16" y="5.08" rot="R180"/>
<instance part="X13" gate="-2" x="137.16" y="10.16" rot="R180"/>
<instance part="X13" gate="-3" x="137.16" y="15.24" rot="R180"/>
<instance part="X14" gate="-1" x="137.16" y="22.86" rot="R180"/>
<instance part="X14" gate="-2" x="137.16" y="27.94" rot="R180"/>
<instance part="X14" gate="-3" x="137.16" y="33.02" rot="R180"/>
<instance part="X15" gate="-1" x="124.46" y="53.34" rot="R270"/>
<instance part="X15" gate="-2" x="119.38" y="53.34" rot="R270"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="X5" gate="-2" pin="KL"/>
<wire x1="20.32" y1="48.26" x2="20.32" y2="33.02" width="0.1524" layer="91"/>
<pinref part="X1" gate="-1" pin="KL"/>
<wire x1="20.32" y1="33.02" x2="12.7" y2="33.02" width="0.1524" layer="91"/>
<pinref part="X2" gate="-3" pin="KL"/>
<wire x1="12.7" y1="5.08" x2="20.32" y2="5.08" width="0.1524" layer="91"/>
<wire x1="20.32" y1="5.08" x2="20.32" y2="10.16" width="0.1524" layer="91"/>
<junction x="20.32" y="33.02"/>
<pinref part="X2" gate="-2" pin="KL"/>
<wire x1="20.32" y1="10.16" x2="20.32" y2="15.24" width="0.1524" layer="91"/>
<wire x1="20.32" y1="15.24" x2="20.32" y2="22.86" width="0.1524" layer="91"/>
<wire x1="20.32" y1="22.86" x2="20.32" y2="27.94" width="0.1524" layer="91"/>
<wire x1="20.32" y1="27.94" x2="20.32" y2="33.02" width="0.1524" layer="91"/>
<wire x1="12.7" y1="10.16" x2="20.32" y2="10.16" width="0.1524" layer="91"/>
<junction x="20.32" y="10.16"/>
<pinref part="X2" gate="-1" pin="KL"/>
<wire x1="12.7" y1="15.24" x2="20.32" y2="15.24" width="0.1524" layer="91"/>
<junction x="20.32" y="15.24"/>
<pinref part="X1" gate="-3" pin="KL"/>
<wire x1="12.7" y1="22.86" x2="20.32" y2="22.86" width="0.1524" layer="91"/>
<junction x="20.32" y="22.86"/>
<pinref part="X1" gate="-2" pin="KL"/>
<wire x1="12.7" y1="27.94" x2="20.32" y2="27.94" width="0.1524" layer="91"/>
<junction x="20.32" y="27.94"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="X4" gate="-3" pin="KL"/>
<pinref part="X5" gate="-1" pin="KL"/>
<wire x1="33.02" y1="33.02" x2="25.4" y2="33.02" width="0.1524" layer="91"/>
<wire x1="25.4" y1="33.02" x2="25.4" y2="48.26" width="0.1524" layer="91"/>
<pinref part="X3" gate="-1" pin="KL"/>
<wire x1="33.02" y1="5.08" x2="25.4" y2="5.08" width="0.1524" layer="91"/>
<wire x1="25.4" y1="5.08" x2="25.4" y2="10.16" width="0.1524" layer="91"/>
<junction x="25.4" y="33.02"/>
<pinref part="X3" gate="-2" pin="KL"/>
<wire x1="25.4" y1="10.16" x2="25.4" y2="15.24" width="0.1524" layer="91"/>
<wire x1="25.4" y1="15.24" x2="25.4" y2="22.86" width="0.1524" layer="91"/>
<wire x1="25.4" y1="22.86" x2="25.4" y2="27.94" width="0.1524" layer="91"/>
<wire x1="25.4" y1="27.94" x2="25.4" y2="33.02" width="0.1524" layer="91"/>
<wire x1="33.02" y1="10.16" x2="25.4" y2="10.16" width="0.1524" layer="91"/>
<junction x="25.4" y="10.16"/>
<pinref part="X3" gate="-3" pin="KL"/>
<wire x1="33.02" y1="15.24" x2="25.4" y2="15.24" width="0.1524" layer="91"/>
<junction x="25.4" y="15.24"/>
<pinref part="X4" gate="-1" pin="KL"/>
<wire x1="33.02" y1="22.86" x2="25.4" y2="22.86" width="0.1524" layer="91"/>
<junction x="25.4" y="22.86"/>
<pinref part="X4" gate="-2" pin="KL"/>
<wire x1="33.02" y1="27.94" x2="25.4" y2="27.94" width="0.1524" layer="91"/>
<junction x="25.4" y="27.94"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="X10" gate="-2" pin="KL"/>
<wire x1="68.58" y1="48.26" x2="68.58" y2="33.02" width="0.1524" layer="91"/>
<pinref part="X6" gate="-1" pin="KL"/>
<wire x1="68.58" y1="33.02" x2="60.96" y2="33.02" width="0.1524" layer="91"/>
<pinref part="X7" gate="-3" pin="KL"/>
<wire x1="60.96" y1="5.08" x2="68.58" y2="5.08" width="0.1524" layer="91"/>
<wire x1="68.58" y1="5.08" x2="68.58" y2="10.16" width="0.1524" layer="91"/>
<junction x="68.58" y="33.02"/>
<pinref part="X7" gate="-2" pin="KL"/>
<wire x1="68.58" y1="10.16" x2="68.58" y2="15.24" width="0.1524" layer="91"/>
<wire x1="68.58" y1="15.24" x2="68.58" y2="22.86" width="0.1524" layer="91"/>
<wire x1="68.58" y1="22.86" x2="68.58" y2="27.94" width="0.1524" layer="91"/>
<wire x1="68.58" y1="27.94" x2="68.58" y2="33.02" width="0.1524" layer="91"/>
<wire x1="60.96" y1="10.16" x2="68.58" y2="10.16" width="0.1524" layer="91"/>
<junction x="68.58" y="10.16"/>
<pinref part="X7" gate="-1" pin="KL"/>
<wire x1="60.96" y1="15.24" x2="68.58" y2="15.24" width="0.1524" layer="91"/>
<junction x="68.58" y="15.24"/>
<pinref part="X6" gate="-3" pin="KL"/>
<wire x1="60.96" y1="22.86" x2="68.58" y2="22.86" width="0.1524" layer="91"/>
<junction x="68.58" y="22.86"/>
<pinref part="X6" gate="-2" pin="KL"/>
<wire x1="60.96" y1="27.94" x2="68.58" y2="27.94" width="0.1524" layer="91"/>
<junction x="68.58" y="27.94"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="X9" gate="-3" pin="KL"/>
<pinref part="X10" gate="-1" pin="KL"/>
<wire x1="81.28" y1="33.02" x2="73.66" y2="33.02" width="0.1524" layer="91"/>
<wire x1="73.66" y1="33.02" x2="73.66" y2="48.26" width="0.1524" layer="91"/>
<pinref part="X8" gate="-1" pin="KL"/>
<wire x1="81.28" y1="5.08" x2="73.66" y2="5.08" width="0.1524" layer="91"/>
<wire x1="73.66" y1="5.08" x2="73.66" y2="10.16" width="0.1524" layer="91"/>
<junction x="73.66" y="33.02"/>
<pinref part="X8" gate="-2" pin="KL"/>
<wire x1="73.66" y1="10.16" x2="73.66" y2="15.24" width="0.1524" layer="91"/>
<wire x1="73.66" y1="15.24" x2="73.66" y2="22.86" width="0.1524" layer="91"/>
<wire x1="73.66" y1="22.86" x2="73.66" y2="27.94" width="0.1524" layer="91"/>
<wire x1="73.66" y1="27.94" x2="73.66" y2="33.02" width="0.1524" layer="91"/>
<wire x1="81.28" y1="10.16" x2="73.66" y2="10.16" width="0.1524" layer="91"/>
<junction x="73.66" y="10.16"/>
<pinref part="X8" gate="-3" pin="KL"/>
<wire x1="81.28" y1="15.24" x2="73.66" y2="15.24" width="0.1524" layer="91"/>
<junction x="73.66" y="15.24"/>
<pinref part="X9" gate="-1" pin="KL"/>
<wire x1="81.28" y1="22.86" x2="73.66" y2="22.86" width="0.1524" layer="91"/>
<junction x="73.66" y="22.86"/>
<pinref part="X9" gate="-2" pin="KL"/>
<wire x1="81.28" y1="27.94" x2="73.66" y2="27.94" width="0.1524" layer="91"/>
<junction x="73.66" y="27.94"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="X15" gate="-2" pin="KL"/>
<wire x1="119.38" y1="48.26" x2="119.38" y2="33.02" width="0.1524" layer="91"/>
<pinref part="X11" gate="-1" pin="KL"/>
<wire x1="119.38" y1="33.02" x2="111.76" y2="33.02" width="0.1524" layer="91"/>
<pinref part="X12" gate="-3" pin="KL"/>
<wire x1="111.76" y1="5.08" x2="119.38" y2="5.08" width="0.1524" layer="91"/>
<wire x1="119.38" y1="5.08" x2="119.38" y2="10.16" width="0.1524" layer="91"/>
<junction x="119.38" y="33.02"/>
<pinref part="X12" gate="-2" pin="KL"/>
<wire x1="119.38" y1="10.16" x2="119.38" y2="15.24" width="0.1524" layer="91"/>
<wire x1="119.38" y1="15.24" x2="119.38" y2="22.86" width="0.1524" layer="91"/>
<wire x1="119.38" y1="22.86" x2="119.38" y2="27.94" width="0.1524" layer="91"/>
<wire x1="119.38" y1="27.94" x2="119.38" y2="33.02" width="0.1524" layer="91"/>
<wire x1="111.76" y1="10.16" x2="119.38" y2="10.16" width="0.1524" layer="91"/>
<junction x="119.38" y="10.16"/>
<pinref part="X12" gate="-1" pin="KL"/>
<wire x1="111.76" y1="15.24" x2="119.38" y2="15.24" width="0.1524" layer="91"/>
<junction x="119.38" y="15.24"/>
<pinref part="X11" gate="-3" pin="KL"/>
<wire x1="111.76" y1="22.86" x2="119.38" y2="22.86" width="0.1524" layer="91"/>
<junction x="119.38" y="22.86"/>
<pinref part="X11" gate="-2" pin="KL"/>
<wire x1="111.76" y1="27.94" x2="119.38" y2="27.94" width="0.1524" layer="91"/>
<junction x="119.38" y="27.94"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="X14" gate="-3" pin="KL"/>
<pinref part="X15" gate="-1" pin="KL"/>
<wire x1="132.08" y1="33.02" x2="124.46" y2="33.02" width="0.1524" layer="91"/>
<wire x1="124.46" y1="33.02" x2="124.46" y2="48.26" width="0.1524" layer="91"/>
<pinref part="X13" gate="-1" pin="KL"/>
<wire x1="132.08" y1="5.08" x2="124.46" y2="5.08" width="0.1524" layer="91"/>
<wire x1="124.46" y1="5.08" x2="124.46" y2="10.16" width="0.1524" layer="91"/>
<junction x="124.46" y="33.02"/>
<pinref part="X13" gate="-2" pin="KL"/>
<wire x1="124.46" y1="10.16" x2="124.46" y2="15.24" width="0.1524" layer="91"/>
<wire x1="124.46" y1="15.24" x2="124.46" y2="22.86" width="0.1524" layer="91"/>
<wire x1="124.46" y1="22.86" x2="124.46" y2="27.94" width="0.1524" layer="91"/>
<wire x1="124.46" y1="27.94" x2="124.46" y2="33.02" width="0.1524" layer="91"/>
<wire x1="132.08" y1="10.16" x2="124.46" y2="10.16" width="0.1524" layer="91"/>
<junction x="124.46" y="10.16"/>
<pinref part="X13" gate="-3" pin="KL"/>
<wire x1="132.08" y1="15.24" x2="124.46" y2="15.24" width="0.1524" layer="91"/>
<junction x="124.46" y="15.24"/>
<pinref part="X14" gate="-1" pin="KL"/>
<wire x1="132.08" y1="22.86" x2="124.46" y2="22.86" width="0.1524" layer="91"/>
<junction x="124.46" y="22.86"/>
<pinref part="X14" gate="-2" pin="KL"/>
<wire x1="132.08" y1="27.94" x2="124.46" y2="27.94" width="0.1524" layer="91"/>
<junction x="124.46" y="27.94"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
