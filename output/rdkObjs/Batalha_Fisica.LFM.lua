require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmBatalhaFisica()
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
    obj:setName("frmBatalhaFisica");
    obj:setHeight(160);
    obj:setMargins({top=2,bottom=2});

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj);
    obj.rectangle1:setColor("#708090");
    obj.rectangle1:setXradius(10);
    obj.rectangle1:setYradius(10);
    obj.rectangle1:setHeight(155);
    obj.rectangle1:setWidth(1213);
    obj.rectangle1:setMargins({top=5});
    obj.rectangle1:setName("rectangle1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.rectangle1);
    obj.layout1:setAlign("top");
    obj.layout1:setHeight(30);
    obj.layout1:setMargins({top=10, left=15, right=15});
    obj.layout1:setName("layout1");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout1);
    obj.rectangle2:setColor("white");
    obj.rectangle2:setXradius(10);
    obj.rectangle2:setYradius(10);
    obj.rectangle2:setHeight(30);
    obj.rectangle2:setWidth(1183);
    obj.rectangle2:setMargins({left=15, right=15});
    obj.rectangle2:setName("rectangle2");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.rectangle2);
    obj.label1:setAlign("left");
    obj.label1:setText("Nome:");
    obj.label1:setWidth(33);
    obj.label1:setHeight(20);
    obj.label1:setMargins({left=15,top=5, bottom=5});
    obj.label1:setFontFamily("Segoe UI");
    obj.label1:setFontSize(10);
    obj.label1:setFontColor("black");
    lfm_setPropAsString(obj.label1, "fontStyle",  "bold");
    obj.label1:setName("label1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.rectangle2);
    obj.edit1:setAlign("left");
    obj.edit1:setWidth(300);
    obj.edit1:setHeight(20);
    obj.edit1:setField("Arma_Descricao");
    obj.edit1:setMargins({left=2,top=5, bottom=5});
    obj.edit1:setName("edit1");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.rectangle2);
    obj.label2:setAlign("left");
    obj.label2:setText("Peso:");
    obj.label2:setWidth(26);
    obj.label2:setHeight(20);
    obj.label2:setMargins({left=5,top=5, bottom=5});
    obj.label2:setFontFamily("Segoe UI");
    obj.label2:setFontSize(10);
    obj.label2:setFontColor("black");
    lfm_setPropAsString(obj.label2, "fontStyle",  "bold");
    obj.label2:setName("label2");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.rectangle2);
    obj.edit2:setAlign("left");
    obj.edit2:setWidth(50);
    obj.edit2:setHeight(20);
    obj.edit2:setField("Arma_Peso");
    obj.edit2:setMargins({left=2,top=5, bottom=5});
    obj.edit2:setName("edit2");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.rectangle2);
    obj.label3:setAlign("left");
    obj.label3:setText("Arma Tipo:");
    obj.label3:setWidth(54);
    obj.label3:setHeight(20);
    obj.label3:setMargins({left=5,top=5, bottom=5});
    obj.label3:setFontFamily("Segoe UI");
    obj.label3:setFontSize(10);
    obj.label3:setFontColor("black");
    lfm_setPropAsString(obj.label3, "fontStyle",  "bold");
    obj.label3:setName("label3");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.rectangle2);
    obj.edit3:setAlign("left");
    obj.edit3:setWidth(100);
    obj.edit3:setHeight(20);
    obj.edit3:setField("Arma_Tipo");
    obj.edit3:setMargins({left=2,top=5, bottom=5});
    obj.edit3:setName("edit3");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.rectangle2);
    obj.label4:setAlign("left");
    obj.label4:setText("Dano Tipo:");
    obj.label4:setWidth(53);
    obj.label4:setHeight(20);
    obj.label4:setMargins({left=5,top=5, bottom=5});
    obj.label4:setFontFamily("Segoe UI");
    obj.label4:setFontSize(10);
    obj.label4:setFontColor("black");
    lfm_setPropAsString(obj.label4, "fontStyle",  "bold");
    obj.label4:setName("label4");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.rectangle2);
    obj.edit4:setAlign("left");
    obj.edit4:setWidth(100);
    obj.edit4:setHeight(20);
    obj.edit4:setField("Arma_Dano_Tipo");
    obj.edit4:setMargins({left=2,top=5, bottom=5});
    obj.edit4:setName("edit4");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.rectangle2);
    obj.label5:setAlign("left");
    obj.label5:setText("Alcance:");
    obj.label5:setWidth(41);
    obj.label5:setHeight(20);
    obj.label5:setMargins({left=5,top=5, bottom=5});
    obj.label5:setFontFamily("Segoe UI");
    obj.label5:setFontSize(10);
    obj.label5:setFontColor("black");
    lfm_setPropAsString(obj.label5, "fontStyle",  "bold");
    obj.label5:setName("label5");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.rectangle2);
    obj.edit5:setAlign("left");
    obj.edit5:setWidth(50);
    obj.edit5:setField("Arma_Alcance");
    obj.edit5:setMargins({left=2,top=5, bottom=5});
    obj.edit5:setName("edit5");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.rectangle2);
    obj.layout2:setAlign("left");
    obj.layout2:setHeight(20);
    obj.layout2:setWidth(286);
    obj.layout2:setMargins({left=15, right=15});
    obj.layout2:setName("layout2");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout2);
    obj.rectangle3:setAlign("right");
    obj.rectangle3:setColor("#DCDCDC");
    obj.rectangle3:setXradius(10);
    obj.rectangle3:setYradius(10);
    obj.rectangle3:setHeight(20);
    obj.rectangle3:setWidth(286);
    obj.rectangle3:setMargins({top=5, bottom=5});
    obj.rectangle3:setName("rectangle3");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.rectangle3);
    obj.label6:setAlign("left");
    obj.label6:setText("Munição:");
    obj.label6:setWidth(45);
    obj.label6:setHeight(20);
    obj.label6:setMargins({left=15});
    obj.label6:setFontFamily("Segoe UI");
    obj.label6:setFontSize(10);
    obj.label6:setFontColor("black");
    lfm_setPropAsString(obj.label6, "fontStyle",  "bold");
    obj.label6:setName("label6");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.rectangle3);
    obj.edit6:setAlign("left");
    obj.edit6:setWidth(100);
    obj.edit6:setField("Arma_Municao_Tipo");
    obj.edit6:setMargins({left=2, top=2, bottom=2});
    obj.edit6:setName("edit6");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.rectangle3);
    obj.label7:setAlign("left");
    obj.label7:setText("Qtd. Mun.:");
    obj.label7:setWidth(52);
    obj.label7:setHeight(20);
    obj.label7:setMargins({left=5});
    obj.label7:setFontFamily("Segoe UI");
    obj.label7:setFontSize(10);
    obj.label7:setFontColor("black");
    lfm_setPropAsString(obj.label7, "fontStyle",  "bold");
    obj.label7:setName("label7");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.rectangle3);
    obj.edit7:setAlign("left");
    obj.edit7:setWidth(50);
    obj.edit7:setField("Arma_Municao_Qtd");
    obj.edit7:setMargins({left=2, right=15, top=2, bottom=2});
    obj.edit7:setName("edit7");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.rectangle1);
    obj.layout3:setAlign("top");
    obj.layout3:setHeight(30);
    obj.layout3:setMargins({top=5, left=15, right=15});
    obj.layout3:setName("layout3");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout3);
    obj.rectangle4:setColor("white");
    obj.rectangle4:setXradius(10);
    obj.rectangle4:setYradius(10);
    obj.rectangle4:setHeight(30);
    obj.rectangle4:setWidth(1183);
    obj.rectangle4:setMargins({left=15, right=15});
    obj.rectangle4:setName("rectangle4");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.rectangle4);
    obj.label8:setAlign("left");
    obj.label8:setText("Bônus (+):");
    obj.label8:setWidth(49);
    obj.label8:setHeight(20);
    obj.label8:setMargins({left=15,top=5, bottom=5});
    obj.label8:setFontFamily("Segoe UI");
    obj.label8:setFontSize(10);
    obj.label8:setFontColor("black");
    lfm_setPropAsString(obj.label8, "fontStyle",  "bold");
    obj.label8:setName("label8");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.rectangle4);
    obj.edit8:setAlign("left");
    obj.edit8:setWidth(40);
    obj.edit8:setHeight(20);
    obj.edit8:setField("Arma_Bonus_Positivo");
    obj.edit8:setMargins({left=2,top=5, bottom=5});
    obj.edit8:setName("edit8");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.rectangle4);
    obj.label9:setAlign("left");
    obj.label9:setText("Bônus (-):");
    obj.label9:setWidth(47);
    obj.label9:setHeight(20);
    obj.label9:setMargins({left=5,top=5, bottom=5});
    obj.label9:setFontFamily("Segoe UI");
    obj.label9:setFontSize(10);
    obj.label9:setFontColor("black");
    lfm_setPropAsString(obj.label9, "fontStyle",  "bold");
    obj.label9:setName("label9");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.rectangle4);
    obj.edit9:setAlign("left");
    obj.edit9:setWidth(40);
    obj.edit9:setHeight(20);
    obj.edit9:setField("Arma_Bonus_Negativo");
    obj.edit9:setMargins({left=2,top=5, bottom=5});
    obj.edit9:setName("edit9");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.rectangle4);
    obj.label10:setAlign("left");
    obj.label10:setText("Mod. de Dano:");
    obj.label10:setWidth(70);
    obj.label10:setHeight(20);
    obj.label10:setMargins({left=5,top=5, bottom=5});
    obj.label10:setFontFamily("Segoe UI");
    obj.label10:setFontSize(10);
    obj.label10:setFontColor("black");
    lfm_setPropAsString(obj.label10, "fontStyle",  "bold");
    obj.label10:setName("label10");

    obj.comboBox1 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox1:setParent(obj.rectangle4);
    obj.comboBox1:setAlign("left");
    obj.comboBox1:setWidth(67);
    obj.comboBox1:setHeight(20);
    obj.comboBox1:setField("Arma_Mod_Dano");
    obj.comboBox1:setMargins({left=2,top=5, bottom=5});
    obj.comboBox1:setItems({'FOR', 'DES', 'CON', 'INT', 'SAB', 'CAR'});
    obj.comboBox1:setValues({'FOR', 'DES', 'CON', 'INT', 'SAB', 'CAR'});
    obj.comboBox1:setValue("FOR");
    obj.comboBox1:setName("comboBox1");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.rectangle4);
    obj.label11:setAlign("left");
    obj.label11:setText("Propriedades:");
    obj.label11:setWidth(67);
    obj.label11:setHeight(20);
    obj.label11:setMargins({left=5,top=5, bottom=5});
    obj.label11:setFontFamily("Segoe UI");
    obj.label11:setFontSize(10);
    obj.label11:setFontColor("black");
    lfm_setPropAsString(obj.label11, "fontStyle",  "bold");
    obj.label11:setName("label11");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.rectangle4);
    obj.edit10:setAlign("left");
    obj.edit10:setWidth(750);
    obj.edit10:setField("Arma_Propriedades");
    obj.edit10:setMargins({left=2,top=5, bottom=5, right=15});
    obj.edit10:setName("edit10");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.rectangle1);
    obj.layout4:setAlign("top");
    obj.layout4:setHeight(30);
    obj.layout4:setMargins({top=5, left=15, right=15});
    obj.layout4:setName("layout4");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout4);
    obj.rectangle5:setColor("white");
    obj.rectangle5:setXradius(10);
    obj.rectangle5:setYradius(10);
    obj.rectangle5:setHeight(30);
    obj.rectangle5:setWidth(1183);
    obj.rectangle5:setMargins({left=15, right=15, top=5});
    obj.rectangle5:setName("rectangle5");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.rectangle5);
    obj.label12:setAlign("left");
    obj.label12:setText("Dano:");
    obj.label12:setWidth(29);
    obj.label12:setHeight(20);
    obj.label12:setMargins({left=15, top=5, bottom=5});
    obj.label12:setFontFamily("Segoe UI");
    obj.label12:setFontSize(10);
    obj.label12:setFontColor("black");
    lfm_setPropAsString(obj.label12, "fontStyle",  "bold");
    obj.label12:setName("label12");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.rectangle5);
    obj.edit11:setAlign("left");
    obj.edit11:setWidth(25);
    obj.edit11:setHeight(20);
    obj.edit11:setField("Arma_Dano_Dado_Qtd");
    obj.edit11:setMargins({left=2,top=5, bottom=5});
    obj.edit11:setName("edit11");

    obj.comboBox2 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox2:setParent(obj.rectangle5);
    obj.comboBox2:setAlign("left");
    obj.comboBox2:setWidth(80);
    obj.comboBox2:setHeight(20);
    obj.comboBox2:setField("Arma_Dano_Dado");
    obj.comboBox2:setMargins({left=2,top=5, bottom=5});
    obj.comboBox2:setItems({'D4', 'D6', 'D8', 'D10', 'D12', 'D20'});
    obj.comboBox2:setValues({'D4', 'D6', 'D8', 'D10', 'D12', 'D20'});
    obj.comboBox2:setValue("D6");
    obj.comboBox2:setName("comboBox2");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.rectangle5);
    obj.label13:setAlign("left");
    obj.label13:setText("Margem do Crítico:");
    obj.label13:setWidth(93);
    obj.label13:setHeight(20);
    obj.label13:setMargins({left=5,top=5, bottom=5});
    obj.label13:setFontFamily("Segoe UI");
    obj.label13:setFontSize(10);
    obj.label13:setFontColor("black");
    lfm_setPropAsString(obj.label13, "fontStyle",  "bold");
    obj.label13:setName("label13");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.rectangle5);
    obj.edit12:setAlign("left");
    obj.edit12:setWidth(25);
    obj.edit12:setHeight(20);
    obj.edit12:setField("Arma_Critico_Margem");
    obj.edit12:setMargins({left=2,top=5, bottom=5});
    obj.edit12:setName("edit12");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.rectangle5);
    obj.label14:setAlign("left");
    obj.label14:setText("Multiplicador:");
    obj.label14:setWidth(67);
    obj.label14:setHeight(20);
    obj.label14:setMargins({left=5,top=5, bottom=5});
    obj.label14:setFontFamily("Segoe UI");
    obj.label14:setFontSize(10);
    obj.label14:setFontColor("black");
    lfm_setPropAsString(obj.label14, "fontStyle",  "bold");
    obj.label14:setName("label14");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.rectangle5);
    obj.edit13:setAlign("left");
    obj.edit13:setWidth(25);
    obj.edit13:setHeight(20);
    obj.edit13:setField("Arma_Critico_Multiplicador");
    obj.edit13:setMargins({left=2, top=5, bottom=5});
    obj.edit13:setName("edit13");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.rectangle1);
    obj.layout5:setAlign("top");
    obj.layout5:setHeight(30);
    obj.layout5:setMargins({top=5, left=15, right=15});
    obj.layout5:setName("layout5");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout5);
    obj.rectangle6:setColor("white");
    obj.rectangle6:setXradius(10);
    obj.rectangle6:setYradius(10);
    obj.rectangle6:setHeight(30);
    obj.rectangle6:setWidth(1183);
    obj.rectangle6:setMargins({left=15, right=15, top=5});
    obj.rectangle6:setName("rectangle6");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.rectangle6);
    obj.button1:setAlign("right");
    obj.button1:setText("X");
    obj.button1:setWidth(20);
    obj.button1:setMargins({right=15,top=5, bottom=5});
    obj.button1:setName("button1");

    obj.cbxInvisivel = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cbxInvisivel:setParent(obj.rectangle6);
    obj.cbxInvisivel:setName("cbxInvisivel");
    obj.cbxInvisivel:setAlign("left");
    obj.cbxInvisivel:setWidth(30);
    obj.cbxInvisivel:setMargins({left=15,top=5, bottom=5});
    obj.cbxInvisivel:setImageChecked("images/invisivel.png");
    obj.cbxInvisivel:setImageUnchecked("images/visivel.png");
    obj.cbxInvisivel:setAutoChange(false);


						function self:alternarVisibilidade()
							if self.cbxInvisivel.checked then
								ndb.setPermission(sheet, "group", "jogadores", "read", nil);
								ndb.setPermission(sheet, "group", "espectadores", "read", nil);
							else
								ndb.setPermission(sheet, "group", "jogadores", "read", "deny");
								ndb.setPermission(sheet, "group", "espectadores", "read", "deny");
							end;
						end; 

						function self:atualizarCbxInvisivel()          
							self.cbxInvisivel.checked = ndb.getPermission(sheet, "group", "espectadores", "read") == "deny" or ndb.getPermission(sheet, "group", "jogadores", "read") == "deny"                                                                                    
							self.cbxInvisivel.enabled = ndb.testPermission(sheet, "writePermissions");
						end;
					


    obj._e_event0 = obj:addEventListener("onScopeNodeChanged",
        function (_)
            if self.observer ~= nil then   
                            self.observer.enabled = false;
                            self.observer = nil;
                        end;             
            
                        if sheet ~= nil then   
                            self.observer = ndb.newObserver(sheet);
                            self.observer.onPermissionListChanged = function(node)                 
                            self:atualizarCbxInvisivel();
                        end;                               
            
                        self.observer.onFinalPermissionsCouldBeChanged = function(node)
                        self:atualizarCbxInvisivel();
                        end;                               
            
                        self:atualizarCbxInvisivel();  
                        end;
        end, obj);

    obj._e_event1 = obj.button1:addEventListener("onClick",
        function (_)
            Dialogs.confirmOkCancel("Tem certeza que quer apagar esse objeto?",
            							function (confirmado)
            								if confirmado then
            									NDB.deleteNode(sheet);
            								end;
            							end);
        end, obj);

    obj._e_event2 = obj.cbxInvisivel:addEventListener("onClick",
        function (_)
            self:alternarVisibilidade();
        end, obj);

    function obj:_releaseEvents()
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

        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.comboBox1 ~= nil then self.comboBox1:destroy(); self.comboBox1 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.cbxInvisivel ~= nil then self.cbxInvisivel:destroy(); self.cbxInvisivel = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.comboBox2 ~= nil then self.comboBox2:destroy(); self.comboBox2 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmBatalhaFisica()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmBatalhaFisica();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmBatalhaFisica = {
    newEditor = newfrmBatalhaFisica, 
    new = newfrmBatalhaFisica, 
    name = "frmBatalhaFisica", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmBatalhaFisica = _frmBatalhaFisica;
Firecast.registrarForm(_frmBatalhaFisica);

return _frmBatalhaFisica;
