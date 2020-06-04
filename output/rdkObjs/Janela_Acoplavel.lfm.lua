require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmMinhaJanelaAcoplavel()
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
    obj:setName("frmMinhaJanelaAcoplavel");
    obj:setFormType("tablesDock");
    obj:setDataType("RRPG.DataTypeUnico.DaMinhaJanelaAcoplavel");
    obj:setTitle("Minha Janela Acoplável");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj);
    obj.label1:setText("Olá Mundo");
    obj.label1:setName("label1");

    function obj:_releaseEvents()
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmMinhaJanelaAcoplavel()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmMinhaJanelaAcoplavel();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmMinhaJanelaAcoplavel = {
    newEditor = newfrmMinhaJanelaAcoplavel, 
    new = newfrmMinhaJanelaAcoplavel, 
    name = "frmMinhaJanelaAcoplavel", 
    dataType = "RRPG.DataTypeUnico.DaMinhaJanelaAcoplavel", 
    formType = "tablesDock", 
    formComponentName = "form", 
    title = "Minha Janela Acoplável", 
    description=""};

frmMinhaJanelaAcoplavel = _frmMinhaJanelaAcoplavel;
Firecast.registrarForm(_frmMinhaJanelaAcoplavel);
Firecast.registrarDataType(_frmMinhaJanelaAcoplavel);
Firecast.registrarSpecialForm(_frmMinhaJanelaAcoplavel);

return _frmMinhaJanelaAcoplavel;
