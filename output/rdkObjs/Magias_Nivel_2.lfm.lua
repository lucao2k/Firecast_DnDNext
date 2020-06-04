require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmMagias_Nivel_2()
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
    obj:setName("frmMagias_Nivel_2");
    obj:setHeight(150);
    obj:setMargins({top=2,bottom=2});

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj);
    obj.layout1:setAlign("top");
    obj.layout1:setHeight(20);
    obj.layout1:setName("layout1");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout1);
    obj.label1:setAlign("left");
    obj.label1:setText("Nível da Magia:");
    obj.label1:setWidth(33);
    obj.label1:setHeight(20);
    obj.label1:setMargins({left=1});
    obj.label1:setFontFamily("Segoe UI");
    obj.label1:setFontSize(10);
    obj.label1:setFontColor("black");
    lfm_setPropAsString(obj.label1, "fontStyle",  "bold");
    obj.label1:setName("label1");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout1);
    obj.label2:setAlign("left");
    obj.label2:setText("0");
    obj.label2:setWidth(33);
    obj.label2:setHeight(20);
    obj.label2:setMargins({left=1});
    obj.label2:setFontFamily("Segoe UI");
    obj.label2:setFontSize(10);
    obj.label2:setFontColor("black");
    lfm_setPropAsString(obj.label2, "fontStyle",  "bold");
    obj.label2:setName("label2");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout1);
    obj.label3:setAlign("left");
    obj.label3:setText(" - Truques");
    obj.label3:setWidth(33);
    obj.label3:setHeight(20);
    obj.label3:setMargins({left=1});
    obj.label3:setFontFamily("Segoe UI");
    obj.label3:setFontSize(10);
    obj.label3:setFontColor("black");
    lfm_setPropAsString(obj.label3, "fontStyle",  "bold");
    obj.label3:setName("label3");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout1);
    obj.label4:setAlign("left");
    obj.label4:setText("Nome da Magia:");
    obj.label4:setWidth(33);
    obj.label4:setHeight(20);
    obj.label4:setMargins({left=1});
    obj.label4:setFontFamily("Segoe UI");
    obj.label4:setFontSize(10);
    obj.label4:setFontColor("black");
    lfm_setPropAsString(obj.label4, "fontStyle",  "bold");
    obj.label4:setName("label4");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout1);
    obj.edit1:setAlign("left");
    obj.edit1:setWidth(300);
    obj.edit1:setHeight(20);
    obj.edit1:setField("Magia_Nome");
    obj.edit1:setMargins({left=2});
    obj.edit1:setName("edit1");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout1);
    obj.label5:setAlign("left");
    obj.label5:setText("Peso:");
    obj.label5:setWidth(26);
    obj.label5:setHeight(20);
    obj.label5:setMargins({left=5});
    obj.label5:setFontFamily("Segoe UI");
    obj.label5:setFontSize(10);
    obj.label5:setFontColor("black");
    lfm_setPropAsString(obj.label5, "fontStyle",  "bold");
    obj.label5:setName("label5");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout1);
    obj.edit2:setAlign("left");
    obj.edit2:setWidth(50);
    obj.edit2:setHeight(20);
    obj.edit2:setField("Arma_Peso");
    obj.edit2:setMargins({left=2});
    obj.edit2:setName("edit2");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout1);
    obj.label6:setAlign("left");
    obj.label6:setText("Arma Tipo:");
    obj.label6:setWidth(54);
    obj.label6:setHeight(20);
    obj.label6:setMargins({left=5});
    obj.label6:setFontFamily("Segoe UI");
    obj.label6:setFontSize(10);
    obj.label6:setFontColor("black");
    lfm_setPropAsString(obj.label6, "fontStyle",  "bold");
    obj.label6:setName("label6");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout1);
    obj.edit3:setAlign("left");
    obj.edit3:setWidth(100);
    obj.edit3:setHeight(20);
    obj.edit3:setField("Arma_Tipo");
    obj.edit3:setMargins({left=2});
    obj.edit3:setName("edit3");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout1);
    obj.label7:setAlign("left");
    obj.label7:setText("Dano Tipo:");
    obj.label7:setWidth(53);
    obj.label7:setHeight(20);
    obj.label7:setMargins({left=5});
    obj.label7:setFontFamily("Segoe UI");
    obj.label7:setFontSize(10);
    obj.label7:setFontColor("black");
    lfm_setPropAsString(obj.label7, "fontStyle",  "bold");
    obj.label7:setName("label7");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout1);
    obj.edit4:setAlign("left");
    obj.edit4:setWidth(100);
    obj.edit4:setHeight(20);
    obj.edit4:setField("Arma_Dano_Tipo");
    obj.edit4:setMargins({left=2});
    obj.edit4:setName("edit4");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout1);
    obj.label8:setAlign("left");
    obj.label8:setText("Alcance:");
    obj.label8:setWidth(41);
    obj.label8:setHeight(20);
    obj.label8:setMargins({left=5});
    obj.label8:setFontFamily("Segoe UI");
    obj.label8:setFontSize(10);
    obj.label8:setFontColor("black");
    lfm_setPropAsString(obj.label8, "fontStyle",  "bold");
    obj.label8:setName("label8");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout1);
    obj.edit5:setAlign("left");
    obj.edit5:setWidth(50);
    obj.edit5:setField("Arma_Alcance");
    obj.edit5:setMargins({left=2});
    obj.edit5:setName("edit5");

    function obj:_releaseEvents()
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmMagias_Nivel_2()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmMagias_Nivel_2();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmMagias_Nivel_2 = {
    newEditor = newfrmMagias_Nivel_2, 
    new = newfrmMagias_Nivel_2, 
    name = "frmMagias_Nivel_2", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmMagias_Nivel_2 = _frmMagias_Nivel_2;
Firecast.registrarForm(_frmMagias_Nivel_2);

return _frmMagias_Nivel_2;
