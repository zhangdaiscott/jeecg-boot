
CREATE TABLE MDM_VENDOR_INFO (
	  ID varchar(36) NOT NULL COMMENT '主键',
	  VENDOR_ID bigint(20) NOT NULL COMMENT '供应商 ID',
	  VENDOR_NAME varchar(480) DEFAULT NULL COMMENT '供应商名称',
	  MD_CODE varchar(60) DEFAULT NULL COMMENT '供应商编号（主数据编号）',
	  VENDOR_TYPE varchar(60) DEFAULT NULL COMMENT '供应商类型',
	  CERTIFICATE_FLAG varchar(2) DEFAULT NULL COMMENT '是否三证合一：Y - 是，N - 否',
	  ORGCERT_NUMBER varchar(60) DEFAULT NULL COMMENT '组织机构代码',
	  IDENTIFY_CODE varchar(100) DEFAULT NULL COMMENT '身份证号码',
	  SOC_IDEN varchar(100) DEFAULT NULL COMMENT '统一社会信用代码',
	  VENDOR_CREATION_DATE date DEFAULT NULL COMMENT '供应商创建时间',
	  VAT_FLAG varchar(30) DEFAULT NULL COMMENT '纳税标识：YBNSR 一般纳税人，XGM 小规模纳税人，FZZS 非增值税',
	  TAX_REGISTRATION_NUMBER varchar(40) DEFAULT NULL COMMENT '纳税登记编号',
	  STOCK_FLAG varchar(4) DEFAULT NULL COMMENT '是否上市公司：Y - 是，N - 否',
	  INNER_FLAG varchar(4) DEFAULT NULL COMMENT '是否内部关联方：ZB-总部,QN-其他内部关联方,WZ-外部重要关联方,QW-其他外部供应商',
	  INNER_CODE varchar(40) DEFAULT NULL COMMENT '内部关联方标识（往来段）',
	  TRADING_PARTY varchar(4) DEFAULT NULL COMMENT '是否交易方：Y - 是，N - 否',
	  CUETOMER_NUMBER varchar(18) DEFAULT NULL COMMENT '客户编码',
	  CORPORATION_TYPE varchar(600) DEFAULT NULL COMMENT '组织机构类型',
	  LAST_UPDATE_DATE date DEFAULT NULL COMMENT '供应商最后更新时间',
	  VENDOR_STATUS varchar(640) DEFAULT NULL COMMENT '供应商状态：Y - 是，N - 否',
	  VENDOR_OLD_NAME varchar(640) DEFAULT NULL COMMENT '供应商曾用名',
	  LEGAL_REPRESENTATIVE varchar(640) DEFAULT NULL COMMENT '法定代表人/责任人',
	  TAX_REG_ADDRESS varchar(800) DEFAULT NULL COMMENT '税务登记地址',
	  OFFICE_ADDRESS varchar(800) DEFAULT NULL COMMENT '办公地址',
	  REGISTRY_ADDRESS varchar(800) DEFAULT NULL COMMENT '注册地址',
	  BUSINESS_RANGE varchar(800) DEFAULT NULL COMMENT '经营范围',
	  COMPANY_TYPE varchar(640) DEFAULT NULL COMMENT '公司类型',
	  BUSINESS_TIMELIMIT varchar(300) DEFAULT NULL COMMENT '营业期限',
	  REGISTRY_FUND varchar(40) DEFAULT NULL COMMENT '注册资金',
	  REGISTRY_CURRENCY varchar(40) DEFAULT NULL COMMENT '注册币种',
	  COUNTRY varchar(50) DEFAULT NULL COMMENT '供应商所在国家',
	  PROVINCE varchar(300) DEFAULT NULL COMMENT '供应商所在省份',
	  CITY varchar(50) DEFAULT NULL COMMENT '供应商所在城市',
	  ZIP varchar(40) DEFAULT NULL COMMENT '供应商邮政编码',
	  SOURCE_CODE varchar(60) DEFAULT NULL COMMENT '来源系统',
	  VIRTUAL_VENDOR varchar(2) DEFAULT NULL COMMENT '是否虚拟供应商：Y - 是，N - 否',
	  VIRTUAL_TYPE varchar(480) DEFAULT NULL COMMENT '虚拟供应商类型',
	  CREATE_TIME datetime DEFAULT NULL COMMENT '创建时间',
	  CREATE_BY varchar(32) DEFAULT NULL COMMENT '创建人',
	  UPDATE_TIME datetime DEFAULT NULL COMMENT '更新时间',
	  UPDATE_BY varchar(32) DEFAULT NULL COMMENT '更新人',
	  PRIMARY KEY (ID)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='MDM供应商信息表';



	CREATE TABLE  MDM_VENDOR_CONTACTS_INFO (
        ID VARCHAR(36) COMMENT '编号',
        VENDOR_COMPANT_ID BIGINT COMMENT '供应商公司 ID（地市公司组织 ID）',
        VENDOR_ID BIGINT NOT NULL COMMENT '供应商 ID',
        MD_CODE VARCHAR(60) COMMENT '供应商编号（主数据编号）',
        VENDOR_CONTACTS_ID BIGINT COMMENT '联系人 ID',
        CONTACT_NAME VARCHAR(60) COMMENT '联系人姓名',
        CONTACT_CELLPHONE VARCHAR(300) COMMENT '手机号码',
        CONTACT_PHONE VARCHAR(300) COMMENT '电话号码',
        CONTACT_FAX VARCHAR(100) COMMENT '传真',
        CONTACT_MAIL VARCHAR(300) COMMENT '电子邮箱',
        CREATE_TIME DATETIME COMMENT '创建时间',
        CREATE_BY VARCHAR(32) COMMENT '创建人',
        UPDATE_TIME DATETIME COMMENT '更新时间',
        UPDATE_BY VARCHAR(32) COMMENT '更新人',
        PRIMARY KEY (ID)
    )
    ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='MDM供应商联系人信息表';
    
    
	CREATE TABLE MDM_VENDOR_COMPANY_INFO (
        ID VARCHAR(36) COMMENT '编号',
        VENDOR_COMPANT_ID BIGINT COMMENT '供应商公司ID',
        VENDOR_ID BIGINT NOT NULL COMMENT '供应商ID',
        MD_CODE VARCHAR(60) COMMENT '供应商编号（主数据编码）',
        OU_CODE VARCHAR(30) COMMENT 'OU代码（公司段ID）', 
        ORG_NAME VARCHAR(480) COMMENT 'OU名称（公司段名称）',
        VALID_FLAG VARCHAR(2) NOT NULL COMMENT '公司层是否有效',
        CREATION_DATE DATETIME NOT NULL COMMENT '公司层创建时间',
        EXPIRY_DATE DATETIME COMMENT '失效日期',
        CREATE_TIME DATETIME COMMENT '创建时间',
        CREATE_BY VARCHAR(32) COMMENT '创建人',
        UPDATE_TIME DATETIME COMMENT '更新时间',
        UPDATE_BY VARCHAR(32) COMMENT '更新人',
        PRIMARY KEY (ID)
     )
    ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='MDM供应商公司层信息表';
    
    
    
    CREATE TABLE MDM_VENDOR_ACCOUNT_INFO (
        ID VARCHAR(36) COMMENT '编号',
        VENDOR_COMPANT_ID BIGINT COMMENT '供应商公司 ID（地市公司组织 ID）',
        VENDOR_ACCOUNT_ID BIGINT COMMENT '供应商银行账户 ID',
        VENDOR_ID BIGINT NOT NULL COMMENT '供应商 ID',
        MD_CODE VARCHAR(60) COMMENT '供应商编号（主数据编号）',
        MAIN_ACCOUNT_FLAG VARCHAR(4) COMMENT '是否主账号',
        BANK_NAME VARCHAR(300) COMMENT '银行名称',
        BANK_CODE VARCHAR(300) COMMENT '银行编码',
        BRANCH_BANK VARCHAR(300) COMMENT '支行名称',
        BRANCH_CODE VARCHAR(300) COMMENT '支行编码',
        CNAP_NUMBER VARCHAR(100) NOT NULL COMMENT '联行号',
        ACCOUNT_NAME VARCHAR(300) NOT NULL COMMENT '银行户名',
        ACCOUNT_NUMBER VARCHAR(200) NOT NULL COMMENT '银行账号',
        ACCOUNT_CURRENCY VARCHAR(100) COMMENT '账户币种',
        VALID_FLAG VARCHAR(2) COMMENT '银行账户是否有效',
        CREATE_TIME DATETIME COMMENT '创建时间',
        CREATE_BY VARCHAR(32) COMMENT '创建人',
        UPDATE_TIME DATETIME COMMENT '更新时间',
        UPDATE_BY VARCHAR(32) COMMENT '更新人',
        PRIMARY KEY (ID)
    )
    ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='MDM供应商银行账户信息表';
    
    
    CREATE TABLE REIMBURSEMENT_AMOUNT_CONTROL (
        ID VARCHAR(36) COMMENT '编号',
        DEPT_ID VARCHAR(20) COMMENT '部门ID',
        DEPT_NAME VARCHAR(150) COMMENT '部门名称',
        POSITION_TYPE INTEGER COMMENT '审批人职务代码：1.正职 2.副职',
        POSITION_NAME VARCHAR(150) COMMENT '审批人职务',
        REIMBURSE_TYPE VARCHAR(4) COMMENT '报销类型：缺省-1，表示全部报销类型都使用',
        AMOUNT DECIMAL(20,2) COMMENT '无合同可审批金额',
        LOAN_AMOUNT DECIMAL(20,2) COMMENT '借款审批金额',
        CONTRACT_AMOUNT DECIMAL(20,2) COMMENT '有合同可审批金额',
        VALID_FLAG VARCHAR(2) COMMENT '设置是否有效',
        CREATE_TIME DATETIME COMMENT '创建时间',
        CREATE_BY VARCHAR(32) COMMENT '创建人',
        UPDATE_TIME DATETIME COMMENT '更新时间',
        UPDATE_BY VARCHAR(32) COMMENT '更新人',
        PRIMARY KEY (ID)
    )
    ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='部门审批金额控制';
    
    
    
    
    //*******************************//
    
    
    CREATE TABLE T_REIMBURSEMENT_VAT_DEDUCTION_VOUCHERS(
        ID INTEGER NOT NULL AUTO_INCREMENT COMMENT '主键',
        APPLY_NO VARCHAR(30) NOT NULL COMMENT '报销单编号',
        SEQ INTEGER NOT NULL COMMENT '序号',
        DOC_NUM VARCHAR(30) COMMENT '发票号码',
        INVOICE_CODE VARCHAR(30) COMMENT '发票代码',
        DOC_DATE DATE NOT NULL COMMENT '开票日期',
        OFFSET_FLAG VARCHAR(1) COMMENT '是否需抵扣：Y-是/N-否，指发票本身是否需要进行抵扣',
        DOC_NUM_ORIGINAL VARCHAR(30) COMMENT '原发票号码',
        INVOICE_CODE_ORIGINAL VARCHAR(30) COMMENT '原发票代码',
        VOUCHER_TYPE VARCHAR(10) COMMENT '增值税扣税凭证类型',
        VOUCHER_TYPE_NAME VARCHAR(100) COMMENT '增值税扣税凭证类型名称',
        INVOICE_AMOUNT DECIMAL(20,2) COMMENT '金额',
        INVOICE_TAX_AMOUNT DECIMAL(20,2) COMMENT '税额',
        INVOICE_TAX_RATE VARCHAR(30) COMMENT '税率',
        INVOICE_TOTAL_AMOUNT DECIMAL(20,2) COMMENT '价税合计',
        BUY_TAX_IDENTI_NUM VARCHAR(40) COMMENT '购方纳税人识别号',
        BUY_TAX_IDENTI_NAME VARCHAR(400) COMMENT '购方纳税人名称',
        SELLER_TAX_IDENTI_NUM VARCHAR(40) COMMENT '销方纳税人识别号',
        SELLER_TAX_IDENTI_NAME VARCHAR(400) COMMENT '销方纳税人名称',
        INVOICE_RESULT VARCHAR(2) COMMENT '发票认证结果:1：认证通过；2：认证不通过；3：未认证; 4：无需认证',
        INVOICE_RESULT_NAME VARCHAR(60) COMMENT '发票认证结果名称：1：认证通过；2：认证不通过；3：未认证; 4：无需认证',
        CLAIM_RESULT VARCHAR(100) COMMENT '报账单认证结果:1.都通过；2：部分通过；3：都未通过；4：认证异常',
        AUTHENTICATION_DATE DATE COMMENT '认证日期',
        SIGN_DATE DATE COMMENT '发票签收时间',
        VOUCHER_RETURN_FLAG VARCHAR(1) COMMENT '凭证是否退回',
        PROCESS_DATE DATE COMMENT '报账单处理时间',
        RED_INVOICE_FLAG VARCHAR(1) COMMENT '是否红字发票：N- 否，Y- 是',
        RED_INVOICE_NUM VARCHAR(60) COMMENT '红字发票通知单编号',
        RED_INVOICE_DATE DATE COMMENT '红字发票通知单开具日期',
        IS_SUM VARCHAR(2) COMMENT '是否汇总',
        REMARKS VARCHAR(500) COMMENT '备注',
        RED_INVOICE_DESCRIPTION VARCHAR(500) COMMENT '红字发票描述',
        VENDOR_NUM VARCHAR(100) COMMENT '供应商编号',
        VENDOR_NAME VARCHAR(600) COMMENT '供应商名称',
        PROJECT_ATTR VARCHAR(10) COMMENT '项目属性：Y-动产/N-不动产',
        TRANSFER_TAX_FLAG INTEGER COMMENT '结转税额标识（0、动产项目或成本费用；1、不动产项目并且第一次结转；2、不动产项目并且第二次结转；3、动产转为不动产项目；4、不动产转为动产项目）',
        INPUT_TAX_TURN_DATE DATE COMMENT '进项税额转出会计期间',
        IS_SUM_BDK VARCHAR(2) COMMENT '不抵扣进项税凭证是否汇总：Y-是，N-否',
        CREATE_TIME datetime DEFAULT NULL COMMENT '创建时间',
        CREATE_BY VARCHAR(32) DEFAULT NULL COMMENT '创建人',
		UPDATE_TIME datetime DEFAULT NULL COMMENT '更新时间',
		UPDATE_BY VARCHAR(32) DEFAULT NULL COMMENT '更新人',
		PRIMARY KEY (ID)
	)COMMENT='报销单增值税扣税凭证信息表';


	CREATE TABLE T_REIMBURSEMENT_MAIN (
        ID VARCHAR(36) NOT NULL COMMENT '流水号',
        APPLY_NO VARCHAR(50) NOT NULL COMMENT '报账单编号',
        REIMBURSEMENT_TEMPLATE_CODE VARCHAR(30) NOT NULL COMMENT '报账单模板编号',
        REIMBURSEMENT_TEMPLATE_NAME VARCHAR(30) NOT NULL COMMENT '报账单模板名称',
        USER_ID VARCHAR(30) NOT NULL COMMENT '员工登录帐号',
        USER_NAME VARCHAR(80) NOT NULL COMMENT '员工姓名',
        USER_COMPANY_CODE VARCHAR(15) NOT NULL COMMENT '员工所属公司编码',
        USER_COMPANY_NAME VARCHAR(100) NOT NULL COMMENT '员工所属公司名称',
        USER_DEPART_CODE VARCHAR(15) NOT NULL COMMENT '员工所属部门编码',
        USER_DEPART_NAME VARCHAR(150) NOT NULL COMMENT '员工所属部门名称',
        USER_POSITION VARCHAR(150) COMMENT '员工职务',
        USER_NO VARCHAR(15) NOT NULL COMMENT '员工编号',
        USER_EMAIL VARCHAR(70) NOT NULL COMMENT '员工邮箱',
        USER_MOBILE VARCHAR(15) COMMENT '员工手机号',
        REIMBURSEMENT_ITEM VARCHAR(300) NOT NULL COMMENT '报销事由',
        REMARK VARCHAR(600) COMMENT '备注',
        COST_TYPE VARCHAR(60) COMMENT '支出成本类型',
        CURRENCY VARCHAR(20) COMMENT '币种',
        ATTACHMENT_NUM INTEGER NOT NULL COMMENT '发票张数',
        PAYMENT_TYPE VARCHAR(30) COMMENT '支付方式：转账（银企直联），结清（银行托收），网银支付',
        INVOICE_AMOUNT DECIMAL(20,2) NOT NULL COMMENT '发票金额(价税总额)',
        PAYMENT_AMOUNT DECIMAL(20,2) NOT NULL COMMENT '付款金额',
        INVOICE_PRICE_AMOUNT DECIMAL(20,2) COMMENT '发票价款',
        INVOICE_TAX_AMOUNT DECIMAL(20,2) COMMENT '发票税款',
        PAYMENT__PRICE_AMOUNT DECIMAL(20,2) COMMENT '付款金额-价款',
        PAYMENT_TAX_AMOUNT DECIMAL(20,2) COMMENT '付款金额-税款',
        STRIKE_AMOUNT DECIMAL(20,2) COMMENT '本次冲减金额',
        AUDIT_CONFIRM_AMOUNT DECIMAL(20,2) COMMENT '审批确认金额',
        AUDIT_DISCREPANCY_AMOUNT DECIMAL(20,2) COMMENT '审批差异金额',
        AUDIT_CONFIRM_REMARK VARCHAR(200) COMMENT '审批确认说明', 
        VENDOR_CODE VARCHAR(100) COMMENT '供应商编号',
        VENDOR_NAME VARCHAR(600) COMMENT '供应商名称',
        VENDOR_ADDRESS VARCHAR(300) COMMENT '供应商地点',
        VENDOR_VAT_FLAG VARCHAR(30) COMMENT '供应商纳税人类型: 一般纳税人/ 小规模纳税人/非增值税纳税人',   
        BAL_SEQ_PAY_TYPE VARCHAR(30) COMMENT '结算支付方式： 1=预付(无发票),2=有发票付款,3=有发票列账,4=有发票预付冲账,5=支付申请(已列账)',            
        SOURCE_SYSTEM_CODE VARCHAR(200) COMMENT '来源系统代码',
        SOURCE_SYSTEM_NAME VARCHAR(200) COMMENT '来源系统名称',
        RECEIVE_TYPE VARCHAR(30) COMMENT '接收类型',
        RECEIVE_WAY VARCHAR(30) COMMENT '接收方式',
        MONTH_BDGT_PERIOD TIMESTAMP COMMENT '月度预算期间',        
        AUDIT_USER_ID VARCHAR(20) COMMENT '审核会计Id',
        AUDIT_USER_NAME VARCHAR(20) COMMENT '审核会计姓名', 
        DOC_PROCESS_STATE VARCHAR(50) COMMENT '实物单流程审批状态',
        VAT_AUDIT_USER_ID VARCHAR(20) COMMENT '税务审核会计ID',
        VAT_AUDIT_USER_NAME VARCHAR(20) COMMENT '税务审核会计姓名',
        VAT_DOC_PROCESS_STATE VARCHAR(50) COMMENT '抵扣联实物单流程状态',       
        PROC_TEMPLATE_NAME VARCHAR(200) COMMENT '流程模板',       
        SUBMIT_TIME TIMESTAMP COMMENT '流程提交时间',
        END_TIME TIMESTAMP COMMENT '审批完毕时间',
        PROC_STATE VARCHAR(100) NOT NULL COMMENT '流程审批状态',
        IS_LOAN VARCHAR(1) NOT NULL COMMENT '是否借款：N否，Y是',
        IS_STRIKE VARCHAR(1) NOT NULL COMMENT '是否冲减：N否，Y是',
        IS_PREPAY VARCHAR(1) NOT NULL COMMENT '是否预付：N否，Y是',
        EXIST_CONTRACT VARCHAR(1) NOT NULL COMMENT '是否有合同：N否，Y是', 
        IS_CONNTRANS VARCHAR(1) COMMENT '是否关联交易:N否，Y是',
        CONNTRANS_TYPE VARCHAR(20) COMMENT '关联交易类型', 
        EXIST_ORDER VARCHAR(1) COMMENT '是否包含订单：N-否/Y-是',
        IS_IMMOVABLE VARCHAR(1) COMMENT '是否不动产：Y-是/N-否',
        IS_ELE_INVOICE VARCHAR(1) COMMENT '是否电子发票：Y-是/N-否',
        EXIST_OFFSET_FLAG VARCHAR(1) COMMENT '是否包含进项抵扣凭证：Y-是/N-否',
        CERTIFIED VARCHAR(1) COMMENT '抵扣联是否认证通过 Y-认证通过、N-未认证或认证失败',
        IS_PAY_DIVIDE VARCHAR(1) COMMENT '是否成本下分：Y-是/N-否',
        IS_SALES VARCHAR(1) COMMENT '是否包含视同销售：N-否/Y-是',
        IS_INPUT_VAT_INVOICE VARCHAR(1) COMMENT '是否需要起草进项发票报账单：N-否，Y-是',
        IS_PRE_MATCH_PO VARCHAR(1) COMMENT '是否已经预匹配订单：Y-是，N-否',
        ARCHIVING_TIME TIMESTAMP COMMENT '归档时间',
        ARCHIVING_MAN VARCHAR(60) COMMENT '归档人',    
        CREATE_TIME TIMESTAMP NOT NULL COMMENT '创建时间',
        CREATE_BY varchar(32) DEFAULT NULL COMMENT '创建人',
        UPDATE_TIME TIMESTAMP COMMENT '更新时间',
        UPDATE_BY varchar(32) DEFAULT NULL COMMENT '更新人', 
        PROCERP_STAT_EXTEND_ID VARCHAR(36) COMMENT '报账流程ERP统计信息扩展表ID', 
        PRIMARY KEY (ID)
    ) COMMENT='报销单主体信息表';
    
    CREATE TABLE T_REIMBURSEMENT_MAIN_PROCERP_STAT_EXTEND (		
    	ID VARCHAR(36) NOT NULL COMMENT '流水号',
    	APPLY_NO VARCHAR(50) NOT NULL COMMENT '报账单编号',
    	IMPORT_ERP_STATUS INTEGER NOT NULL COMMENT '导入ERP状态：0-待导入,1-导入成功已生成发票,2-导入处理中,3-导入失败,4-导入成功未生成发票,5-导入处理超时,6-系统出错已取消发票',
        IS_ALLOW_TO_MIS VARCHAR(2) NOT NULL COMMENT '是否允许导入ERP：N-不允许、Y-允许',
        IMPORT_ERP_USER VARCHAR(30) COMMENT '导入ERP会计',
        IMPORT_ERP_DATE TIMESTAMP COMMENT '导入ERP时间',
        IMPORT_ERP_GL_STATUS INTEGER COMMENT '是否导入总账： 0-未导入、1-导入成功、2-导入失败',
        IS_ALLOW_TO_ERP_GL VARCHAR(2) COMMENT '是否允许导入总账： N-不允许、Y-允许',
        IMPORT_ERP_GL_USER VARCHAR(30) COMMENT '导入ERP总账用户',
        IMPORT_ERP_GL_DATE TIMESTAMP COMMENT '导入ERP总账日期',				
        DOC_PROCESS_STATE VARCHAR(50) COMMENT '实物单流程审批状态',        
        OA_REACH_ACC_TIME TIMESTAMP COMMENT '审批单最后到达会计时间',
        POSTALPARCE_REACH_ACC_TIME TIMESTAMP COMMENT '实物单最后抵达会计时间',
        OA_FIRST_TIME_REACH_ACC_TIME TIMESTAMP COMMENT 'OA单第一次到达审核会计时间',
        POSTALPARCE_FIRST_TIME_REACH_ACC_TIME TIMESTAMP COMMENT '实物单第一次到达审核会计时间',
        TOTAL_PROCESS_TIME_COUNT DECIMAL(20,2) COMMENT '总计处理时长',
        ACCNT_PROCESS_TIME_COUNT DECIMAL(20,2) COMMENT '会计处理总时长',
        CURR_PROCESS_TIME TIMESTAMP COMMENT '当前处理时间',
        CURR_ACCNT_PROCESS_TIME TIMESTAMP COMMENT '当前会计处理时间',
        POSTALPARCE_CA_DEAL_TIME TIMESTAMP COMMENT '资金会计处理实物单时间',
        VAT_OA_REACH_ACC_TIME TIMESTAMP COMMENT 'OA单到达税务会计时间',
        VAT_POSTALPARCE_REACH_ACC_TIME TIMESTAMP COMMENT '抵扣实物单到达税务制证会计时间',    
        CREATE_TIME TIMESTAMP NOT NULL COMMENT '创建时间',
        CREATE_BY varchar(32) DEFAULT NULL COMMENT '创建人',
        UPDATE_TIME TIMESTAMP COMMENT '更新时间',
        UPDATE_BY varchar(32) DEFAULT NULL COMMENT '更新人',     
        PRIMARY KEY (ID)
    ) COMMENT ='报账主体对应ERP及流程信息统计扩展表';
    
    CREATE TABLE
    T_REIMBURSEMENT_BASE_DETAIL
    (
        ID VARCHAR(36) NOT NULL COMMENT '流水号',
        APPLY_NO VARCHAR(50) NOT NULL COMMENT '报账单编号',
        REIMBURSEMENT_TEMPLATE_CODE VARCHAR(30) NOT NULL COMMENT '报账单模板编号',
        REIMBURSEMENT_TEMPLATE_NAME VARCHAR(30) NOT NULL COMMENT '报账单模板名称',
        SEQ INTEGER NOT NULL COMMENT '明细序号',
        WITHDRAW_CAUSE INTEGER COMMENT '退单原因代码',
        BIZTYPE_CODE VARCHAR(50) NOT NULL COMMENT '费用项（业务大类）编码',
        BIZTYPE_NAME VARCHAR(300) NOT NULL COMMENT '费用项（业务大类）名称',
        FEE_ITEM_CODE VARCHAR(50) NOT NULL COMMENT '费用项代码',
        FEE_ITEM_NAME VARCHAR(300) NOT NULL COMMENT '费用项名称', 
        INVOICE_AMT DECIMAL(20,2) NOT NULL COMMENT '发票金额（价税总额）',              
        INVOICE_PRICE_AMT DECIMAL(20,2) COMMENT '发票价额', 
        INVOICE_TAX_AMT DECIMAL(20,2) COMMENT '发票税额', 
        PAYMENT_AMT DECIMAL(20,2) NOT NULL COMMENT '付款（支付）金额',
        PAYMENT_PRICE_AMT DECIMAL(20,2) COMMENT '付款（支付）价额',
        PAYMENT_TAX_AMT DECIMAL(20,2) COMMENT '付款（支付）税额',
        TAX_CODE VARCHAR(100) COMMENT '税码',
        TAX_RATE VARCHAR(100) COMMENT '税率',               
        DTL_DESC VARCHAR(600) NOT NULL COMMENT '报账单明细说明',       
        ERP_ACCOUNT_NO VARCHAR(20) NOT NULL COMMENT '会计科目代码',
        ERP_ACCOUNT_NAME VARCHAR(100) NOT NULL COMMENT '会计科目名称',
        COSTCENTER_CODE VARCHAR(20) NOT NULL COMMENT '成本中心代码',
        COSTCENTER_NAME VARCHAR(100) NOT NULL COMMENT '成本中心名称',
        CREATE_TIME TIMESTAMP NOT NULL COMMENT '创建时间',
        CREATE_BY varchar(32) DEFAULT NULL COMMENT '创建人',
        UPDATE_TIME TIMESTAMP COMMENT '更新时间',
        UPDATE_BY varchar(32) DEFAULT NULL COMMENT '更新人',  
        BUDGET_ITEM_ID INTEGER COMMENT '预算信息ID',
        PAYMENT_LIST_ID INTEGER COMMENT '付款清单ID',
        PRIMARY KEY (ID)
    )COMMENT ='报账单基本明细表';

    
   CREATE TABLE T_REIMBURSEMENT_ADVANCED_DETAIL_INFO
    (
        ID VARCHAR(36) NOT NULL COMMENT '流水号',
        APPLY_NO VARCHAR(50) NOT NULL COMMENT '报账单编号',
        SEQ INTEGER NOT NULL COMMENT '明细序号',
        IS_SALES VARCHAR(1) COMMENT '是否视同销售:N-否，Y-是',
        SALES_TAX_CODE VARCHAR(30) COMMENT '销项税码',
        SALES_TAX_RATE VARCHAR(30) COMMENT '销项税率',
        SUBSTITUTED_AMT_ON_VAT DECIMAL(20,2) COMMENT '销项税额',
        IS_SPECIAL VARCHAR(1) COMMENT '是否特殊类别',
        PRJ_ATTR VARCHAR(1) COMMENT '项目动产属性：Y-动产/N-不动产',
        TX_FLAG VARCHAR(2) NOT NULL COMMENT '摊销标志：1-不摊销、2-长摊、3-短摊',
        USE_DATE DATE COMMENT '投入使用日期',
        TX_END_DATE DATE COMMENT '摊销结束日期',
        IS_DEP VARCHAR(1) COMMENT '是否折旧：:N-否，Y-是',
        DEP_FEE_ACCOUNT_NO VARCHAR(20) COMMENT '报账单模板名称',
        DEP_FEE_ACCOUNT_NAME VARCHAR(300) COMMENT '报账单模板名称',
        CONTRACT_NO VARCHAR(100) COMMENT '报账单模板名称',
        PRIMARY KEY (ID)
    ) COMMENT ='报账单高级明细表';
    
    CREATE TABLE T_REIMBURSEMENT_PAYMENT_LIST
     (
        ID VARCHAR(36) NOT NULL COMMENT '流水号',
        APPLY_NO VARCHAR(50) NOT NULL COMMENT '报账单编号',
        REIMBURSEMENT_TEMPLATE_CODE VARCHAR(30) NOT NULL COMMENT '报账单模板编号',
        REIMBURSEMENT_TEMPLATE_NAME VARCHAR(30) NOT NULL COMMENT '报账单模板名称',
        SEQ INTEGER NOT NULL COMMENT '付款明细行序号',
        DETAIL_SEQ INTEGER COMMENT '费用明细行序号',
        DESC VARCHAR(600) NOT NULL COMMENT '付款清单说明',
        BANK_BRANCH_NAME VARCHAR(200) NOT NULL COMMENT '收方行分支机构全称（行名）',
        BANK_CNAPS_CODE VARCHAR(200)  COMMENT '收方行分支机构联行号',
        BANK_ACCOUNT_NO VARCHAR(50) NOT NULL COMMENT '收方银行账号',
        BANK_ACCOUNT_NAME VARCHAR(50)NOT NULL COMMENT '收方银行账号户名',
        BANK_ACCOUNT_TYPE VARCHAR(2) NOT NULL COMMENT '账户类别',
        PAYMENT_CONTACTOR_PHONE VARCHAR(20) COMMENT '支付结果联系人电话',      
        VENDOR_CODE VARCHAR(100)  COMMENT '供应商代码',
        VENDOR_NAME VARCHAR(600)  COMMENT '供应商名称',
        VENDOR_ADDRESS VARCHAR(300) COMMENT '供应商地点',
        ERP_ACCOUNT_COM_NO VARCHAR(100)  NOT NULL COMMENT 'ERP付款账户代码',
        ERP_ACCOUNT_COM_REMARK VARCHAR(500)  NOT NULL COMMENT 'ERP付款账户名称',
        PAYMENT_ACCOUNT_NO VARCHAR(50) COMMENT '付方银行账号',
        PAYMENT_ACCOUNT_NAME VARCHAR(50) COMMENT '付方银行账号户名', 
        PAYMENT_AMOUNT DECIMAL(20,2) NOT NULL COMMENT '本次支付金额',    
        BANK_TYPE	VARCHAR(4)  COMMENT '银企银行类别：可发往不同银行接口',	
        BANK_LOC_PROVINCE VARCHAR(50) COMMENT '收方行所在省',
        BANK_LOC_CITY VARCHAR(50) COMMENT '收方行所在城市',
        PAYMENT_STATUS VARCHAR(4) NOT NULL COMMENT '本次支付状态:0 未付款 1 付款成功  2付款失败 3 付款失败已重提交', 
        PAYMENT_STATUS_DESC VARCHAR(60)  COMMENT '本次支付状态描述',       
        AUDIT_USER_ID VARCHAR(30) COMMENT '审核会计ID',      
        BIZTYPE_CODE VARCHAR(50) COMMENT '业务分类代码',
        BIZTYPE_NAME VARCHAR(300) COMMENT '业务分类名称',
        FEE_ITEM_CODE VARCHAR(50) COMMENT '费用项代码',
        FEE_ITEM_NAME VARCHAR(300) COMMENT '费用项名称',          
        BATCH_PAY_TPL_ID INTEGER COMMENT '本次支付对应ERP付款批模板ID',
        BANK_RECEIPT_ID INTEGER COMMENT '银行回单ID',
        CREATE_TIME TIMESTAMP NOT NULL COMMENT '创建时间',
        CREATE_BY varchar(32) DEFAULT NULL COMMENT '创建人',
        UPDATE_TIME TIMESTAMP COMMENT '更新时间',
        UPDATE_BY varchar(32) DEFAULT NULL COMMENT '更新人', 
        PRIMARY KEY (ID)
    )COMMENT='报销单付款清单';
    
    
    CREATE TABLE
    T_REIMBURSEMENT_TRAVEL_DETAIL
    (
        ID VARCHAR(36) NOT NULL COMMENT '主键，流水号',      
        BEGIN_TIME TIMESTAMP NOT NULL  COMMENT '出差开始日期',
        END_TIME TIMESTAMP NOT NULL  COMMENT '出差结束日期',
        PLACE_FROM VARCHAR(60) NOT NULL  COMMENT '出差始发地',
        PLACE_TO VARCHAR(600) NOT NULL  COMMENT '出差目的地',
        TRANSPORTATION VARCHAR(150) NOT NULL  COMMENT '交通工具',
        TRAFFIC_FEE DECIMAL(20,2) NOT NULL  COMMENT '交通费',
        ACCOMMODATION DECIMAL(20,2) NOT NULL  COMMENT '住宿费价税总额',
        EVECTION_SUBSIDY DECIMAL(20,2) NOT NULL  COMMENT '交通补助',
        OTHTER_FEE DECIMAL(20,2) NOT NULL  COMMENT '伙食补助',
        TRAVEL_TYPE VARCHAR(60) NOT NULL  COMMENT '出差方式',
        TRAVEL_TYPE_NAME VARCHAR(200)  COMMENT '出差方式名称',
        TRAVEL_TYPE_DETAIL VARCHAR(60)  COMMENT '出差类型',      
        TRAVEL_TYPE_DETAIL_NAME VARCHAR(200)  COMMENT '出差类型名称',
        ALLOWANCE_DAY DECIMAL(20,2)  COMMENT '出差天数',
        COMPANY_SENT_CAR_DAY INTEGER  COMMENT '公司派车类型',
        IS_SELF_ACCOMMODATION VARCHAR(2)  COMMENT '是否食宿自理:Y-是/N-否',
        TRAVELER_NAME VARCHAR(30)  COMMENT '出差人姓名',
        PEER_NUM INTEGER  COMMENT '同行人数',
        PEER_NAME VARCHAR(200)  COMMENT '同行人姓名',
        ACCOMMODATION_PRICE DECIMAL(20,2)  COMMENT '住宿费价额',
        ACCOMMODATION_TAX_PAYMENT DECIMAL(20,2)  COMMENT '住宿费税额',
       	ACCOMMODATION_TAX_RATE DECIMAL(5,4)  COMMENT '住宿费税率',
       	RESERVE1	VARCHAR(200)  COMMENT '备用字段一',
       	RESERVE2	VARCHAR(200)  COMMENT '备用字段二',
       	RESERVE3	VARCHAR(200)  COMMENT '备用字段三',
       	RESERVE4	VARCHAR(200)  COMMENT '备用字段四',
       	RESERVE5	VARCHAR(200)  COMMENT '备用字段五',
       	RESERVE6	VARCHAR(200)  COMMENT '备用字段六',
        PRIMARY KEY (ID)
    )COMMENT='差旅费报销单明细信息';
    
    CREATE TABLE
    T_REIMBURSEMENT_TRAVEL_TYPE
    (
        ID VARCHAR(36) NOT NULL COMMENT '主键', 
        VALUE VARCHAR(50)  COMMENT '出差方式或出差类型的值',
        DESC VARCHAR(500)  COMMENT '出差方式或出差类型在页面的显示内容',
        PARENT_ID INTEGER  COMMENT '父ID，出差方式的父ID为空，出差方式级联出差类型',
        ALLOWANCE_DAY INTEGER  COMMENT '该出差方式的补助天数',
        TRAVEL_ALLOWANCE DECIMAL(5,0)  COMMENT '该出差方式的交通补助',
        FOOD_ALLOWANCE DECIMAL(5,0)  COMMENT '该出差方式的伙食补助',
        ORDER_ID INTEGER  COMMENT '排序字段',
        IS_FIXED CHARACTER(1)  COMMENT '是否为固定值的标识：Y-是/N-否',
        CREATE_TIME TIMESTAMP NOT NULL COMMENT '创建时间',
        CREATE_BY varchar(32) DEFAULT NULL COMMENT '创建人',
        UPDATE_TIME TIMESTAMP COMMENT '更新时间',
        UPDATE_BY varchar(32) DEFAULT NULL COMMENT '更新人',        
        PRIMARY KEY (ID)
    )COMMENT='出差方式和出差类型详细表';
    
    
    CREATE TABLE
    T_REIMBURSEMENT_VENDOR_DETAIL
    (
        ID VARCHAR(36) NOT NULL COMMENT '主键', 
        PROJECT_ID VARCHAR(60)  COMMENT '工程项目编码',
        PROJECT_NAME VARCHAR(600)  COMMENT '工程项目名称',
        TASK_ID VARCHAR(50)  COMMENT '任务点编码',
        TASK_NAME VARCHAR(300)  COMMENT '任务点名称',
        PAYOUT_TYPE VARCHAR(50)  COMMENT '支出类型',
        PAYOUT_ORG VARCHAR(50)  COMMENT '支出组织',
        ERP_PO_RELA_ID INTEGER  COMMENT '报账ERP订单关系表ID',
        RESERVE1	VARCHAR(200)  COMMENT '备用字段一',
       	RESERVE2	VARCHAR(200)  COMMENT '备用字段二',
       	RESERVE3	VARCHAR(200)  COMMENT '备用字段三',
       	RESERVE4	VARCHAR(200)  COMMENT '备用字段四',
       	RESERVE5	VARCHAR(200)  COMMENT '备用字段五',
       	RESERVE6	VARCHAR(200)  COMMENT '备用字段六',
        PRIMARY KEY (ID)
    )COMMENT='供应商报账明细表';
    
    
    CREATE TABLE
    T_REIMBURSEMENT_ERPPO_RELA
    (
        ID VARCHAR(36) NOT NULL COMMENT '主键',
        APPLY_NO VARCHAR(30) NOT NULL COMMENT '报销单号'
        ERP_PO_NO VARCHAR(50) NOT NULL COMMENT 'ERP订单号'
        ERP_PO_RESV_NO VARCHAR(50) COMMENT 'ERP订单接收号'
        SEQ INTEGER  COMMENT '序列号',
        TAX_CODE VARCHAR(30)  COMMENT '订单税码',
        TAX_RATE VARCHAR(30)  COMMENT '订单税率',
        PO_AMOUNT DECIMAL(20,2)  COMMENT '采购订单总金额',
        TAX_AMOUNT DECIMAL(20,2)  COMMENT '税金总额',
        AMOUNT DECIMAL(20,2)  COMMENT '含税总金额',
        CREATE_TIME TIMESTAMP NOT NULL COMMENT '创建时间',
        CREATE_BY varchar(32) DEFAULT NULL COMMENT '创建人',
        UPDATE_TIME TIMESTAMP COMMENT '更新时间',
        UPDATE_BY varchar(32) DEFAULT NULL COMMENT '更新人',  
        PRIMARY KEY (ID)
    )COMMENT='报账ERP订单明细表';
    
    CREATE TABLE
    T_REIMBURSEMENT_ERPPO_TAX_BALANCE
    (
        ID VARCHAR(36) NOT NULL COMMENT '主键',
        APPLY_NO VARCHAR(30) COMMENT '报销单号'
        SEQ INTEGER COMMENT '报销单明细行号'
        ERP_PO_NO VARCHAR(300) COMMENT '订单号'
        INVOICE_PRICE DECIMAL(20,2) COMMENT '报账单行不含税价'
        TAX_RATE VARCHAR(300)  COMMENT '报账单行税率',
        TAX_AMOUNT DECIMAL(20,2)  COMMENT '报账单行税额',
        PO_INVOICE_PRICE DECIMAL(20,2)  COMMENT '订单匹配价额',
        PO_TAX_RATE VARCHAR(300)  COMMENT '订单税率',
        PO_TAX_AMOUNT DECIMAL(20,2)  COMMENT '订单匹配税额',
        TAX_BALANCE DECIMAL(20,2)  COMMENT '差异税额',
        CREATE_TIME TIMESTAMP NOT NULL COMMENT '创建时间',
        CREATE_BY varchar(32) DEFAULT NULL COMMENT '创建人',
        UPDATE_TIME TIMESTAMP COMMENT '更新时间',
        UPDATE_BY varchar(32) DEFAULT NULL COMMENT '更新人',  
        PRIMARY KEY (ID)
    )COMMENT ='报账单与ERP订单匹配税差表';
    
    CREATE TABLE
    T_REIMBURSEMENT_ERPPO_MATCH_INFO
    (
        ID VARCHAR(36) NOT NULL COMMENT '主键',
        APPLY_NO VARCHAR(30) NOT NULL  COMMENT '报账单号',
        DETAIL_SEQ INTEGER  COMMENT '报账单明细行号',
        PO_HEADER_ID INTEGER  COMMENT '采购订单头ID',
        PO_NUMBER VARCHAR(50) NOT NULL  COMMENT '采购订单编号',
        PO_LINE_ID INTEGER  COMMENT '采购订单行ID',
        PO_LINE_NUM INTEGER  COMMENT '采购订单行号',
        RECEIPT_NUMBER INTEGER  COMMENT '接收号',
        PROJECT_NUM VARCHAR(30)  COMMENT '项目编号',
        PROJECT_NAME VARCHAR(200)  COMMENT '项目名称',
        TASK_NUM VARCHAR(30)  COMMENT '任务点编号',
        TASK_NAME VARCHAR(200)  COMMENT '任务点名称',
        UNIT_PRICE DECIMAL(20,2)  COMMENT '匹配单价',
        QUANTITY DECIMAL(20,2)  COMMENT '匹配数量',
        TOTAL_AMOUNT DECIMAL(20,2)  COMMENT '匹配总金额',
        SETTLEMENT_RATIO DECIMAL(20,4)  COMMENT '本次发票金额报账比例',
        AMOUNT DECIMAL(20,2)  COMMENT '本次匹配金额',
        VAT_RATE DECIMAL(20,2)  COMMENT '税率',
        IS_ADJUST_LINE VARCHAR(2)  COMMENT '是否调整行:Y=是（负数行）/N=否（正数行）',
        CREATE_TIME TIMESTAMP NOT NULL COMMENT '创建时间',
        CREATE_BY varchar(32) DEFAULT NULL COMMENT '创建人',
        UPDATE_TIME TIMESTAMP COMMENT '更新时间',
        UPDATE_BY varchar(32) DEFAULT NULL COMMENT '更新人', 
        PRIMARY KEY (ID)
    )COMMENT='预匹配的采购订单信息';
    
    
    CREATE TABLE T_REIMBURSEMENT_EMPLOYEE_ACCOUNT_INFO (
        ID VARCHAR(36) NOT NULL COMMENT '主键',
        ACCOUNT_OWNER VARCHAR(300) NOT NULL COMMENT '账户维护人',
        ACCOUNT_TYPE INTEGER NOT NULL COMMENT '账户类别：0-对私/1-对公',
        MAIN_ACCOUNT_FLAG VARCHAR(4) COMMENT '是否主账号',
        BANK_NAME VARCHAR(300) COMMENT '银行名称',
        BANK_CODE VARCHAR(300) COMMENT '银行编码',
        BRANCH_BANK VARCHAR(300) COMMENT '支行名称',
        BRANCH_CODE VARCHAR(300) COMMENT '支行编码',
        BANK_LOC_PROVINCE VARCHAR(50) COMMENT '支行所在城市',
        BANK_LOC_CITY VARCHAR(50) COMMENT '支行所在省份',
        CNAP_NUMBER VARCHAR(100) NOT NULL COMMENT '联行号',
        ACCOUNT_NAME VARCHAR(300) NOT NULL COMMENT '银行户名',
        ACCOUNT_NUMBER VARCHAR(200) NOT NULL COMMENT '银行账号',
        ACCOUNT_CURRENCY VARCHAR(100) COMMENT '账户币种',
        VALID_FLAG VARCHAR(2) COMMENT '银行账户是否有效',
        CREATE_TIME DATETIME COMMENT '创建时间',
        CREATE_BY VARCHAR(32) COMMENT '创建人',
        UPDATE_TIME DATETIME COMMENT '更新时间',
        UPDATE_BY VARCHAR(32) COMMENT '更新人',
        PRIMARY KEY (ID)
    )
    ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='员工银行账户信息表';
    
    
    CREATE TABLE
     REIMBURSE_BASE_ERP_COSTCENTER
    (
        ID varchar(36) NOT NULL COMMENT '主键',
        ERP_ORG_CODE VARCHAR(20) NOT NULL COMMENT 'ERP成本中心代码',
        ERP_ORG_NAME VARCHAR(100) NOT NULL COMMENT 'ERP成本中心名称',
        COSTCENTER_TYPE_CODE INTEGER NOT NULL COMMENT 'ERP成本中心类型代码',
        COSTCENTER_TYPE_NAME VARCHAR(100) NOT NULL COMMENT 'ERP成本类型名称',
        ERP_COMPANY_CODE VARCHAR(20) NOT NULL COMMENT '成本中心所属公司代码',
        ERP_COMPANY_NAME VARCHAR(100) NOT NULL COMMENT '成本中心所属公司名称',
        ERP_OU_CODE VARCHAR(20) NOT NULL COMMENT '成本中心所属OU代码',
        ERP_OU_NAME VARCHAR(100) NOT NULL COMMENT '成本中心所属OU名称',
        VALID_FLAG VARCHAR(2) COMMENT 'ERP成本中心是否有效',
        CREATE_TIME DATETIME COMMENT '创建时间',
        CREATE_BY VARCHAR(32) COMMENT '创建人',
        UPDATE_TIME DATETIME COMMENT '更新时间',
        UPDATE_BY VARCHAR(32) COMMENT '更新人',
        PRIMARY KEY (ID)
    )
    ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='ERP成本中心';
    
    
    CREATE TABLE
     REIMBURSE_BASE_ERP_COSTCENTER_AUDITORG_MAP
    (
        ID varchar(36) NOT NULL COMMENT '主键',
        AUDIT_ORG_CODE VARCHAR(20) COMMENT '审批组织代码',
        AUDIT_ORG_NAME VARCHAR(100) COMMENT '审批组织名称',
        ERP_ORG_CODE VARCHAR(20) NOT NULL COMMENT '成本中心代码',
        ERP_ORG_NAME VARCHAR(20) NOT NULL COMMENT '成本中心名称',
        VALID_FLAG VARCHAR(2) COMMENT '映射是否有效',
        CREATE_TIME DATETIME COMMENT '创建时间',
        CREATE_BY VARCHAR(32) COMMENT '创建人',
        UPDATE_TIME DATETIME COMMENT '更新时间',
        UPDATE_BY VARCHAR(32) COMMENT '更新人',
        PRIMARY KEY (ID)
    )
    ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='审批组织与ERP成本中心映射关系';
    