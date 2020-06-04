require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmMagias_Nivel_0()
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
    obj:setName("frmMagias_Nivel_0");
    obj:setHeight(330);
    obj:setMargins({top=2,bottom=2});

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj);
    obj.rectangle1:setColor("#708090");
    obj.rectangle1:setXradius(10);
    obj.rectangle1:setYradius(10);
    obj.rectangle1:setHeight(310);
    obj.rectangle1:setWidth(1173);
    obj.rectangle1:setMargins({top=5, right=5});
    obj.rectangle1:setName("rectangle1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.rectangle1);
    obj.layout1:setAlign("top");
    obj.layout1:setHeight(30);
    obj.layout1:setMargins({top=5, left=5, right=5});
    obj.layout1:setName("layout1");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout1);
    obj.rectangle2:setColor("white");
    obj.rectangle2:setXradius(10);
    obj.rectangle2:setYradius(10);
    obj.rectangle2:setHeight(30);
    obj.rectangle2:setWidth(1163);
    obj.rectangle2:setMargins({left=5, right=5});
    obj.rectangle2:setName("rectangle2");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.rectangle2);
    obj.label1:setAlign("left");
    obj.label1:setText("Nível da Magia:");
    obj.label1:setWidth(75);
    obj.label1:setHeight(20);
    obj.label1:setMargins({left=15,top=5, bottom=5});
    obj.label1:setFontFamily("Segoe UI");
    obj.label1:setFontSize(10);
    obj.label1:setFontColor("black");
    lfm_setPropAsString(obj.label1, "fontStyle",  "bold");
    obj.label1:setName("label1");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.rectangle2);
    obj.label2:setAlign("left");
    obj.label2:setText("0");
    obj.label2:setWidth(10);
    obj.label2:setHeight(20);
    obj.label2:setMargins({left=1});
    obj.label2:setFontFamily("Segoe UI");
    obj.label2:setFontSize(10);
    obj.label2:setFontColor("black");
    lfm_setPropAsString(obj.label2, "fontStyle",  "bold");
    obj.label2:setHorzTextAlign("center");
    obj.label2:setName("label2");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.rectangle2);
    obj.label3:setAlign("left");
    obj.label3:setText("- Truques");
    obj.label3:setWidth(80);
    obj.label3:setHeight(20);
    obj.label3:setMargins({left=2,top=5, bottom=5, right=15});
    obj.label3:setFontFamily("Segoe UI");
    obj.label3:setFontSize(10);
    obj.label3:setFontColor("black");
    lfm_setPropAsString(obj.label3, "fontStyle",  "bold");
    obj.label3:setName("label3");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.rectangle1);
    obj.layout2:setAlign("top");
    obj.layout2:setHeight(30);
    obj.layout2:setMargins({top=5, left=5, right=5});
    obj.layout2:setName("layout2");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout2);
    obj.rectangle3:setColor("white");
    obj.rectangle3:setXradius(10);
    obj.rectangle3:setYradius(10);
    obj.rectangle3:setHeight(30);
    obj.rectangle3:setWidth(1163);
    obj.rectangle3:setMargins({left=5, right=5});
    obj.rectangle3:setName("rectangle3");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.rectangle3);
    obj.label4:setAlign("left");
    obj.label4:setText("Nome da Magia:");
    obj.label4:setWidth(79);
    obj.label4:setHeight(20);
    obj.label4:setMargins({left=15,top=5, bottom=5});
    obj.label4:setFontFamily("Segoe UI");
    obj.label4:setFontSize(10);
    obj.label4:setFontColor("black");
    lfm_setPropAsString(obj.label4, "fontStyle",  "bold");
    obj.label4:setName("label4");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.rectangle3);
    obj.edit1:setAlign("left");
    obj.edit1:setWidth(250);
    obj.edit1:setHeight(20);
    obj.edit1:setField("Magia_Nome");
    obj.edit1:setMargins({left=2,top=5, bottom=5});
    obj.edit1:setName("edit1");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.rectangle3);
    obj.label5:setAlign("left");
    obj.label5:setText("Tempo Conjuração:");
    obj.label5:setWidth(93);
    obj.label5:setHeight(20);
    obj.label5:setMargins({left=5,top=5, bottom=5});
    obj.label5:setFontFamily("Segoe UI");
    obj.label5:setFontSize(10);
    obj.label5:setFontColor("black");
    lfm_setPropAsString(obj.label5, "fontStyle",  "bold");
    obj.label5:setName("label5");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.rectangle3);
    obj.edit2:setAlign("left");
    obj.edit2:setWidth(100);
    obj.edit2:setHeight(20);
    obj.edit2:setField("Magia_Tempo_Conjuracao");
    obj.edit2:setMargins({left=2,top=5, bottom=5});
    obj.edit2:setName("edit2");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.rectangle3);
    obj.label6:setAlign("left");
    obj.label6:setText("Alcance:");
    obj.label6:setWidth(40);
    obj.label6:setHeight(20);
    obj.label6:setMargins({left=5,top=5, bottom=5});
    obj.label6:setFontFamily("Segoe UI");
    obj.label6:setFontSize(10);
    obj.label6:setFontColor("black");
    lfm_setPropAsString(obj.label6, "fontStyle",  "bold");
    obj.label6:setName("label6");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.rectangle3);
    obj.edit3:setAlign("left");
    obj.edit3:setWidth(75);
    obj.edit3:setHeight(20);
    obj.edit3:setField("Magia_Tempo_Conjuracao");
    obj.edit3:setMargins({left=2,top=5, bottom=5});
    obj.edit3:setName("edit3");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.rectangle3);
    obj.label7:setAlign("left");
    obj.label7:setText("Duração:");
    obj.label7:setWidth(42);
    obj.label7:setHeight(20);
    obj.label7:setMargins({left=5,top=5, bottom=5});
    obj.label7:setFontFamily("Segoe UI");
    obj.label7:setFontSize(10);
    obj.label7:setFontColor("black");
    lfm_setPropAsString(obj.label7, "fontStyle",  "bold");
    obj.label7:setName("label7");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.rectangle3);
    obj.edit4:setAlign("left");
    obj.edit4:setWidth(75);
    obj.edit4:setHeight(20);
    obj.edit4:setField("Magia_Tempo_Conjuracao");
    obj.edit4:setMargins({left=2,top=5, bottom=5});
    obj.edit4:setName("edit4");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.rectangle3);
    obj.label8:setAlign("left");
    obj.label8:setText("Componentes:");
    obj.label8:setWidth(69);
    obj.label8:setHeight(20);
    obj.label8:setMargins({left=5,top=5, bottom=5});
    obj.label8:setFontFamily("Segoe UI");
    obj.label8:setFontSize(10);
    obj.label8:setFontColor("black");
    lfm_setPropAsString(obj.label8, "fontStyle",  "bold");
    obj.label8:setName("label8");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.rectangle3);
    obj.edit5:setAlign("left");
    obj.edit5:setWidth(280);
    obj.edit5:setHeight(20);
    obj.edit5:setField("Magia_Tempo_Conjuracao");
    obj.edit5:setMargins({left=2,top=5, bottom=5, right=15});
    obj.edit5:setName("edit5");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.rectangle1);
    obj.layout3:setAlign("top");
    obj.layout3:setHeight(30);
    obj.layout3:setMargins({top=5, left=5, right=5});
    obj.layout3:setName("layout3");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout3);
    obj.rectangle4:setColor("white");
    obj.rectangle4:setXradius(10);
    obj.rectangle4:setYradius(10);
    obj.rectangle4:setHeight(30);
    obj.rectangle4:setWidth(1163);
    obj.rectangle4:setMargins({left=5, right=5});
    obj.rectangle4:setName("rectangle4");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.rectangle4);
    obj.label9:setAlign("left");
    obj.label9:setText("Escola da Magia:");
    obj.label9:setWidth(79);
    obj.label9:setHeight(20);
    obj.label9:setMargins({left=15,top=5, bottom=5});
    obj.label9:setFontFamily("Segoe UI");
    obj.label9:setFontSize(10);
    obj.label9:setFontColor("black");
    lfm_setPropAsString(obj.label9, "fontStyle",  "bold");
    obj.label9:setName("label9");

    obj.comboBox1 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox1:setParent(obj.rectangle4);
    obj.comboBox1:setAlign("left");
    obj.comboBox1:setWidth(130);
    obj.comboBox1:setHeight(20);
    obj.comboBox1:setField("Magia_Escola");
    obj.comboBox1:setMargins({left=2,top=5, bottom=5});
    obj.comboBox1:setItems({'Abjuração', 'Adivinhação', 'Conjuração', 'Encantamento', 'Evocação', 'Ilusão', 'Necromancia', 'Transmutação'});
    obj.comboBox1:setValues({'Abjuração', 'Adivinhação', 'Conjuração', 'Encantamento', 'Evocação', 'Ilusão', 'Necromancia', 'Transmutação'});
    obj.comboBox1:setValue("Abjuração");
    obj.comboBox1:setName("comboBox1");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.rectangle4);
    obj.label10:setAlign("left");
    obj.label10:setText("Área de Efeito:");
    obj.label10:setWidth(71);
    obj.label10:setHeight(20);
    obj.label10:setMargins({left=5,top=5, bottom=5});
    obj.label10:setFontFamily("Segoe UI");
    obj.label10:setFontSize(10);
    obj.label10:setFontColor("black");
    lfm_setPropAsString(obj.label10, "fontStyle",  "bold");
    obj.label10:setName("label10");

    obj.comboBox2 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox2:setParent(obj.rectangle4);
    obj.comboBox2:setAlign("left");
    obj.comboBox2:setWidth(110);
    obj.comboBox2:setHeight(20);
    obj.comboBox2:setField("Magia_Area_Efeito");
    obj.comboBox2:setMargins({left=2,top=5, bottom=5});
    obj.comboBox2:setItems({'LINHA', 'CONE', 'CUBO', 'ESFERA', 'CILINDRO'});
    obj.comboBox2:setValues({'LINHA', 'CONE', 'CUBO', 'ESFERA', 'CILINDRO'});
    obj.comboBox2:setValue("LINHA");
    obj.comboBox2:setName("comboBox2");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.rectangle4);
    obj.label11:setAlign("left");
    obj.label11:setText("Tipo:");
    obj.label11:setWidth(25);
    obj.label11:setHeight(20);
    obj.label11:setMargins({left=5,top=5, bottom=5});
    obj.label11:setFontFamily("Segoe UI");
    obj.label11:setFontSize(10);
    obj.label11:setFontColor("black");
    lfm_setPropAsString(obj.label11, "fontStyle",  "bold");
    obj.label11:setName("label11");

    obj.comboBox3 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox3:setParent(obj.rectangle4);
    obj.comboBox3:setAlign("left");
    obj.comboBox3:setWidth(110);
    obj.comboBox3:setHeight(20);
    obj.comboBox3:setField("Magia_Dano_Tipo");
    obj.comboBox3:setMargins({left=2,top=5, bottom=5});
    obj.comboBox3:setItems({'Dano', 'Cura', 'Suporte'});
    obj.comboBox3:setValues({'Dano', 'Cura', 'Suporte'});
    obj.comboBox3:setValue("Dano");
    obj.comboBox3:setName("comboBox3");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.rectangle4);
    obj.label12:setAlign("left");
    obj.label12:setText("Livro:");
    obj.label12:setWidth(28);
    obj.label12:setHeight(20);
    obj.label12:setMargins({left=5,top=5, bottom=5});
    obj.label12:setFontFamily("Segoe UI");
    obj.label12:setFontSize(10);
    obj.label12:setFontColor("black");
    lfm_setPropAsString(obj.label12, "fontStyle",  "bold");
    obj.label12:setName("label12");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.rectangle4);
    obj.edit6:setAlign("left");
    obj.edit6:setWidth(277);
    obj.edit6:setHeight(20);
    obj.edit6:setField("Magia_Livro");
    obj.edit6:setMargins({left=2,top=5, bottom=5});
    obj.edit6:setName("edit6");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.rectangle4);
    obj.label13:setAlign("left");
    obj.label13:setText("Pág. do Livro:");
    obj.label13:setWidth(66);
    obj.label13:setHeight(20);
    obj.label13:setMargins({left=5,top=5, bottom=5});
    obj.label13:setFontFamily("Segoe UI");
    obj.label13:setFontSize(10);
    obj.label13:setFontColor("black");
    lfm_setPropAsString(obj.label13, "fontStyle",  "bold");
    obj.label13:setName("label13");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.rectangle4);
    obj.edit7:setAlign("left");
    obj.edit7:setWidth(50);
    obj.edit7:setHeight(20);
    obj.edit7:setField("Magia_Livro_Pagina");
    obj.edit7:setMargins({left=2,top=5, bottom=5, right=15});
    obj.edit7:setName("edit7");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.rectangle1);
    obj.layout4:setAlign("top");
    obj.layout4:setMargins({top=5, left=5, right=5});
    obj.layout4:setName("layout4");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout4);
    obj.label14:setAlign("left");
    obj.label14:setText("Descrição:");
    obj.label14:setWidth(65);
    obj.label14:setHeight(20);
    obj.label14:setMargins({left=15, top=5, bottom=140});
    obj.label14:setFontFamily("Segoe UI");
    obj.label14:setFontSize(10);
    obj.label14:setFontColor("black");
    lfm_setPropAsString(obj.label14, "fontStyle",  "bold");
    obj.label14:setName("label14");

    obj.richEdit1 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit1:setParent(obj.layout4);
    obj.richEdit1:setAlign("client");
    obj.richEdit1:setWidth(1066);
    obj.richEdit1:setHeight(300);
    obj.richEdit1:setField("Magia_Descricao");
    obj.richEdit1:setMargins({left=2, top=5, bottom=5});
    lfm_setPropAsString(obj.richEdit1, "showToolbar",  "false");
    lfm_setPropAsString(obj.richEdit1, "backgroundColor",  "#333333");
    lfm_setPropAsString(obj.richEdit1, "defaultFontColor",  "white");
    obj.richEdit1:setName("richEdit1");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.rectangle1);
    obj.layout5:setAlign("top");
    obj.layout5:setHeight(30);
    obj.layout5:setMargins({top=5, left=5, right=5});
    obj.layout5:setName("layout5");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout5);
    obj.rectangle5:setColor("white");
    obj.rectangle5:setXradius(10);
    obj.rectangle5:setYradius(10);
    obj.rectangle5:setHeight(30);
    obj.rectangle5:setWidth(1163);
    obj.rectangle5:setMargins({left=5, right=5});
    obj.rectangle5:setName("rectangle5");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.rectangle5);
    obj.button1:setAlign("right");
    obj.button1:setText("X");
    obj.button1:setWidth(300);
    obj.button1:setHeight(20);
    obj.button1:setLeft(100);
    obj.button1:setTop(20);
    obj.button1:setMargins({right=5,top=5, bottom=5});
    obj.button1:setName("button1");

    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (_)
            Dialogs.confirmOkCancel("Tem certeza que quer apagar esse objeto?",
            						function (confirmado)
            							if confirmado then
            								NDB.deleteNode(sheet);
            							end;
            						end);
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.richEdit1 ~= nil then self.richEdit1:destroy(); self.richEdit1 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.comboBox3 ~= nil then self.comboBox3:destroy(); self.comboBox3 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.comboBox1 ~= nil then self.comboBox1:destroy(); self.comboBox1 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.comboBox2 ~= nil then self.comboBox2:destroy(); self.comboBox2 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmMagias_Nivel_0()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmMagias_Nivel_0();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmMagias_Nivel_0 = {
    newEditor = newfrmMagias_Nivel_0, 
    new = newfrmMagias_Nivel_0, 
    name = "frmMagias_Nivel_0", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmMagias_Nivel_0 = _frmMagias_Nivel_0;
Firecast.registrarForm(_frmMagias_Nivel_0);

return _frmMagias_Nivel_0;
