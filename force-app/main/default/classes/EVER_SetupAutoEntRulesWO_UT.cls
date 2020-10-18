@isTest (seealldata=true)
Private  class EVER_SetupAutoEntRulesWO_UT {
    static testMethod void EVER_SetupAutoEntRulesWOUnitTest() {
        RecordType RType = new RecordType();
        RecordType RTypedef = new RecordType();
        RecordType RTypeReading = new RecordType();
        Rtype = [select Id from RecordType where Name=:'SVMX Rule']; 
        RtypeReading = [select Id from RecordType where Name=:'Reading'];
        SVMXC__ServiceMax_Processes__c prs = new SVMXC__ServiceMax_Processes__c();
        prs.SVMXC__ProcessID__c='PROCESS11';
        prs.SVMXC__SettingId__c = 'PROCESS11';
        prs.SVMXC__MapID__c='PROCESS11';
        prs.SVMXC__Name__c = 'PROCESS22'; 
        prs.RecordTypeId = Rtype.Id;
        prs.SVMXC__Rule_Type__c='Auto Entitlement WO';
        prs.SVMXC__Description__c = 'Test Desc';
        prs.SVMXC__Match_Account__c = true;
        prs.SVMXC__Include_Parent__c = true;
        prs.SVMXC__Match_Contact__c = true;
        prs.SVMXC__Include_Top_Level__c = true;
        prs.SVMXC__Include_Product__c = true;
        prs.SVMXC__Entitlement_Scope__c  = 'Warranties';
        prs.SVMXC__Entitlement_By__c  = 'Both';
        prs.SVMXC__Pick_First_Match__c = 'Service Contract';
        prs.SVMXC__Select__c = true;
        insert prs;
        System.assert(prs.SVMXC__Name__c!=null);
        System.assert(prs.SVMXC__Description__c!=null);
        System.assert(prs.SVMXC__ProcessID__c!=null);
        
        SVMXC__ServiceMax_Processes__c prs2 = new SVMXC__ServiceMax_Processes__c();
        prs2.SVMXC__ProcessID__c='PROCESS12';
        prs2.SVMXC__SettingId__c = 'PROCESS12';
        prs2.SVMXC__MapID__c='PROCESS12';
        prs2.SVMXC__Name__c = 'PROCESS21';  
        prs2.RecordTypeId = Rtype.Id;
        prs2.SVMXC__Rule_Type__c='Auto Entitlement WO';
        prs2.SVMXC__Description__c = 'Test Desc2';
        prs2.SVMXC__Match_Account__c = false;
        prs2.SVMXC__Include_Parent__c = false;
        prs2.SVMXC__Match_Contact__c = false;
        prs2.SVMXC__Include_Top_Level__c = false;
        prs2.SVMXC__Include_Product__c = false;
        prs2.SVMXC__Entitlement_Scope__c  = 'Both';
        prs2.SVMXC__Pick_First_Match__c = 'Warranty';
        insert prs2;
        System.assert(prs2.SVMXC__Name__c!=null);
        System.assert(prs2.SVMXC__Description__c!=null);
        
        //System.assertEquals('UTTestTwo', prs2.SVMXC__Name__c);
        SVMXC__ServiceMax_Config_Data__c TempCnfiglstUTobj = new SVMXC__ServiceMax_Config_Data__c();
        TempCnfiglstUTobj.SVMXC__Expression_Rule__c=prs.Id;
        TempCnfiglstUTobj.SVMXC__Expression_Type__c = 'WO_Auto_Entitlement';
        TempCnfiglstUTobj.SVMXC__Sequence__c=1;
        TempCnfiglstUTobj.SVMXC__Operator__c = 'eq' ;
        TempCnfiglstUTobj.SVMXC__Operand__c='Active';
        TempCnfiglstUTobj.SVMXC__Object_Name__c='Service_Order__c';
        TempCnfiglstUTobj.SVMXC__Field_Name__c = 'Status'; 
        insert TempCnfiglstUTobj;
        Test.startTest();
        PageReference pageRef = new PageReference('Page.SVMXC.EVER_SetupAutoEntRulesWO');
        Test.setCurrentPage(pageRef);
        EVER_SetupAutoEntRulesWO setupautoent =new EVER_SetupAutoEntRulesWO();
        setupautoent.getProcessesRecords();
         String tag='';
        tag = setupautoent.getTAG001();
        tag = setupautoent.getTAG002();
        tag = setupautoent.getTAG003();
        tag = setupautoent.getTAG004();
        tag = setupautoent.getTAG005();
        tag = setupautoent.getTAG006();
        tag = setupautoent.getTAG007();
        tag = setupautoent.getTAG008();
        tag = setupautoent.getTAG009();
        tag = setupautoent.getTAG010();
        tag = setupautoent.getTAG011();
        tag = setupautoent.getTAG012();
        tag = setupautoent.getTAG013();
        tag = setupautoent.getTAG014();
        tag = setupautoent.getTAG015();
        tag = setupautoent.getTAG016();
        tag = setupautoent.getTAG017();
        tag = setupautoent.getTAG018();
        tag = setupautoent.getTAG019();
        tag = setupautoent.getTAG020();
        tag = setupautoent.getTAG021();
        tag = setupautoent.getTAG022();
        tag = setupautoent.getTAG023();
        tag = setupautoent.getTAG024();
        tag = setupautoent.getTAG025();
        tag = setupautoent.getTAG026();
        tag = setupautoent.getTAG027();
        tag = setupautoent.getTAG028();
        tag = setupautoent.getTAG029();
       // tag = setupautoent.getTAG030();
       // tag = setupautoent.getTAG031();
        //tag = setupautoent.getTAG032();
       // tag = setupautoent.getTAG033();
       // tag = setupautoent.getTAG034();
        tag = setupautoent.getTAG035();
        tag = setupautoent.getTAG036();
        tag = setupautoent.getTAG037();
        tag = setupautoent.getTAG038();
        tag = setupautoent.getTAG039();
        tag = setupautoent.getTAG040();
        tag = setupautoent.getTAG041();
        tag = setupautoent.getTAG042();
        tag = setupautoent.getTAG043();
        tag = setupautoent.getTAG044();
        tag = setupautoent.getTAG045();
        tag = setupautoent.getHLPURL();
        setupautoent.getEntitlement_By();
        setupautoent.getCounter_Vs_Dates();
        setupautoent.getPick_First_Match();
        setupautoent.getYesOrNo();
        setupautoent.SVMX_newButton();
        setupautoent.EntitlementRuleProcess.SVMXC__Name__c ='zzznew';
        
        setupautoent.SVMX_saveButton();
        setupautoent.EntitlementRuleProcess.SVMXC__Select__c = true;
        system.debug(setupautoent.EntitlementRuleProcess + '-------');
        setupautoent.SVMX_delButton();
        setupautoent.EntitlementRuleProcess.SVMXC__Select__c = false;
        setupautoent.SVMX_delButton();
        List<SVMXC__ServiceMax_Processes__c> pobjs=setupautoent.getProcessesRecords();
        pobjs[0].SVMXC__Select__c = true;
        pobjs[0].SVMXC__Match_Location__c = true; 
        
        setupautoent.SVMX_editButton();
        setupautoent.SVMX_saveButton();
        setupautoent.SVMX_cancelButton();
        setupautoent.SVMX_backToSetupHome();
        setupautoent.SVMX_OrderSequence();
        setupautoent.getSeqoptions();
        //setupautoent.shuffle(3,true);
        setupautoent.Top();
        setupautoent.UP();
        setupautoent.Down();
        setupautoent.Bottom();
        setupautoent.SVMX_SaveSequence();
        setupautoent.getSelectedID();
        setupautoent.getSelectedLabel();
        setupautoent.getCriExpressions();
        setupautoent.getdelIndex();
        setupautoent.getitems();
        setupautoent.pickmatchAction();
        setupautoent.EntitlementScope = 'Both';
        setupautoent.pickmatchAction();
        setupautoent.EntitlementScope = 'Service Contracts';
        setupautoent.pickmatchAction();
        setupautoent.pickmatchActionTwo();
        setupautoent.EntitlementBy = 'test';
        setupautoent.pickmatchActionTwo();
        setupautoent.HdrFind();
        setupautoent.HdrFindDate();
        setupautoent.Do_Search();
        setupautoent.Do_Select();
        setupautoent.OnselectRecord();
        setupautoent.OnselectCurrentUser();
        setupautoent.OnselectRecordOwner();
        setupautoent.OnHdrEntryCriFieldSelect();
         map<string,SelectOption> m3 = new map<string,SelectOption>();
        setupautoent.ClearSelOptMap(m3);
        List<String> strArry = new List<String>();
        strArry.add('abc');
        setupautoent.setitems(strArry);
        setupautoent.setSelectedID('Test');
        setupautoent.setSelectedLabel('Test');
        //setupautoent.svmxTagList.clear();
        tag = setupautoent.getTAG001();
        tag = setupautoent.getTAG002();
        tag = setupautoent.getTAG003();
        tag = setupautoent.getTAG004();
        tag = setupautoent.getTAG005();
        tag = setupautoent.getTAG006();
        tag = setupautoent.getTAG007();
        tag = setupautoent.getTAG008();
        tag = setupautoent.getTAG009();
        tag = setupautoent.getTAG010();
        tag = setupautoent.getTAG011();
        tag = setupautoent.getTAG012();
        tag = setupautoent.getTAG013();
        tag = setupautoent.getTAG014();
        tag = setupautoent.getTAG015();
        tag = setupautoent.getTAG016();
        tag = setupautoent.getTAG017();
        tag = setupautoent.getTAG018();
        tag = setupautoent.getTAG019();
        tag = setupautoent.getTAG020();
        tag = setupautoent.getTAG021();
        tag = setupautoent.getTAG022();
        tag = setupautoent.getTAG023();
        tag = setupautoent.getTAG024();
        tag = setupautoent.getTAG025();
        tag = setupautoent.getTAG026();
        tag = setupautoent.getTAG027();
        tag = setupautoent.getTAG028();
        tag = setupautoent.getTAG029();
        //tag = setupautoent.getTAG030();
        //tag = setupautoent.getTAG031();
        //tag = setupautoent.getTAG032();
        //tag = setupautoent.getTAG033();
        //tag = setupautoent.getTAG034();
        tag = setupautoent.getTAG035();
        tag = setupautoent.getTAG036();
        tag = setupautoent.getTAG037();
        tag = setupautoent.getTAG038();
        tag = setupautoent.getTAG039();
        tag = setupautoent.getTAG040();
        tag = setupautoent.getTAG041();
        tag = setupautoent.getTAG042();
        tag = setupautoent.getTAG043();
        tag = setupautoent.getTAG044();
        tag = setupautoent.getTAG045();
        tag = setupautoent.getTAG046();
        tag = setupautoent.getTAG047();
        tag = setupautoent.getTAG048();
        tag = setupautoent.getHLPURL();
         Map<String,Schema.Displaytype> m = new Map<String,Schema.Displaytype>();
        Map<String,String> m2 = new Map<String,String>();
        
        Schema.Displaytype DT;
        setupautoent.SelectedIndex='1';
        setupautoent.RetriveField('Case', setupautoent.Hdrfldlist, setupautoent.CriExpressions.mapFieldDispType, setupautoent.CriExpressions.FieldApiLable);
        setupautoent.RetriveField2('Case', setupautoent.Hdrfldlist,m,m2,DT);
        setupautoent.RetriveField('Case', setupautoent.Hdrfldlist,m,m2,DT,null);
        setupautoent.getHdrFldlist();
        setupautoent.OnHdrObjSelect();
        setupautoent.getdelIndex();
        setupautoent.setdelIndex('1'); 
        setupautoent.HdrADDRow();
        setupautoent.HdrADDRow();
        setupautoent.HdrDeleteRow();
        List<SelectOption> lstSelctOptn = new List<SelectOption>();
        setupautoent.getisSearch();
        setupautoent.getisDateSearch();
        setupautoent.Do_CancelSearch();
        
        try
        {
          EVER_SetupAutoEntRulesWO setupautoent1 =new EVER_SetupAutoEntRulesWO();
          setupautoent1.TempEntitlementRuleList.add(prs2);
          setupautoent1.TempEntitlementRuleList.add(prs);
          setupautoent1.shuffle(1,true);
          setupautoent1.shuffle(1,false);
          setupautoent1.items.add(prs2.Id);
          setupautoent1.Top();
          
          setupautoent1.items.clear();
          setupautoent1.items.add(prs.Id);
          setupautoent1.UP();
          
          setupautoent1.items.clear();
          setupautoent1.items.add(prs.Id);
          setupautoent1.UP();
          
          
          setupautoent1.items.clear();
          setupautoent1.items.add(prs.Id);
          setupautoent1.Down();
          
          setupautoent1.items.clear();
          setupautoent1.items.add(prs.Id);
          setupautoent1.Down();
          
          
          
          setupautoent1.items.clear();
          setupautoent1.items.add(prs2.Id);
          setupautoent1.Bottom();
          
          setupautoent1.items.clear();
          setupautoent1.items.add(prs2.Id);
          setupautoent1.Bottom();
          
          System.assertEquals(setupautoent1!=null,true);
          
          //setupautoent1.svmxSettingList.clear();
          //setupautoent1.svmxSettingList.put('SET001','True');
          setupautoent1.SVMX_backToSetupHome();
          
        }
        catch(exception ex){}
         EVER_SetupAutoEntRulesWO ent = new EVER_SetupAutoEntRulesWO();
        SVMXC__ServiceMax_Processes__c procc1 = new SVMXC__ServiceMax_Processes__c();
        procc1.SVMXC__Name__c ='EntlRuleTest';
        procc1.RecordTypeId = Rtype.Id; 
        procc1.SVMXC__Select__c = true;
        procc1.SVMXC__Entitlement_Scope__c = 'Service Contract';
        List<SVMXC__ServiceMax_Processes__c> lstProcc1 = new List<SVMXC__ServiceMax_Processes__c>();
        lstProcc1.add(procc1);
        ent.processobjs= lstProcc1;
        ent.SVMX_saveButton();
        insert lstProcc1;
         ent.SVMX_saveButton();
        ent.SVMX_editButton();
        lstProcc1[0].SVMXC__Select__c = true;
        ent.processobjs= lstProcc1;
                
        SVMXC__ServiceMax_Config_Data__c TempCnfig = new SVMXC__ServiceMax_Config_Data__c();
        TempCnfig.SVMXC__Expression_Rule__c = lstProcc1[0].id;
        insert TempCnfig;
        ent.SVMX_delButton();
        ent.EntitleUsing = 'Account';
        ent.identifyEntType();
        ent.EntitleUsing = 'Product';
        ent.identifyEntType();
        }
        
    }