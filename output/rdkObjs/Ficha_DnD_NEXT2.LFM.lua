require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_Ficha_do_Lukao_v1()
    local obj = GUI.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", rawget(obj, "setNodeObject"));

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setFormType("sheetTemplate");
    obj:setDataType("DT012345");
    obj:setTitle("Ficha_do_Lukao");
    obj:setName("Ficha_do_Lukao_v1");
    obj:setTheme("light");
    obj:setLeft(219);
    obj:setTop(121);
    obj:setWidth(905);
    obj:setHeight(629);

    obj.tabControl1 = GUI.fromHandle(_obj_newObject("tabControl"));
    obj.tabControl1:setParent(obj);
    obj.tabControl1:setLeft(0);
    obj.tabControl1:setTop(0);
    obj.tabControl1:setWidth(1330);
    obj.tabControl1:setHeight(650);
    obj.tabControl1:setName("tabControl1");

    obj.tab1 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab1:setParent(obj.tabControl1);
    obj.tab1:setTitle("Dados Gerais");
    obj.tab1:setName("tab1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.tab1);
    obj.layout1:setLeft(0);
    obj.layout1:setTop(0);
    obj.layout1:setWidth(1330);
    obj.layout1:setHeight(650);
    obj.layout1:setName("layout1");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.layout1);
    obj.image1:setCenter(false);
    obj.image1:setShowProgress(true);
    obj.image1:setSRC("http://blob.firecast.com.br/blobs/JBPRKBDP_1319770/Untitled-3.png");
    obj.image1:setShowStyle("proportional");
    obj.image1:setLeft(0);
    obj.image1:setTop(0);
    obj.image1:setWidth(1330);
    obj.image1:setHeight(650);
    obj.image1:setName("image1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout1);
    obj.edit1:setText("0");
    obj.edit1:setField("NomePersonagem");
    obj.edit1:setTop(83);
    obj.edit1:setLeft(67);
    obj.edit1:setWidth(230);
    obj.edit1:setHeight(20);
    obj.edit1:setFontFamily("Segoe UI");
    obj.edit1:setFontSize(12);
    obj.edit1:setFontColor("black");
    obj.edit1:setKeyboardType("default");
    obj.edit1:setEnterKeyType("default");
    lfm_setPropAsString(obj.edit1, "fontStyle",  "bold");
    obj.edit1:setName("edit1");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout1);
    obj.edit2:setText("0");
    obj.edit2:setField("sabedoria_passiva");
    obj.edit2:setTop(15);
    obj.edit2:setLeft(981);
    obj.edit2:setWidth(30);
    obj.edit2:setHeight(25);
    obj.edit2:setFontFamily("Segoe UI");
    obj.edit2:setFontSize(16);
    obj.edit2:setFontColor("black");
    obj.edit2:setType("number");
    obj.edit2:setKeyboardType("default");
    obj.edit2:setEnterKeyType("default");
    lfm_setPropAsString(obj.edit2, "fontStyle",  "bold");
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setName("edit2");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout1);
    obj.edit3:setText("0");
    obj.edit3:setField("inspiracao");
    obj.edit3:setTop(65);
    obj.edit3:setLeft(1144);
    obj.edit3:setWidth(30);
    obj.edit3:setHeight(25);
    obj.edit3:setFontFamily("Segoe UI");
    obj.edit3:setFontSize(16);
    obj.edit3:setFontColor("black");
    obj.edit3:setType("number");
    obj.edit3:setKeyboardType("default");
    obj.edit3:setEnterKeyType("default");
    lfm_setPropAsString(obj.edit3, "fontStyle",  "bold");
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setName("edit3");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout1);
    obj.edit4:setText("0");
    obj.edit4:setField("bonus_proficiencia");
    obj.edit4:setTop(117);
    obj.edit4:setLeft(982);
    obj.edit4:setWidth(30);
    obj.edit4:setHeight(25);
    obj.edit4:setFontFamily("Segoe UI");
    obj.edit4:setFontSize(16);
    obj.edit4:setFontColor("black");
    obj.edit4:setType("number");
    obj.edit4:setKeyboardType("default");
    obj.edit4:setEnterKeyType("default");
    lfm_setPropAsString(obj.edit4, "fontStyle",  "bold");
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setName("edit4");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout1);
    obj.edit5:setText("0");
    obj.edit5:setField("CA");
    obj.edit5:setTop(198);
    obj.edit5:setLeft(1014);
    obj.edit5:setWidth(40);
    obj.edit5:setHeight(40);
    obj.edit5:setFontFamily("Segoe UI");
    obj.edit5:setFontSize(18);
    obj.edit5:setFontColor("darkblue");
    obj.edit5:setKeyboardType("default");
    obj.edit5:setEnterKeyType("default");
    lfm_setPropAsString(obj.edit5, "fontStyle",  "bold");
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setName("edit5");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout1);
    obj.edit6:setText("0");
    obj.edit6:setField("Iniciativa");
    obj.edit6:setTop(200);
    obj.edit6:setLeft(1121);
    obj.edit6:setWidth(40);
    obj.edit6:setHeight(40);
    obj.edit6:setFontFamily("Segoe UI");
    obj.edit6:setFontSize(18);
    obj.edit6:setFontColor("darkblue");
    obj.edit6:setKeyboardType("default");
    obj.edit6:setEnterKeyType("default");
    lfm_setPropAsString(obj.edit6, "fontStyle",  "bold");
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setName("edit6");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout1);
    obj.edit7:setText("0");
    obj.edit7:setField("Deslocamento");
    obj.edit7:setTop(200);
    obj.edit7:setLeft(1234);
    obj.edit7:setWidth(40);
    obj.edit7:setHeight(40);
    obj.edit7:setFontFamily("Segoe UI");
    obj.edit7:setFontSize(18);
    obj.edit7:setFontColor("darkblue");
    obj.edit7:setKeyboardType("default");
    obj.edit7:setEnterKeyType("default");
    lfm_setPropAsString(obj.edit7, "fontStyle",  "bold");
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setName("edit7");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout1);
    obj.edit8:setText("0");
    obj.edit8:setField("Pontos_Vida_Total");
    obj.edit8:setTop(300);
    obj.edit8:setLeft(1120);
    obj.edit8:setWidth(100);
    obj.edit8:setHeight(20);
    obj.edit8:setFontFamily("Segoe UI");
    obj.edit8:setFontSize(12);
    obj.edit8:setFontColor("black");
    obj.edit8:setKeyboardType("default");
    obj.edit8:setEnterKeyType("default");
    lfm_setPropAsString(obj.edit8, "fontStyle",  "bold");
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setName("edit8");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout1);
    obj.edit9:setText("0");
    obj.edit9:setField("Pontos_Vida_Atual");
    obj.edit9:setTop(350);
    obj.edit9:setLeft(1060);
    obj.edit9:setWidth(175);
    obj.edit9:setHeight(40);
    obj.edit9:setFontFamily("Segoe UI");
    obj.edit9:setFontSize(22);
    obj.edit9:setFontColor("darkblue");
    obj.edit9:setKeyboardType("default");
    obj.edit9:setEnterKeyType("default");
    lfm_setPropAsString(obj.edit9, "fontStyle",  "bold");
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setName("edit9");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout1);
    obj.edit10:setText("0");
    obj.edit10:setField("Pontos_Vida_Temporario");
    obj.edit10:setTop(450);
    obj.edit10:setLeft(1060);
    obj.edit10:setWidth(175);
    obj.edit10:setHeight(40);
    obj.edit10:setFontFamily("Segoe UI");
    obj.edit10:setFontSize(22);
    obj.edit10:setFontColor("darkblue");
    obj.edit10:setKeyboardType("default");
    obj.edit10:setEnterKeyType("default");
    lfm_setPropAsString(obj.edit10, "fontStyle",  "bold");
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setName("edit10");

    obj.checkBox1 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox1:setParent(obj.layout1);
    obj.checkBox1:setField("checkbox_resistencia_forca");
    obj.checkBox1:setText("");
    obj.checkBox1:setLeft(126);
    obj.checkBox1:setTop(207);
    obj.checkBox1:setName("checkBox1");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout1);
    obj.label1:setText("0");
    obj.label1:setField("resistencia_forca");
    obj.label1:setLeft(140);
    obj.label1:setTop(205);
    obj.label1:setWidth(30);
    obj.label1:setHeight(20);
    obj.label1:setFontFamily("Segoe UI");
    obj.label1:setFontSize(16);
    obj.label1:setFontColor("black");
    lfm_setPropAsString(obj.label1, "fontStyle",  "bold");
    obj.label1:setHorzTextAlign("center");
    obj.label1:setName("label1");

    obj.checkBox2 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox2:setParent(obj.layout1);
    obj.checkBox2:setField("checkbox_pericia_atletismo");
    obj.checkBox2:setText("");
    obj.checkBox2:setLeft(126);
    obj.checkBox2:setTop(225);
    obj.checkBox2:setName("checkBox2");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout1);
    obj.label2:setText("0");
    obj.label2:setField("pericia_atletismo");
    obj.label2:setLeft(140);
    obj.label2:setTop(223);
    obj.label2:setWidth(30);
    obj.label2:setHeight(20);
    obj.label2:setFontFamily("Segoe UI");
    obj.label2:setFontSize(16);
    obj.label2:setFontColor("black");
    lfm_setPropAsString(obj.label2, "fontStyle",  "bold");
    obj.label2:setHorzTextAlign("center");
    obj.label2:setName("label2");

    obj.checkBox3 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox3:setParent(obj.layout1);
    obj.checkBox3:setField("checkbox_resistencia_destreza");
    obj.checkBox3:setText("");
    obj.checkBox3:setLeft(126);
    obj.checkBox3:setTop(351);
    obj.checkBox3:setName("checkBox3");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout1);
    obj.label3:setText("0");
    obj.label3:setField("resistencia_destreza");
    obj.label3:setLeft(140);
    obj.label3:setTop(349);
    obj.label3:setWidth(30);
    obj.label3:setHeight(20);
    obj.label3:setFontFamily("Segoe UI");
    obj.label3:setFontSize(16);
    obj.label3:setFontColor("black");
    lfm_setPropAsString(obj.label3, "fontStyle",  "bold");
    obj.label3:setHorzTextAlign("center");
    obj.label3:setName("label3");

    obj.checkBox4 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox4:setParent(obj.layout1);
    obj.checkBox4:setField("checkbox_pericia_acrobacia");
    obj.checkBox4:setText("");
    obj.checkBox4:setLeft(126);
    obj.checkBox4:setTop(369);
    obj.checkBox4:setName("checkBox4");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout1);
    obj.label4:setText("0");
    obj.label4:setField("pericia_acrobacia");
    obj.label4:setLeft(140);
    obj.label4:setTop(367);
    obj.label4:setWidth(30);
    obj.label4:setHeight(20);
    obj.label4:setFontFamily("Segoe UI");
    obj.label4:setFontSize(16);
    obj.label4:setFontColor("black");
    lfm_setPropAsString(obj.label4, "fontStyle",  "bold");
    obj.label4:setHorzTextAlign("center");
    obj.label4:setName("label4");

    obj.checkBox5 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox5:setParent(obj.layout1);
    obj.checkBox5:setField("checkbox_pericia_furtividade");
    obj.checkBox5:setText("");
    obj.checkBox5:setLeft(126);
    obj.checkBox5:setTop(387);
    obj.checkBox5:setName("checkBox5");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout1);
    obj.label5:setText("0");
    obj.label5:setField("pericia_furtividade");
    obj.label5:setLeft(140);
    obj.label5:setTop(385);
    obj.label5:setWidth(30);
    obj.label5:setHeight(20);
    obj.label5:setFontFamily("Segoe UI");
    obj.label5:setFontSize(16);
    obj.label5:setFontColor("black");
    lfm_setPropAsString(obj.label5, "fontStyle",  "bold");
    obj.label5:setHorzTextAlign("center");
    obj.label5:setName("label5");

    obj.checkBox6 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox6:setParent(obj.layout1);
    obj.checkBox6:setField("checkbox_pericia_prestidigitacao");
    obj.checkBox6:setText("");
    obj.checkBox6:setLeft(126);
    obj.checkBox6:setTop(405);
    obj.checkBox6:setName("checkBox6");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout1);
    obj.label6:setText("0");
    obj.label6:setField("pericia_prestidigitacao");
    obj.label6:setLeft(140);
    obj.label6:setTop(403);
    obj.label6:setWidth(30);
    obj.label6:setHeight(20);
    obj.label6:setFontFamily("Segoe UI");
    obj.label6:setFontSize(16);
    obj.label6:setFontColor("black");
    lfm_setPropAsString(obj.label6, "fontStyle",  "bold");
    obj.label6:setHorzTextAlign("center");
    obj.label6:setName("label6");

    obj.checkBox7 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox7:setParent(obj.layout1);
    obj.checkBox7:setField("checkbox_resistencia_constituicao");
    obj.checkBox7:setText("");
    obj.checkBox7:setLeft(126);
    obj.checkBox7:setTop(494);
    obj.checkBox7:setName("checkBox7");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout1);
    obj.label7:setText("0");
    obj.label7:setField("resistencia_constituicao");
    obj.label7:setLeft(140);
    obj.label7:setTop(492);
    obj.label7:setWidth(30);
    obj.label7:setHeight(20);
    obj.label7:setFontFamily("Segoe UI");
    obj.label7:setFontSize(16);
    obj.label7:setFontColor("black");
    lfm_setPropAsString(obj.label7, "fontStyle",  "bold");
    obj.label7:setHorzTextAlign("center");
    obj.label7:setName("label7");

    obj.checkBox8 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox8:setParent(obj.layout1);
    obj.checkBox8:setField("checkbox_resistencia_inteligencia");
    obj.checkBox8:setText("");
    obj.checkBox8:setLeft(543);
    obj.checkBox8:setTop(207);
    obj.checkBox8:setName("checkBox8");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout1);
    obj.label8:setText("0");
    obj.label8:setField("resistencia_inteligencia");
    obj.label8:setLeft(557);
    obj.label8:setTop(205);
    obj.label8:setWidth(30);
    obj.label8:setHeight(20);
    obj.label8:setFontFamily("Segoe UI");
    obj.label8:setFontSize(16);
    obj.label8:setFontColor("black");
    lfm_setPropAsString(obj.label8, "fontStyle",  "bold");
    obj.label8:setHorzTextAlign("center");
    obj.label8:setName("label8");

    obj.checkBox9 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox9:setParent(obj.layout1);
    obj.checkBox9:setField("checkbox_pericia_arcanismo");
    obj.checkBox9:setText("");
    obj.checkBox9:setLeft(543);
    obj.checkBox9:setTop(225);
    obj.checkBox9:setName("checkBox9");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout1);
    obj.label9:setText("0");
    obj.label9:setField("pericia_arcanismo");
    obj.label9:setLeft(557);
    obj.label9:setTop(223);
    obj.label9:setWidth(30);
    obj.label9:setHeight(20);
    obj.label9:setFontFamily("Segoe UI");
    obj.label9:setFontSize(16);
    obj.label9:setFontColor("black");
    lfm_setPropAsString(obj.label9, "fontStyle",  "bold");
    obj.label9:setHorzTextAlign("center");
    obj.label9:setName("label9");

    obj.checkBox10 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox10:setParent(obj.layout1);
    obj.checkBox10:setField("checkbox_pericia_historia");
    obj.checkBox10:setText("");
    obj.checkBox10:setLeft(543);
    obj.checkBox10:setTop(243);
    obj.checkBox10:setName("checkBox10");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout1);
    obj.label10:setText("0");
    obj.label10:setField("pericia_historia");
    obj.label10:setLeft(557);
    obj.label10:setTop(241);
    obj.label10:setWidth(30);
    obj.label10:setHeight(20);
    obj.label10:setFontFamily("Segoe UI");
    obj.label10:setFontSize(16);
    obj.label10:setFontColor("black");
    lfm_setPropAsString(obj.label10, "fontStyle",  "bold");
    obj.label10:setHorzTextAlign("center");
    obj.label10:setName("label10");

    obj.checkBox11 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox11:setParent(obj.layout1);
    obj.checkBox11:setField("checkbox_pericia_investigacao");
    obj.checkBox11:setText("");
    obj.checkBox11:setLeft(543);
    obj.checkBox11:setTop(261);
    obj.checkBox11:setName("checkBox11");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout1);
    obj.label11:setText("0");
    obj.label11:setField("pericia_investigacao");
    obj.label11:setLeft(557);
    obj.label11:setTop(259);
    obj.label11:setWidth(30);
    obj.label11:setHeight(20);
    obj.label11:setFontFamily("Segoe UI");
    obj.label11:setFontSize(16);
    obj.label11:setFontColor("black");
    lfm_setPropAsString(obj.label11, "fontStyle",  "bold");
    obj.label11:setHorzTextAlign("center");
    obj.label11:setName("label11");

    obj.checkBox12 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox12:setParent(obj.layout1);
    obj.checkBox12:setField("checkbox_pericia_natureza");
    obj.checkBox12:setText("");
    obj.checkBox12:setLeft(543);
    obj.checkBox12:setTop(279);
    obj.checkBox12:setName("checkBox12");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout1);
    obj.label12:setText("0");
    obj.label12:setField("pericia_natureza");
    obj.label12:setLeft(557);
    obj.label12:setTop(277);
    obj.label12:setWidth(30);
    obj.label12:setHeight(20);
    obj.label12:setFontFamily("Segoe UI");
    obj.label12:setFontSize(16);
    obj.label12:setFontColor("black");
    lfm_setPropAsString(obj.label12, "fontStyle",  "bold");
    obj.label12:setHorzTextAlign("center");
    obj.label12:setName("label12");

    obj.checkBox13 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox13:setParent(obj.layout1);
    obj.checkBox13:setField("checkbox_pericia_religiao");
    obj.checkBox13:setText("");
    obj.checkBox13:setLeft(543);
    obj.checkBox13:setTop(297);
    obj.checkBox13:setName("checkBox13");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout1);
    obj.label13:setText("0");
    obj.label13:setField("pericia_religiao");
    obj.label13:setLeft(557);
    obj.label13:setTop(295);
    obj.label13:setWidth(30);
    obj.label13:setHeight(20);
    obj.label13:setFontFamily("Segoe UI");
    obj.label13:setFontSize(16);
    obj.label13:setFontColor("black");
    lfm_setPropAsString(obj.label13, "fontStyle",  "bold");
    obj.label13:setHorzTextAlign("center");
    obj.label13:setName("label13");

    obj.checkBox14 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox14:setParent(obj.layout1);
    obj.checkBox14:setField("checkbox_resistencia_sabedoria");
    obj.checkBox14:setText("");
    obj.checkBox14:setLeft(543);
    obj.checkBox14:setTop(351);
    obj.checkBox14:setName("checkBox14");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout1);
    obj.label14:setText("0");
    obj.label14:setField("resistencia_sabedoria");
    obj.label14:setLeft(557);
    obj.label14:setTop(349);
    obj.label14:setWidth(30);
    obj.label14:setHeight(20);
    obj.label14:setFontFamily("Segoe UI");
    obj.label14:setFontSize(16);
    obj.label14:setFontColor("black");
    lfm_setPropAsString(obj.label14, "fontStyle",  "bold");
    obj.label14:setHorzTextAlign("center");
    obj.label14:setName("label14");

    obj.checkBox15 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox15:setParent(obj.layout1);
    obj.checkBox15:setField("checkbox_pericia_adestrar_animais");
    obj.checkBox15:setText("");
    obj.checkBox15:setLeft(543);
    obj.checkBox15:setTop(369);
    obj.checkBox15:setName("checkBox15");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout1);
    obj.label15:setText("0");
    obj.label15:setField("pericia_adestrar_animais");
    obj.label15:setLeft(557);
    obj.label15:setTop(367);
    obj.label15:setWidth(30);
    obj.label15:setHeight(20);
    obj.label15:setFontFamily("Segoe UI");
    obj.label15:setFontSize(16);
    obj.label15:setFontColor("black");
    lfm_setPropAsString(obj.label15, "fontStyle",  "bold");
    obj.label15:setHorzTextAlign("center");
    obj.label15:setName("label15");

    obj.checkBox16 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox16:setParent(obj.layout1);
    obj.checkBox16:setField("checkbox_pericia_intuicao");
    obj.checkBox16:setText("");
    obj.checkBox16:setLeft(543);
    obj.checkBox16:setTop(387);
    obj.checkBox16:setName("checkBox16");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout1);
    obj.label16:setText("0");
    obj.label16:setField("pericia_intuicao");
    obj.label16:setLeft(557);
    obj.label16:setTop(385);
    obj.label16:setWidth(30);
    obj.label16:setHeight(20);
    obj.label16:setFontFamily("Segoe UI");
    obj.label16:setFontSize(16);
    obj.label16:setFontColor("black");
    lfm_setPropAsString(obj.label16, "fontStyle",  "bold");
    obj.label16:setHorzTextAlign("center");
    obj.label16:setName("label16");

    obj.checkBox17 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox17:setParent(obj.layout1);
    obj.checkBox17:setField("checkbox_pericia_medicina");
    obj.checkBox17:setText("");
    obj.checkBox17:setLeft(543);
    obj.checkBox17:setTop(405);
    obj.checkBox17:setName("checkBox17");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout1);
    obj.label17:setText("0");
    obj.label17:setField("pericia_medicina");
    obj.label17:setLeft(557);
    obj.label17:setTop(403);
    obj.label17:setWidth(30);
    obj.label17:setHeight(20);
    obj.label17:setFontFamily("Segoe UI");
    obj.label17:setFontSize(16);
    obj.label17:setFontColor("black");
    lfm_setPropAsString(obj.label17, "fontStyle",  "bold");
    obj.label17:setHorzTextAlign("center");
    obj.label17:setName("label17");

    obj.checkBox18 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox18:setParent(obj.layout1);
    obj.checkBox18:setField("checkbox_pericia_percepcao");
    obj.checkBox18:setText("");
    obj.checkBox18:setLeft(543);
    obj.checkBox18:setTop(423);
    obj.checkBox18:setName("checkBox18");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout1);
    obj.label18:setText("0");
    obj.label18:setField("pericia_percepcao");
    obj.label18:setLeft(557);
    obj.label18:setTop(421);
    obj.label18:setWidth(30);
    obj.label18:setHeight(20);
    obj.label18:setFontFamily("Segoe UI");
    obj.label18:setFontSize(16);
    obj.label18:setFontColor("black");
    lfm_setPropAsString(obj.label18, "fontStyle",  "bold");
    obj.label18:setHorzTextAlign("center");
    obj.label18:setName("label18");

    obj.checkBox19 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox19:setParent(obj.layout1);
    obj.checkBox19:setField("checkbox_pericia_sobrevivencia");
    obj.checkBox19:setText("");
    obj.checkBox19:setLeft(543);
    obj.checkBox19:setTop(441);
    obj.checkBox19:setName("checkBox19");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout1);
    obj.label19:setText("0");
    obj.label19:setField("pericia_sobrevivencia");
    obj.label19:setLeft(557);
    obj.label19:setTop(439);
    obj.label19:setWidth(30);
    obj.label19:setHeight(20);
    obj.label19:setFontFamily("Segoe UI");
    obj.label19:setFontSize(16);
    obj.label19:setFontColor("black");
    lfm_setPropAsString(obj.label19, "fontStyle",  "bold");
    obj.label19:setHorzTextAlign("center");
    obj.label19:setName("label19");

    obj.checkBox20 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox20:setParent(obj.layout1);
    obj.checkBox20:setField("checkbox_resistencia_carisma");
    obj.checkBox20:setText("");
    obj.checkBox20:setLeft(543);
    obj.checkBox20:setTop(494);
    obj.checkBox20:setName("checkBox20");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout1);
    obj.label20:setText("0");
    obj.label20:setField("resistencia_carisma");
    obj.label20:setLeft(557);
    obj.label20:setTop(492);
    obj.label20:setWidth(30);
    obj.label20:setHeight(20);
    obj.label20:setFontFamily("Segoe UI");
    obj.label20:setFontSize(16);
    obj.label20:setFontColor("black");
    lfm_setPropAsString(obj.label20, "fontStyle",  "bold");
    obj.label20:setHorzTextAlign("center");
    obj.label20:setName("label20");

    obj.checkBox21 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox21:setParent(obj.layout1);
    obj.checkBox21:setField("checkbox_pericia_atuacao");
    obj.checkBox21:setText("");
    obj.checkBox21:setLeft(543);
    obj.checkBox21:setTop(512);
    obj.checkBox21:setName("checkBox21");

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.layout1);
    obj.label21:setText("0");
    obj.label21:setField("pericia_atuacao");
    obj.label21:setLeft(557);
    obj.label21:setTop(511);
    obj.label21:setWidth(30);
    obj.label21:setHeight(20);
    obj.label21:setFontFamily("Segoe UI");
    obj.label21:setFontSize(16);
    obj.label21:setFontColor("black");
    lfm_setPropAsString(obj.label21, "fontStyle",  "bold");
    obj.label21:setHorzTextAlign("center");
    obj.label21:setName("label21");

    obj.checkBox22 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox22:setParent(obj.layout1);
    obj.checkBox22:setField("checkbox_pericia_enganacao");
    obj.checkBox22:setText("");
    obj.checkBox22:setLeft(543);
    obj.checkBox22:setTop(530);
    obj.checkBox22:setName("checkBox22");

    obj.label22 = GUI.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.layout1);
    obj.label22:setText("0");
    obj.label22:setField("pericia_enganacao");
    obj.label22:setLeft(557);
    obj.label22:setTop(528);
    obj.label22:setWidth(30);
    obj.label22:setHeight(20);
    obj.label22:setFontFamily("Segoe UI");
    obj.label22:setFontSize(16);
    obj.label22:setFontColor("black");
    lfm_setPropAsString(obj.label22, "fontStyle",  "bold");
    obj.label22:setHorzTextAlign("center");
    obj.label22:setName("label22");

    obj.checkBox23 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox23:setParent(obj.layout1);
    obj.checkBox23:setField("checkbox_pericia_intimidacao");
    obj.checkBox23:setText("");
    obj.checkBox23:setLeft(543);
    obj.checkBox23:setTop(548);
    obj.checkBox23:setName("checkBox23");

    obj.label23 = GUI.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.layout1);
    obj.label23:setText("0");
    obj.label23:setField("pericia_intimidacao");
    obj.label23:setLeft(557);
    obj.label23:setTop(546);
    obj.label23:setWidth(30);
    obj.label23:setHeight(20);
    obj.label23:setFontFamily("Segoe UI");
    obj.label23:setFontSize(16);
    obj.label23:setFontColor("black");
    lfm_setPropAsString(obj.label23, "fontStyle",  "bold");
    obj.label23:setHorzTextAlign("center");
    obj.label23:setName("label23");

    obj.checkBox24 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox24:setParent(obj.layout1);
    obj.checkBox24:setField("checkbox_pericia_persuasao");
    obj.checkBox24:setText("");
    obj.checkBox24:setLeft(543);
    obj.checkBox24:setTop(566);
    obj.checkBox24:setName("checkBox24");

    obj.label24 = GUI.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.layout1);
    obj.label24:setText("0");
    obj.label24:setField("pericia_persuasao");
    obj.label24:setLeft(557);
    obj.label24:setTop(564);
    obj.label24:setWidth(30);
    obj.label24:setHeight(20);
    obj.label24:setFontFamily("Segoe UI");
    obj.label24:setFontSize(16);
    obj.label24:setFontColor("black");
    lfm_setPropAsString(obj.label24, "fontStyle",  "bold");
    obj.label24:setHorzTextAlign("center");
    obj.label24:setName("label24");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout1);
    obj.edit11:setText("0");
    obj.edit11:setField("atributo_forca");
    obj.edit11:setTop(241);
    obj.edit11:setLeft(32);
    obj.edit11:setFontFamily("Segoe UI");
    obj.edit11:setFontSize(16);
    obj.edit11:setFontColor("black");
    obj.edit11:setType("number");
    obj.edit11:setWidth(57);
    obj.edit11:setKeyboardType("default");
    obj.edit11:setEnterKeyType("default");
    lfm_setPropAsString(obj.edit11, "fontStyle",  "bold");
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setName("edit11");

    obj.label25 = GUI.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.layout1);
    obj.label25:setText("+00");
    obj.label25:setField("modificador_forca");
    obj.label25:setTop(296);
    obj.label25:setLeft(45);
    obj.label25:setFontFamily("Segoe UI");
    obj.label25:setFontSize(16);
    obj.label25:setFontColor("black");
    obj.label25:setWidth(30);
    obj.label25:setHeight(20);
    lfm_setPropAsString(obj.label25, "fontStyle",  "bold");
    obj.label25:setHorzTextAlign("center");
    obj.label25:setName("label25");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.layout1);
    obj.dataLink1:setField("atributo_forca");
    obj.dataLink1:setName("dataLink1");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout1);
    obj.edit12:setText("0");
    obj.edit12:setField("atributo_destreza");
    obj.edit12:setTop(386);
    obj.edit12:setLeft(32);
    obj.edit12:setFontFamily("Segoe UI");
    obj.edit12:setFontSize(16);
    obj.edit12:setFontColor("black");
    obj.edit12:setType("number");
    obj.edit12:setWidth(57);
    obj.edit12:setKeyboardType("default");
    obj.edit12:setEnterKeyType("default");
    lfm_setPropAsString(obj.edit12, "fontStyle",  "bold");
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setName("edit12");

    obj.label26 = GUI.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.layout1);
    obj.label26:setText("+00");
    obj.label26:setField("modificador_destreza");
    obj.label26:setTop(440);
    obj.label26:setLeft(45);
    obj.label26:setFontFamily("Segoe UI");
    obj.label26:setFontSize(16);
    obj.label26:setFontColor("black");
    obj.label26:setWidth(30);
    obj.label26:setHeight(20);
    lfm_setPropAsString(obj.label26, "fontStyle",  "bold");
    obj.label26:setHorzTextAlign("center");
    obj.label26:setName("label26");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.layout1);
    obj.dataLink2:setField("atributo_destreza");
    obj.dataLink2:setName("dataLink2");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout1);
    obj.edit13:setText("0");
    obj.edit13:setField("atributo_constituicao");
    obj.edit13:setTop(531);
    obj.edit13:setLeft(32);
    obj.edit13:setFontFamily("Segoe UI");
    obj.edit13:setFontSize(16);
    obj.edit13:setFontColor("black");
    obj.edit13:setType("number");
    obj.edit13:setWidth(57);
    obj.edit13:setKeyboardType("default");
    obj.edit13:setEnterKeyType("default");
    lfm_setPropAsString(obj.edit13, "fontStyle",  "bold");
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setName("edit13");

    obj.label27 = GUI.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.layout1);
    obj.label27:setText("+00");
    obj.label27:setField("modificador_constituicao");
    obj.label27:setTop(584);
    obj.label27:setLeft(45);
    obj.label27:setFontFamily("Segoe UI");
    obj.label27:setFontSize(16);
    obj.label27:setFontColor("black");
    obj.label27:setWidth(30);
    obj.label27:setHeight(20);
    lfm_setPropAsString(obj.label27, "fontStyle",  "bold");
    obj.label27:setHorzTextAlign("center");
    obj.label27:setName("label27");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.layout1);
    obj.dataLink3:setField("atributo_constituicao");
    obj.dataLink3:setName("dataLink3");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout1);
    obj.edit14:setText("0");
    obj.edit14:setField("atributo_inteligencia");
    obj.edit14:setTop(241);
    obj.edit14:setLeft(450);
    obj.edit14:setFontFamily("Segoe UI");
    obj.edit14:setFontSize(16);
    obj.edit14:setFontColor("black");
    obj.edit14:setType("number");
    obj.edit14:setWidth(57);
    obj.edit14:setKeyboardType("default");
    obj.edit14:setEnterKeyType("default");
    lfm_setPropAsString(obj.edit14, "fontStyle",  "bold");
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setName("edit14");

    obj.label28 = GUI.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.layout1);
    obj.label28:setText("+00");
    obj.label28:setField("modificador_inteligencia");
    obj.label28:setTop(296);
    obj.label28:setLeft(462);
    obj.label28:setFontFamily("Segoe UI");
    obj.label28:setFontSize(16);
    obj.label28:setFontColor("black");
    obj.label28:setWidth(30);
    obj.label28:setHeight(20);
    lfm_setPropAsString(obj.label28, "fontStyle",  "bold");
    obj.label28:setHorzTextAlign("center");
    obj.label28:setName("label28");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.layout1);
    obj.dataLink4:setField("atributo_inteligencia");
    obj.dataLink4:setName("dataLink4");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout1);
    obj.edit15:setText("0");
    obj.edit15:setField("atributo_sabedoria");
    obj.edit15:setTop(386);
    obj.edit15:setLeft(450);
    obj.edit15:setFontFamily("Segoe UI");
    obj.edit15:setFontSize(16);
    obj.edit15:setFontColor("black");
    obj.edit15:setType("number");
    obj.edit15:setWidth(57);
    obj.edit15:setKeyboardType("default");
    obj.edit15:setEnterKeyType("default");
    lfm_setPropAsString(obj.edit15, "fontStyle",  "bold");
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setName("edit15");

    obj.label29 = GUI.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.layout1);
    obj.label29:setText("+00");
    obj.label29:setField("modificador_sabedoria");
    obj.label29:setTop(440);
    obj.label29:setLeft(462);
    obj.label29:setFontFamily("Segoe UI");
    obj.label29:setFontSize(16);
    obj.label29:setFontColor("black");
    obj.label29:setWidth(30);
    obj.label29:setHeight(20);
    lfm_setPropAsString(obj.label29, "fontStyle",  "bold");
    obj.label29:setHorzTextAlign("center");
    obj.label29:setName("label29");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.layout1);
    obj.dataLink5:setField("atributo_sabedoria");
    obj.dataLink5:setName("dataLink5");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout1);
    obj.edit16:setText("0");
    obj.edit16:setField("atributo_carisma");
    obj.edit16:setTop(531);
    obj.edit16:setLeft(450);
    obj.edit16:setFontFamily("Segoe UI");
    obj.edit16:setFontSize(16);
    obj.edit16:setFontColor("black");
    obj.edit16:setType("number");
    obj.edit16:setWidth(57);
    obj.edit16:setKeyboardType("default");
    obj.edit16:setEnterKeyType("default");
    lfm_setPropAsString(obj.edit16, "fontStyle",  "bold");
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setName("edit16");

    obj.label30 = GUI.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.layout1);
    obj.label30:setText("+00");
    obj.label30:setField("modificador_carisma");
    obj.label30:setTop(584);
    obj.label30:setLeft(462);
    obj.label30:setFontFamily("Segoe UI");
    obj.label30:setFontSize(16);
    obj.label30:setFontColor("black");
    obj.label30:setWidth(30);
    obj.label30:setHeight(20);
    lfm_setPropAsString(obj.label30, "fontStyle",  "bold");
    obj.label30:setHorzTextAlign("center");
    obj.label30:setName("label30");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.layout1);
    obj.dataLink6:setField("atributo_carisma");
    obj.dataLink6:setName("dataLink6");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.layout1);
    obj.dataLink7:setFields({'modificador_forca', 'bonus_proficiencia', 'checkbox_resistencia_forca', 'checkbox_pericia_atletismo'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.layout1);
    obj.dataLink8:setFields({'modificador_destreza', 'bonus_proficiencia', 'checkbox_resistencia_destreza', 'checkbox_pericia_acrobacia', 'checkbox_pericia_furtividade', 'checkbox_pericia_prestidigitacao'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.layout1);
    obj.dataLink9:setFields({'modificador_constituicao', 'bonus_proficiencia', 'checkbox_resistencia_constituicao'});
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj.layout1);
    obj.dataLink10:setFields({'modificador_inteligencia', 'bonus_proficiencia', 'checkbox_resistencia_inteligencia', 'checkbox_pericia_arcanismo', 'checkbox_pericia_historia', 'checkbox_pericia_investigacao', 'checkbox_pericia_natureza', 'checkbox_pericia_religiao'});
    obj.dataLink10:setName("dataLink10");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj.layout1);
    obj.dataLink11:setFields({'modificador_sabedoria', 'bonus_proficiencia', 'checkbox_resistencia_sabedoria', 'checkbox_pericia_adestrar_animais', 'checkbox_pericia_intuicao', 'checkbox_pericia_medicina', 'checkbox_pericia_percepcao', 'checkbox_pericia_sobrevivencia'});
    obj.dataLink11:setName("dataLink11");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj.layout1);
    obj.dataLink12:setFields({'modificador_carisma', 'bonus_proficiencia', 'checkbox_resistencia_carisma', 'checkbox_pericia_atuacao', 'checkbox_pericia_enganacao', 'checkbox_pericia_intimidacao', 'checkbox_pericia_persuasao'});
    obj.dataLink12:setName("dataLink12");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout1);
    obj.button1:setName("button1");

    obj.tab2 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab2:setParent(obj.tabControl1);
    obj.tab2:setTitle("Batalha Física");
    obj.tab2:setName("tab2");

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.tab2);
    obj.button2:setLeft(20);
    obj.button2:setTop(20);
    obj.button2:setHeight(25);
    obj.button2:setText("Nova Arma");
    obj.button2:setWidth(160);
    obj.button2:setName("button2");

    obj.rclArmas = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclArmas:setParent(obj.tab2);
    obj.rclArmas:setName("rclArmas");
    obj.rclArmas:setField("armas");
    obj.rclArmas:setTemplateForm("frmBatalhaFisica");
    obj.rclArmas:setLeft(20);
    obj.rclArmas:setTop(60);
    obj.rclArmas:setWidth(1280);
    obj.rclArmas:setAutoHeight(true);

    obj.tab3 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab3:setParent(obj.tabControl1);
    obj.tab3:setTitle("Magias");
    obj.tab3:setName("tab3");

    obj.tabControl2 = GUI.fromHandle(_obj_newObject("tabControl"));
    obj.tabControl2:setParent(obj.tab3);
    obj.tabControl2:setLeft(10);
    obj.tabControl2:setTop(50);
    obj.tabControl2:setWidth(1238);
    obj.tabControl2:setHeight(600);
    obj.tabControl2:setName("tabControl2");

    obj.tab4 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab4:setParent(obj.tabControl2);
    obj.tab4:setTitle("Truques");
    obj.tab4:setName("tab4");

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj.tab4);
    obj.scrollBox1:setLeft(10);
    obj.scrollBox1:setTop(10);
    obj.scrollBox1:setWidth(1238);
    obj.scrollBox1:setHeight(575);
    obj.scrollBox1:setName("scrollBox1");

    obj.button3 = GUI.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.scrollBox1);
    obj.button3:setLeft(20);
    obj.button3:setTop(20);
    obj.button3:setHeight(25);
    obj.button3:setText("Nova Magia");
    obj.button3:setWidth(80);
    obj.button3:setName("button3");

    obj.rclMagias_Nivel_0 = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclMagias_Nivel_0:setParent(obj.scrollBox1);
    obj.rclMagias_Nivel_0:setName("rclMagias_Nivel_0");
    obj.rclMagias_Nivel_0:setField("magias_nivel_0");
    obj.rclMagias_Nivel_0:setTemplateForm("frmMagias_Nivel_0");
    obj.rclMagias_Nivel_0:setLeft(20);
    obj.rclMagias_Nivel_0:setTop(60);
    obj.rclMagias_Nivel_0:setWidth(1280);
    obj.rclMagias_Nivel_0:setAutoHeight(true);

    obj.tab5 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab5:setParent(obj.tabControl2);
    obj.tab5:setTitle("Nível 1");
    obj.tab5:setName("tab5");

    obj.button4 = GUI.fromHandle(_obj_newObject("button"));
    obj.button4:setParent(obj.tab5);
    obj.button4:setLeft(20);
    obj.button4:setTop(20);
    obj.button4:setHeight(25);
    obj.button4:setText("Nova Magia");
    obj.button4:setWidth(80);
    obj.button4:setName("button4");

    obj.rclMagias_Nivel_1 = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclMagias_Nivel_1:setParent(obj.tab5);
    obj.rclMagias_Nivel_1:setName("rclMagias_Nivel_1");
    obj.rclMagias_Nivel_1:setField("magias_nivel_1");
    obj.rclMagias_Nivel_1:setTemplateForm("frmMagias_Nivel_1");
    obj.rclMagias_Nivel_1:setLeft(20);
    obj.rclMagias_Nivel_1:setTop(60);
    obj.rclMagias_Nivel_1:setWidth(1280);
    obj.rclMagias_Nivel_1:setAutoHeight(true);

    obj.tab6 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab6:setParent(obj.tabControl2);
    obj.tab6:setTitle("Nível 2");
    obj.tab6:setName("tab6");

    obj.button5 = GUI.fromHandle(_obj_newObject("button"));
    obj.button5:setParent(obj.tab6);
    obj.button5:setLeft(20);
    obj.button5:setTop(20);
    obj.button5:setHeight(25);
    obj.button5:setText("Nova Magia");
    obj.button5:setWidth(80);
    obj.button5:setName("button5");

    obj.rclMagias_Nivel_2 = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclMagias_Nivel_2:setParent(obj.tab6);
    obj.rclMagias_Nivel_2:setName("rclMagias_Nivel_2");
    obj.rclMagias_Nivel_2:setField("magias_nivel_2");
    obj.rclMagias_Nivel_2:setTemplateForm("frmMagias_Nivel_2");
    obj.rclMagias_Nivel_2:setLeft(20);
    obj.rclMagias_Nivel_2:setTop(60);
    obj.rclMagias_Nivel_2:setWidth(1280);
    obj.rclMagias_Nivel_2:setAutoHeight(true);

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local mod = math.floor(((sheet.atributo_forca or 10) / 2) - 5);
            							if (mod >= 0) then
                                            mod = "+" .. mod;
            							end;                    
                                    sheet.modificador_forca = mod;
        end, obj);

    obj._e_event1 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local mod = math.floor(((sheet.atributo_destreza or 10) / 2) - 5);
            							if (mod >= 0) then
                                            mod = "+" .. mod;
            							end;                    
                                    sheet.modificador_destreza = mod;
        end, obj);

    obj._e_event2 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local mod = math.floor(((sheet.atributo_constituicao or 10) / 2) - 5);
            							if (mod >= 0) then
                                            mod = "+" .. mod;
            							end;                    
                                    sheet.modificador_constituicao = mod;
        end, obj);

    obj._e_event3 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local mod = math.floor(((sheet.atributo_inteligencia or 10) / 2) - 5);
            							if (mod >= 0) then
                                            mod = "+" .. mod;
            							end;                    
                                    sheet.modificador_inteligencia = mod;
        end, obj);

    obj._e_event4 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local mod = math.floor(((sheet.atributo_sabedoria or 10) / 2) - 5);
            							if (mod >= 0) then
                                            mod = "+" .. mod;
            							end;                    
                                    sheet.modificador_sabedoria = mod;
        end, obj);

    obj._e_event5 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            local mod = math.floor(((sheet.atributo_carisma or 10) / 2) - 5);
            							if (mod >= 0) then
                                            mod = "+" .. mod;
            							end;                    
                                    sheet.modificador_carisma = mod;
        end, obj);

    obj._e_event6 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.checkbox_resistencia_forca == true then
            								sheet.resistencia_forca = (tonumber(sheet.modificador_forca) or 0) +
            														  (tonumber(sheet.bonus_proficiencia) or 0);
            							else
            								sheet.resistencia_forca = (tonumber(sheet.modificador_forca) or 0);
            							end;
            							
            							if sheet.checkbox_pericia_atletismo == true then
            								sheet.pericia_atletismo = (tonumber(sheet.modificador_forca) or 0) +
            														  (tonumber(sheet.bonus_proficiencia) or 0);
            							else
            								sheet.pericia_atletismo = (tonumber(sheet.modificador_forca) or 0);
            							end;
        end, obj);

    obj._e_event7 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.checkbox_resistencia_destreza == true then
            								sheet.resistencia_destreza = (tonumber(sheet.modificador_destreza) or 0) +
            														  (tonumber(sheet.bonus_proficiencia) or 0);
            							else
            								sheet.resistencia_destreza = (tonumber(sheet.modificador_destreza) or 0);
            							end;
            							
            							if sheet.checkbox_pericia_acrobacia == true then
            								sheet.pericia_acrobacia = (tonumber(sheet.modificador_destreza) or 0) +
            														  (tonumber(sheet.bonus_proficiencia) or 0);
            							else
            								sheet.pericia_acrobacia = (tonumber(sheet.modificador_destreza) or 0);
            							end;
            							
            							if sheet.checkbox_pericia_furtividade == true then
            								sheet.pericia_furtividade = (tonumber(sheet.modificador_destreza) or 0) +
            														  (tonumber(sheet.bonus_proficiencia) or 0);
            							else
            								sheet.pericia_furtividade = (tonumber(sheet.modificador_destreza) or 0);
            							end;
            							
            							if sheet.checkbox_pericia_prestidigitacao == true then
            								sheet.pericia_prestidigitacao = (tonumber(sheet.modificador_destreza) or 0) +
            														  (tonumber(sheet.bonus_proficiencia) or 0);
            							else
            								sheet.pericia_prestidigitacao = (tonumber(sheet.modificador_destreza) or 0);
            							end;
        end, obj);

    obj._e_event8 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.checkbox_resistencia_constituicao == true then
            								sheet.resistencia_constituicao = (tonumber(sheet.modificador_constituicao) or 0) +
            														  (tonumber(sheet.bonus_proficiencia) or 0);
            							else
            								sheet.resistencia_constituicao = (tonumber(sheet.modificador_constituicao) or 0);
            							end;
        end, obj);

    obj._e_event9 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.checkbox_resistencia_inteligencia == true then
            								sheet.resistencia_inteligencia = (tonumber(sheet.modificador_inteligencia) or 0) +
            														  (tonumber(sheet.bonus_proficiencia) or 0);
            							else
            								sheet.resistencia_inteligencia = (tonumber(sheet.modificador_inteligencia) or 0);
            							end;	
            
            							if sheet.checkbox_pericia_arcanismo == true then
            								sheet.pericia_arcanismo = (tonumber(sheet.modificador_inteligencia) or 0) +
            														  (tonumber(sheet.bonus_proficiencia) or 0);
            							else
            								sheet.pericia_arcanismo = (tonumber(sheet.modificador_inteligencia) or 0);
            							end;		
            							if sheet.checkbox_pericia_historia == true then
            								sheet.pericia_historia = (tonumber(sheet.modificador_inteligencia) or 0) +
            														  (tonumber(sheet.bonus_proficiencia) or 0);
            							else
            								sheet.pericia_historia = (tonumber(sheet.modificador_inteligencia) or 0);
            							end;	
            							if sheet.checkbox_pericia_investigacao == true then
            								sheet.pericia_investigacao = (tonumber(sheet.modificador_inteligencia) or 0) +
            														  (tonumber(sheet.bonus_proficiencia) or 0);
            							else
            								sheet.pericia_investigacao = (tonumber(sheet.modificador_inteligencia) or 0);
            							end;	
            							if sheet.checkbox_pericia_natureza == true then
            								sheet.pericia_natureza = (tonumber(sheet.modificador_inteligencia) or 0) +
            														  (tonumber(sheet.bonus_proficiencia) or 0);
            							else
            								sheet.pericia_natureza = (tonumber(sheet.modificador_inteligencia) or 0);
            							end;	
            							if sheet.checkbox_pericia_religiao == true then
            								sheet.pericia_religiao = (tonumber(sheet.modificador_inteligencia) or 0) +
            														  (tonumber(sheet.bonus_proficiencia) or 0);
            							else
            								sheet.pericia_religiao = (tonumber(sheet.modificador_inteligencia) or 0);
            							end;
        end, obj);

    obj._e_event10 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.checkbox_resistencia_sabedoria == true then
            								sheet.resistencia_sabedoria = (tonumber(sheet.modificador_sabedoria) or 0) +
            														  (tonumber(sheet.bonus_proficiencia) or 0);
            							else
            								sheet.resistencia_sabedoria = (tonumber(sheet.modificador_sabedoria) or 0);
            							end;	
            							
            							if sheet.checkbox_pericia_adestrar_animais == true then
            								sheet.pericia_adestrar_animais = (tonumber(sheet.modificador_sabedoria) or 0) +
            														  (tonumber(sheet.bonus_proficiencia) or 0);
            							else
            								sheet.pericia_adestrar_animais = (tonumber(sheet.modificador_sabedoria) or 0);
            							end;
            							if sheet.checkbox_pericia_intuicao == true then
            								sheet.pericia_intuicao = (tonumber(sheet.modificador_sabedoria) or 0) +
            														  (tonumber(sheet.bonus_proficiencia) or 0);
            							else
            								sheet.pericia_intuicao = (tonumber(sheet.modificador_sabedoria) or 0);
            							end;
            							if sheet.checkbox_pericia_medicina == true then
            								sheet.pericia_medicina = (tonumber(sheet.modificador_sabedoria) or 0) +
            														  (tonumber(sheet.bonus_proficiencia) or 0);
            							else
            								sheet.pericia_medicina = (tonumber(sheet.modificador_sabedoria) or 0);
            							end;
            							if sheet.checkbox_pericia_percepcao == true then
            								sheet.pericia_percepcao = (tonumber(sheet.modificador_sabedoria) or 0) +
            														  (tonumber(sheet.bonus_proficiencia) or 0);
            							else
            								sheet.pericia_percepcao = (tonumber(sheet.modificador_sabedoria) or 0);
            							end;
            							if sheet.checkbox_pericia_sobrevivencia == true then
            								sheet.pericia_sobrevivencia = (tonumber(sheet.modificador_sabedoria) or 0) +
            														  (tonumber(sheet.bonus_proficiencia) or 0);
            							else
            								sheet.pericia_sobrevivencia = (tonumber(sheet.modificador_sabedoria) or 0);
            							end;
        end, obj);

    obj._e_event11 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.checkbox_resistencia_carisma == true then
            								sheet.resistencia_carisma = (tonumber(sheet.modificador_carisma) or 0) +
            														  (tonumber(sheet.bonus_proficiencia) or 0);
            							else
            								sheet.resistencia_carisma = (tonumber(sheet.modificador_carisma) or 0);
            							end;	
            							if sheet.checkbox_pericia_atuacao == true then
            								sheet.pericia_atuacao = (tonumber(sheet.modificador_carisma) or 0) +
            														  (tonumber(sheet.bonus_proficiencia) or 0);
            							else
            								sheet.pericia_atuacao = (tonumber(sheet.modificador_carisma) or 0);
            							end;		
            							if sheet.checkbox_pericia_enganacao == true then
            								sheet.pericia_enganacao = (tonumber(sheet.modificador_carisma) or 0) +
            														  (tonumber(sheet.bonus_proficiencia) or 0);
            							else
            								sheet.pericia_enganacao = (tonumber(sheet.modificador_carisma) or 0);
            							end;		
            							if sheet.checkbox_pericia_intimidacao == true then
            								sheet.pericia_intimidacao = (tonumber(sheet.modificador_carisma) or 0) +
            														  (tonumber(sheet.bonus_proficiencia) or 0);
            							else
            								sheet.pericia_intimidacao = (tonumber(sheet.modificador_carisma) or 0);
            							end;		
            							if sheet.checkbox_pericia_persuasao == true then
            								sheet.pericia_persuasao = (tonumber(sheet.modificador_carisma) or 0) +
            														  (tonumber(sheet.bonus_proficiencia) or 0);
            							else
            								sheet.pericia_persuasao = (tonumber(sheet.modificador_carisma) or 0);
            							end;
        end, obj);

    obj._e_event12 = obj.button1:addEventListener("onClick",
        function (_)
            local minhaMesa = rrpg.getMesaDe(sheet);
                                    local chat = minhaMesa.chat;              
                                    chat:enviarMensagem("/aaa");
        end, obj);

    obj._e_event13 = obj.button2:addEventListener("onClick",
        function (_)
            self.rclArmas:append();
        end, obj);

    obj._e_event14 = obj.button3:addEventListener("onClick",
        function (_)
            self.rclMagias_Nivel_0:append();
        end, obj);

    obj._e_event15 = obj.button4:addEventListener("onClick",
        function (_)
            self.rclMagias_Nivel_1:append();
        end, obj);

    obj._e_event16 = obj.button5:addEventListener("onClick",
        function (_)
            self.rclMagias_Nivel_2:append();
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event16);
        __o_rrpgObjs.removeEventListenerById(self._e_event15);
        __o_rrpgObjs.removeEventListenerById(self._e_event14);
        __o_rrpgObjs.removeEventListenerById(self._e_event13);
        __o_rrpgObjs.removeEventListenerById(self._e_event12);
        __o_rrpgObjs.removeEventListenerById(self._e_event11);
        __o_rrpgObjs.removeEventListenerById(self._e_event10);
        __o_rrpgObjs.removeEventListenerById(self._e_event9);
        __o_rrpgObjs.removeEventListenerById(self._e_event8);
        __o_rrpgObjs.removeEventListenerById(self._e_event7);
        __o_rrpgObjs.removeEventListenerById(self._e_event6);
        __o_rrpgObjs.removeEventListenerById(self._e_event5);
        __o_rrpgObjs.removeEventListenerById(self._e_event4);
        __o_rrpgObjs.removeEventListenerById(self._e_event3);
        __o_rrpgObjs.removeEventListenerById(self._e_event2);
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.tab6 ~= nil then self.tab6:destroy(); self.tab6 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.tab3 ~= nil then self.tab3:destroy(); self.tab3 = nil; end;
        if self.checkBox15 ~= nil then self.checkBox15:destroy(); self.checkBox15 = nil; end;
        if self.checkBox18 ~= nil then self.checkBox18:destroy(); self.checkBox18 = nil; end;
        if self.rclMagias_Nivel_2 ~= nil then self.rclMagias_Nivel_2:destroy(); self.rclMagias_Nivel_2 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.checkBox11 ~= nil then self.checkBox11:destroy(); self.checkBox11 = nil; end;
        if self.checkBox6 ~= nil then self.checkBox6:destroy(); self.checkBox6 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.checkBox8 ~= nil then self.checkBox8:destroy(); self.checkBox8 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.checkBox7 ~= nil then self.checkBox7:destroy(); self.checkBox7 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.tab2 ~= nil then self.tab2:destroy(); self.tab2 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.tabControl2 ~= nil then self.tabControl2:destroy(); self.tabControl2 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.checkBox17 ~= nil then self.checkBox17:destroy(); self.checkBox17 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.checkBox16 ~= nil then self.checkBox16:destroy(); self.checkBox16 = nil; end;
        if self.tab5 ~= nil then self.tab5:destroy(); self.tab5 = nil; end;
        if self.rclMagias_Nivel_1 ~= nil then self.rclMagias_Nivel_1:destroy(); self.rclMagias_Nivel_1 = nil; end;
        if self.checkBox20 ~= nil then self.checkBox20:destroy(); self.checkBox20 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.checkBox9 ~= nil then self.checkBox9:destroy(); self.checkBox9 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.checkBox5 ~= nil then self.checkBox5:destroy(); self.checkBox5 = nil; end;
        if self.rclArmas ~= nil then self.rclArmas:destroy(); self.rclArmas = nil; end;
        if self.tab4 ~= nil then self.tab4:destroy(); self.tab4 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.checkBox14 ~= nil then self.checkBox14:destroy(); self.checkBox14 = nil; end;
        if self.checkBox3 ~= nil then self.checkBox3:destroy(); self.checkBox3 = nil; end;
        if self.checkBox21 ~= nil then self.checkBox21:destroy(); self.checkBox21 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
        if self.checkBox12 ~= nil then self.checkBox12:destroy(); self.checkBox12 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.tabControl1 ~= nil then self.tabControl1:destroy(); self.tabControl1 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.checkBox22 ~= nil then self.checkBox22:destroy(); self.checkBox22 = nil; end;
        if self.checkBox24 ~= nil then self.checkBox24:destroy(); self.checkBox24 = nil; end;
        if self.checkBox2 ~= nil then self.checkBox2:destroy(); self.checkBox2 = nil; end;
        if self.checkBox19 ~= nil then self.checkBox19:destroy(); self.checkBox19 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.checkBox23 ~= nil then self.checkBox23:destroy(); self.checkBox23 = nil; end;
        if self.checkBox13 ~= nil then self.checkBox13:destroy(); self.checkBox13 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.rclMagias_Nivel_0 ~= nil then self.rclMagias_Nivel_0:destroy(); self.rclMagias_Nivel_0 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.checkBox10 ~= nil then self.checkBox10:destroy(); self.checkBox10 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.checkBox4 ~= nil then self.checkBox4:destroy(); self.checkBox4 = nil; end;
        if self.checkBox1 ~= nil then self.checkBox1:destroy(); self.checkBox1 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newFicha_do_Lukao_v1()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_Ficha_do_Lukao_v1();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _Ficha_do_Lukao_v1 = {
    newEditor = newFicha_do_Lukao_v1, 
    new = newFicha_do_Lukao_v1, 
    name = "Ficha_do_Lukao_v1", 
    dataType = "DT012345", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    title = "Ficha_do_Lukao", 
    description=""};

Ficha_do_Lukao_v1 = _Ficha_do_Lukao_v1;
Firecast.registrarForm(_Ficha_do_Lukao_v1);
Firecast.registrarDataType(_Ficha_do_Lukao_v1);

return _Ficha_do_Lukao_v1;
