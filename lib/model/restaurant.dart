class Restaurant {
  Null rn;
  Null totalCnt;
  Null fileInfos;
  Null registId;
  Null registNm;
  Null registDt;
  Null registDate;
  Null updtId;
  Null updtNm;
  Null updtDt;
  Null updtDate;
  List<Title> title;
  List<Data> data;

  Restaurant(
      {this.rn,
        this.totalCnt,
        this.fileInfos,
        this.registId,
        this.registNm,
        this.registDt,
        this.registDate,
        this.updtId,
        this.updtNm,
        this.updtDt,
        this.updtDate,
        this.title,
        this.data});

  Restaurant.fromJson(Map<String, dynamic> json) {
    rn = json['rn'];
    totalCnt = json['total_cnt'];
    fileInfos = json['file_infos'];
    registId = json['regist_id'];
    registNm = json['regist_nm'];
    registDt = json['regist_dt'];
    registDate = json['regist_date'];
    updtId = json['updt_id'];
    updtNm = json['updt_nm'];
    updtDt = json['updt_dt'];
    updtDate = json['updt_date'];
    if (json['title'] != null) {
      title = new List<Title>();
      json['title'].forEach((v) {
        title.add(new Title.fromJson(v));
      });
    }
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rn'] = this.rn;
    data['total_cnt'] = this.totalCnt;
    data['file_infos'] = this.fileInfos;
    data['regist_id'] = this.registId;
    data['regist_nm'] = this.registNm;
    data['regist_dt'] = this.registDt;
    data['regist_date'] = this.registDate;
    data['updt_id'] = this.updtId;
    data['updt_nm'] = this.updtNm;
    data['updt_dt'] = this.updtDt;
    data['updt_date'] = this.updtDate;
    if (this.title != null) {
      data['title'] = this.title.map((v) => v.toJson()).toList();
    }
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Title {
  String rELAXSEQ;
  String rELAXZIPCODE;
  String rELAXSINM;
  String rELAXSIDONM;
  String rELAXRSTRNTNM;
  String rELAXRSTRNTREPRESENT;
  String rELAXRSTRNTREGDT;
  String rELAXADD1;
  String rELAXADD2;
  String rELAXGUBUN;
  String rELAXGUBUNDETAIL;
  String rELAXRSTRNTTEL;
  String rELAXUSEYN;
  String rELAXRSTRNTCNCLDT;
  String rELAXRSTRNTETC;
  String rELAXUPDATEDT;

  Title(
      {this.rELAXSEQ,
        this.rELAXZIPCODE,
        this.rELAXSINM,
        this.rELAXSIDONM,
        this.rELAXRSTRNTNM,
        this.rELAXRSTRNTREPRESENT,
        this.rELAXRSTRNTREGDT,
        this.rELAXADD1,
        this.rELAXADD2,
        this.rELAXGUBUN,
        this.rELAXGUBUNDETAIL,
        this.rELAXRSTRNTTEL,
        this.rELAXUSEYN,
        this.rELAXRSTRNTCNCLDT,
        this.rELAXRSTRNTETC,
        this.rELAXUPDATEDT});

  Title.fromJson(Map<String, dynamic> json) {
    rELAXSEQ = json['RELAX_SEQ'];
    rELAXZIPCODE = json['RELAX_ZIPCODE'];
    rELAXSINM = json['RELAX_SI_NM'];
    rELAXSIDONM = json['RELAX_SIDO_NM'];
    rELAXRSTRNTNM = json['RELAX_RSTRNT_NM'];
    rELAXRSTRNTREPRESENT = json['RELAX_RSTRNT_REPRESENT'];
    rELAXRSTRNTREGDT = json['RELAX_RSTRNT_REG_DT'];
    rELAXADD1 = json['RELAX_ADD1'];
    rELAXADD2 = json['RELAX_ADD2'];
    rELAXGUBUN = json['RELAX_GUBUN'];
    rELAXGUBUNDETAIL = json['RELAX_GUBUN_DETAIL'];
    rELAXRSTRNTTEL = json['RELAX_RSTRNT_TEL'];
    rELAXUSEYN = json['RELAX_USE_YN'];
    rELAXRSTRNTCNCLDT = json['RELAX_RSTRNT_CNCL_DT'];
    rELAXRSTRNTETC = json['RELAX_RSTRNT_ETC'];
    rELAXUPDATEDT = json['RELAX_UPDATE_DT'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['RELAX_SEQ'] = this.rELAXSEQ;
    data['RELAX_ZIPCODE'] = this.rELAXZIPCODE;
    data['RELAX_SI_NM'] = this.rELAXSINM;
    data['RELAX_SIDO_NM'] = this.rELAXSIDONM;
    data['RELAX_RSTRNT_NM'] = this.rELAXRSTRNTNM;
    data['RELAX_RSTRNT_REPRESENT'] = this.rELAXRSTRNTREPRESENT;
    data['RELAX_RSTRNT_REG_DT'] = this.rELAXRSTRNTREGDT;
    data['RELAX_ADD1'] = this.rELAXADD1;
    data['RELAX_ADD2'] = this.rELAXADD2;
    data['RELAX_GUBUN'] = this.rELAXGUBUN;
    data['RELAX_GUBUN_DETAIL'] = this.rELAXGUBUNDETAIL;
    data['RELAX_RSTRNT_TEL'] = this.rELAXRSTRNTTEL;
    data['RELAX_USE_YN'] = this.rELAXUSEYN;
    data['RELAX_RSTRNT_CNCL_DT'] = this.rELAXRSTRNTCNCLDT;
    data['RELAX_RSTRNT_ETC'] = this.rELAXRSTRNTETC;
    data['RELAX_UPDATE_DT'] = this.rELAXUPDATEDT;
    return data;
  }
}

class Data {
  String rELAXUPDATEDT;
  String rELAXRSTRNTREPRESENT;
  String rELAXADD1;
  String rELAXSINM;
  String rELAXSIDONM;
  int rELAXSEQ;
  Null rELAXRSTRNTCNCLDT;
  String rELAXRSTRNTREGDT;
  int rN;
  String rELAXRSTRNTETC;
  String rELAXGUBUN;
  String rELAXUSEYN;
  String rELAXGUBUNDETAIL;
  String rELAXZIPCODE;
  String rELAXRSTRNTNM;
  String rELAXADD2;
  String rELAXRSTRNTTEL;

  Data(
      {this.rELAXUPDATEDT,
        this.rELAXRSTRNTREPRESENT,
        this.rELAXADD1,
        this.rELAXSINM,
        this.rELAXSIDONM,
        this.rELAXSEQ,
        this.rELAXRSTRNTCNCLDT,
        this.rELAXRSTRNTREGDT,
        this.rN,
        this.rELAXRSTRNTETC,
        this.rELAXGUBUN,
        this.rELAXUSEYN,
        this.rELAXGUBUNDETAIL,
        this.rELAXZIPCODE,
        this.rELAXRSTRNTNM,
        this.rELAXADD2,
        this.rELAXRSTRNTTEL});

  Data.fromJson(Map<String, dynamic> json) {
    rELAXUPDATEDT = json['RELAX_UPDATE_DT'];
    rELAXRSTRNTREPRESENT = json['RELAX_RSTRNT_REPRESENT'];
    rELAXADD1 = json['RELAX_ADD1'];
    rELAXSINM = json['RELAX_SI_NM'];
    rELAXSIDONM = json['RELAX_SIDO_NM'];
    rELAXSEQ = json['RELAX_SEQ'];
    rELAXRSTRNTCNCLDT = json['RELAX_RSTRNT_CNCL_DT'];
    rELAXRSTRNTREGDT = json['RELAX_RSTRNT_REG_DT'];
    rN = json['RN'];
    rELAXRSTRNTETC = json['RELAX_RSTRNT_ETC'];
    rELAXGUBUN = json['RELAX_GUBUN'];
    rELAXUSEYN = json['RELAX_USE_YN'];
    rELAXGUBUNDETAIL = json['RELAX_GUBUN_DETAIL'];
    rELAXZIPCODE = json['RELAX_ZIPCODE'];
    rELAXRSTRNTNM = json['RELAX_RSTRNT_NM'];
    rELAXADD2 = json['RELAX_ADD2'];
    rELAXRSTRNTTEL = json['RELAX_RSTRNT_TEL'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['RELAX_UPDATE_DT'] = this.rELAXUPDATEDT;
    data['RELAX_RSTRNT_REPRESENT'] = this.rELAXRSTRNTREPRESENT;
    data['RELAX_ADD1'] = this.rELAXADD1;
    data['RELAX_SI_NM'] = this.rELAXSINM;
    data['RELAX_SIDO_NM'] = this.rELAXSIDONM;
    data['RELAX_SEQ'] = this.rELAXSEQ;
    data['RELAX_RSTRNT_CNCL_DT'] = this.rELAXRSTRNTCNCLDT;
    data['RELAX_RSTRNT_REG_DT'] = this.rELAXRSTRNTREGDT;
    data['RN'] = this.rN;
    data['RELAX_RSTRNT_ETC'] = this.rELAXRSTRNTETC;
    data['RELAX_GUBUN'] = this.rELAXGUBUN;
    data['RELAX_USE_YN'] = this.rELAXUSEYN;
    data['RELAX_GUBUN_DETAIL'] = this.rELAXGUBUNDETAIL;
    data['RELAX_ZIPCODE'] = this.rELAXZIPCODE;
    data['RELAX_RSTRNT_NM'] = this.rELAXRSTRNTNM;
    data['RELAX_ADD2'] = this.rELAXADD2;
    data['RELAX_RSTRNT_TEL'] = this.rELAXRSTRNTTEL;
    return data;
  }
}
