package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import org.springframework.format.annotation.DateTimeFormat;

import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.annotation.Excels;
import com.ruoyi.common.annotation.Excel.Type;
import com.ruoyi.common.core.domain.BaseEntity;
import java.util.Date;

/**
 * CTEPH调查表 sys_cteph
 * 
 * @author ruoyi
 * @date 2019-08-05
 */
public class SysCteph extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 主键 */
	private Integer id;
	/** 编码 */
	private String code;
	/** 科室 */
	private Integer department;

    /** 部门对象 */
    @Excels({
        @Excel(name = "部门名称", targetAttr = "deptName", type = Type.EXPORT),
        @Excel(name = "部门负责人", targetAttr = "leader", type = Type.EXPORT)
    })
    private SysDept dept;

	/** 制表人 */
	private Integer maker;
	/** 患者姓名 */
	private String patientName;
	/** 患者性别 */
	private Integer patientSex;
	/** 患者地址 */
	private String patientAddress;
	/** 生日 */
	@DateTimeFormat(pattern = "YYYY-MM-DD")
	private Date birthday;
	/** 身高 */
	private Float height;
	/** 体重 */
	private Float weight;
	/** 首发症状时间 */
	@DateTimeFormat(pattern = "YYYY-MM-DD")
	private Date firsttime;
	/** 特殊临床症状体征 */
	private Integer specialsigns;
	/** 既往静脉血栓栓塞症（VTE）病史 */
	private Integer vtehistory;
	/** 急性肺栓塞 */
	private Integer ape;
	/** 下肢深静脉血栓 */
	private Integer ledvt;
	/** 其他部位深静脉血栓 */
	private String otherthrombus;
	/** 首发VTE事件时间 */
	@DateTimeFormat(pattern = "YYYY-MM-DD")
	private Date firstvtetime;
	/** 是否有VTE事件复发 */
	private Integer vterelapse;
	/** 恶性肿瘤 */
	private Integer malignanttumor;
	/** 具体肿瘤诊断 */
	private String specifictumor;
	/** 诊断时间 */
	@DateTimeFormat(pattern = "YYYY-MM-DD")
	private Date malignanttumordate;
	/** 脾切除 */
	private Integer splenectomy;
	/** 脾切除手术时间 */
	@DateTimeFormat(pattern = "YYYY-MM-DD")
	private Date splenectormydate;
	/** 起搏器植入 */
	private Integer pacemaker;
	/** 起搏器植入时间 */
	@DateTimeFormat(pattern = "YYYY-MM-DD")
	private Date pacemakerdate;
	/** 脑室心房分流手术 */
	private Integer atrialhistory;
	/** 手术时间 */
	@DateTimeFormat(pattern = "YYYY-MM-DD")
	private Date atrialhistorydate;
	/** 下肢静脉曲张 */
	private Integer levv;
	/** 下肢静脉曲张诊断时间 */
	@DateTimeFormat(pattern = "YYYY-MM-DD")
	private Date levvdate;
	/** 炎症性肠病 */
	private Integer ibd;
	/** 炎症性肠病具体诊断 */
	private String ibddiagnosis;
	/** 炎症性肠病诊断时间 */
	@DateTimeFormat(pattern = "YYYY-MM-DD")
	private Date ibddate;
	/** 结缔组织病 */
	private Integer connectivetissue;
	/** 抗磷脂抗体综合征 */
	private Integer aas;
	/** 狼疮抗凝物（LA） */
	private Integer la;
	/** ACL IgG */
	private Integer aclIgg;
	/** ACL IgM */
	private Integer aclIgm;
	/** β2GP1 IgG */
	private Integer lgg;
	/** β2GP1 IgM */
	private Integer lgm;
	/** 系统性红斑狼疮 */
	private Integer sie;
	/** 干燥综合征 */
	private Integer sjogrens;
	/** 系统性硬化症 */
	private Integer ssclerosis;
	/** 混合性结缔组织病 */
	private Integer mctd;
	/** 类风湿性关节炎 */
	private Integer rarthritis;
	/** 未分化结缔组织病 */
	private Integer uctd;
	/** 其他结缔组织病 */
	private Integer octd;
	/** 具体其他结缔组织病 */
	private String octdspecific;
	/** 高同型半胱氨酸（HCY）血症 */
	private Integer hps;
	/** HCY水平 */
	private Float hcylevel;
	/** 参考值上限 */
	private Float maximum;
	/** 易栓三项 */
	private Integer threeitems;
	/** ATIII % */
	private Float at;
	/** 蛋白S */
	private Float proteins;
	/** 蛋白C */
	private Float proteinc;
	/** 检测时或之前7日是否接受华法林抗凝治疗 */
	private Integer hat;
	/** 其他危险因素 */
	private Integer otherriskjudge;
	/** 具体危险因素 */
	private String otherrisk;
	/** 高血压 */
	private Integer hypertension;
	/** 冠心病 */
	private Integer coronaryheart;
	/** 冠心病是否已行血运重建 */
	private Integer revascularization;
	/** 糖尿病 */
	private Integer diabetes;
	/** 左心衰竭 */
	private Integer lhfailure;
	/** 左心衰竭具体 */
	private Integer lhfailurespecific;
	/** 慢性肾功能不全 */
	private Integer renalinsufficiency;
	/** 脑梗塞 */
	private Integer cerebralinfarction;
	/** 慢性阻塞性肺疾病 */
	private Integer copd;
	/** 先天性心脏病 */
	private Integer congenitalheart;
	/** 先天性心脏病具体 */
	private String chdspecific;
	/** 甲状腺功能减低 */
	private Integer hypothyroidism;
	/** 甲状腺功能亢进 */
	private Integer hyperthyroidism;
	/** 贫血 */
	private Integer anemia;
	/** 红细胞增多症 */
	private Integer polycythemia;
	/** 嗜酸粒细胞增多增多症 */
	private Integer eosinophilia;
	/** 血小板减低 */
	private Integer plateletlower;
	/** 血小板增多 */
	private Integer plateletup;
	/** 其他重要合并疾病 */
	private Integer othercomplications;
	/** 具体疾病 */
	private String othercomplicationss;
	/** 确诊CTEPH时心功能分级 */
	private Integer cteph;
	/** 6MWD是否进行 */
	private Integer sixmwd;
	/** 6MWD未进行原因 */
	private Integer noreason1;
	/** 步行距离（m） */
	private Float walking;
	/** 呼吸功能 */
	private Integer respiratory;
	/** VC MAX (%) */
	private Float vcmax;
	/** TLC (%) */
	private Float tlc;
	/** RV(%) */
	private Float rv;
	/** RV/TLC (%) */
	private Float rvtlc;
	/** FEV1 (%)实/预 */
	private Float fev1;
	/** FEV1/FVC (%)实测 */
	private Float fev1fvc;
	/** FEF25-75 (%) */
	private Float fef;
	/** TLCO SB (%) */
	private Float tlcosb;
	/** TLCO/VA (%) */
	private Float tlcova;
	/** 心肺运动试验 */
	private Integer cet;
	/** 心脏MRI */
	private Integer heartmri;
	/** 肺灌注显像 */
	private Integer ppi;
	/** CT肺动脉增强 */
	private Integer ctpat;
	/** MRI肺动脉增强 */
	private Integer mripae;
	/**  */
	private Integer cmri;
	/** 右心导管 */
	private Integer rhc;
	/** 右心导管未做原因 */
	private Integer noreason2;
	/** 其他原因 */
	private String otherreason;
	/** 肺动脉造影 */
	private Integer pa;
	/** 首次导管时间 */
	@DateTimeFormat(pattern = "YYYY-MM-DD")
	private Date firstcatheter;
	/** HR, bpm */
	private Float hr;
	/** BP收缩(mm Hg) */
	private Float bpshrink;
	/** BP舒张(mm Hg) */
	private Float bprelaxation;
	/** BP平均(mm Hg) */
	private Float bpave;
	/** RAP */
	private Integer rap;
	/** RAP收缩(mm Hg) */
	private Float rapshrink;
	/** RAP舒张(mm Hg) */
	private Float raprelaxation1;
	/** RAP平均(mm Hg) */
	private Float rapave;
	/** PAP */
	private Integer pap;
	/** PAP收缩(mm Hg) */
	private Float papshrink;
	/** PAP舒张(mm Hg) */
	private Float raprelaxation2;
	/** PAP平均(mm Hg) */
	private Float papave;
	/** PAWP */
	private Integer pawp;
	/** PAWP收缩(mm Hg) */
	private Float pawpshrink;
	/** PAWP舒张(mm Hg) */
	private Float pawprelaxation;
	/** PAWP平均(mm Hg) */
	private Float pawpave;
	/** CO (Qp), L/min */
	private Float co;
	/** CO测定方法 */
	private Integer comethod;
	/** CI, L/min/m2 */
	private Float ci;
	/** PVR, Wood U */
	private Float pvr;
	/** 左室舒张末内径LVEDD (mm) */
	private Float lvedd;
	/** 左室射血分数LVEF (%) */
	private Float lvef;
	/** 超声估测肺动脉收缩压PASP(mm Hg) */
	private Float pasp;
	/** 三尖瓣环收缩期位移 TAPSE（mm） */
	private Float tapse;
	/** 心包积液 */
	private Integer pe;
	/** 血型 */
	private Integer bloodgroup;
	/** D-二聚体(μg/mL) */
	private Float ddimer;
	/** NT-proBNP */
	private Integer nt;
	/** NT-proBNP pg/ml */
	private Float ntnumber;
	/** AST（IU/ml） */
	private Float ast;
	/** ALT（IU/ml） */
	private Float alt;
	/** Tbil（μmol/L） */
	private Float tbil;
	/** Dbil（μmol/L） */
	private Float dbil;
	/** 血Cr（μmol/L） */
	private Float cr;
	/** 动脉血气 */
	private Integer bloodgas;
	/** 动脉血气类型 */
	private Integer abgt;
	/** PCO2 mmHg */
	private Float pco;
	/** PO2 mmHg */
	private Float po;
	/** SaO2 % */
	private Float sao;
	/** P(A-a) mmHg */
	private Float paa;
	/** 抗凝治疗 */
	private Integer anticoagulant;
	/** 抗凝治疗药物 */
	private Integer drug1;
	/** 抗凝治疗其他药物 */
	private String otherdrug;
	/** 抗血小板治疗 */
	private Integer antiplatelet;
	/** 抗血小板治疗药物 */
	private Integer drug5;
	/** 抗血小板治疗其他药物 */
	private String otherdrug2;
	/** 靶向治疗 */
	private Integer targeting;
	/** 利奥西呱 */
	private Integer laxg;
	/** 5型磷酸二酯酶抑制剂 */
	private Integer fivepi;
	/** 5型磷酸二酯酶抑制剂药物 */
	private Integer drug2;
	/** 内皮素受体拮抗剂 */
	private Integer era;
	/** 内皮素受体拮抗剂药物 */
	private Integer drug3;
	/** 前列环素 */
	private Integer prostacyclin;
	/** 前列环素药物 */
	private Integer drug4;
	/** 肺动脉内膜剥脱术 */
	private Integer exfoliation;
	/** 肺动脉内膜剥脱术时间 */
	@DateTimeFormat(pattern = "YYYY-MM-DD")
	private Date exfoliationdate;
	/** 球囊肺动脉成形术 */
	private Integer angioplasty;
	/** 球囊肺动脉成形术时间 */
	@DateTimeFormat(pattern = "YYYY-MM-DD")
	private Date angioplastyfdate;
	/** 是否死亡 */
	private Integer death;
	/** 死亡原因 */
	private Integer deathreason;
	/** 时间戳 */
	private Date ts;
	/** 删除标记 */
	private Integer dr;
	/** SvO2 (肺动脉氧饱和度), % */
	private Float svo2;

	public void setId(Integer id) 
	{
		this.id = id;
	}

	public Integer getId() 
	{
		return id;
	}
	public void setCode(String code) 
	{
		this.code = code;
	}

	public String getCode() 
	{
		return code;
	}
	public void setDepartment(Integer department) 
	{
		this.department = department;
	}

	public Integer getDepartment() 
	{
		return department;
	}
	
    public SysDept getDept()
    {
        if (dept == null)
        {
            dept = new SysDept();
        }
        return dept;
    }

    public void setDept(SysDept dept)
    {
        this.dept = dept;
    }

	public void setMaker(Integer maker) 
	{
		this.maker = maker;
	}

	public Integer getMaker() 
	{
		return maker;
	}
	public void setPatientName(String patientName) 
	{
		this.patientName = patientName;
	}

	public String getPatientName() 
	{
		return patientName;
	}
	public void setPatientSex(Integer patientSex) 
	{
		this.patientSex = patientSex;
	}

	public Integer getPatientSex() 
	{
		return patientSex;
	}
	public void setPatientAddress(String patientAddress) 
	{
		this.patientAddress = patientAddress;
	}

	public String getPatientAddress() 
	{
		return patientAddress;
	}
	public void setBirthday(Date birthday) 
	{
		this.birthday = birthday;
	}

	public Date getBirthday() 
	{
		return birthday;
	}
	public void setHeight(Float height) 
	{
		this.height = height;
	}

	public Float getHeight() 
	{
		return height;
	}
	public void setWeight(Float weight) 
	{
		this.weight = weight;
	}

	public Float getWeight() 
	{
		return weight;
	}
	public void setFirsttime(Date firsttime) 
	{
		this.firsttime = firsttime;
	}

	public Date getFirsttime() 
	{
		return firsttime;
	}
	public void setSpecialsigns(Integer specialsigns) 
	{
		this.specialsigns = specialsigns;
	}

	public Integer getSpecialsigns() 
	{
		return specialsigns;
	}
	public void setVtehistory(Integer vtehistory) 
	{
		this.vtehistory = vtehistory;
	}

	public Integer getVtehistory() 
	{
		return vtehistory;
	}
	public void setApe(Integer ape) 
	{
		this.ape = ape;
	}

	public Integer getApe() 
	{
		return ape;
	}
	public void setLedvt(Integer ledvt) 
	{
		this.ledvt = ledvt;
	}

	public Integer getLedvt() 
	{
		return ledvt;
	}
	public void setOtherthrombus(String otherthrombus) 
	{
		this.otherthrombus = otherthrombus;
	}

	public String getOtherthrombus() 
	{
		return otherthrombus;
	}
	public void setFirstvtetime(Date firstvtetime) 
	{
		this.firstvtetime = firstvtetime;
	}

	public Date getFirstvtetime() 
	{
		return firstvtetime;
	}
	public void setVterelapse(Integer vterelapse) 
	{
		this.vterelapse = vterelapse;
	}

	public Integer getVterelapse() 
	{
		return vterelapse;
	}
	public void setMalignanttumor(Integer malignanttumor) 
	{
		this.malignanttumor = malignanttumor;
	}

	public Integer getMalignanttumor() 
	{
		return malignanttumor;
	}
	public void setSpecifictumor(String specifictumor) 
	{
		this.specifictumor = specifictumor;
	}

	public String getSpecifictumor() 
	{
		return specifictumor;
	}
	public void setMalignanttumordate(Date malignanttumordate) 
	{
		this.malignanttumordate = malignanttumordate;
	}

	public Date getMalignanttumordate() 
	{
		return malignanttumordate;
	}
	public void setSplenectomy(Integer splenectomy) 
	{
		this.splenectomy = splenectomy;
	}

	public Integer getSplenectomy() 
	{
		return splenectomy;
	}
	public void setSplenectormydate(Date splenectormydate) 
	{
		this.splenectormydate = splenectormydate;
	}

	public Date getSplenectormydate() 
	{
		return splenectormydate;
	}
	public void setPacemaker(Integer pacemaker) 
	{
		this.pacemaker = pacemaker;
	}

	public Integer getPacemaker() 
	{
		return pacemaker;
	}
	public void setPacemakerdate(Date pacemakerdate) 
	{
		this.pacemakerdate = pacemakerdate;
	}

	public Date getPacemakerdate() 
	{
		return pacemakerdate;
	}
	public void setAtrialhistory(Integer atrialhistory) 
	{
		this.atrialhistory = atrialhistory;
	}

	public Integer getAtrialhistory() 
	{
		return atrialhistory;
	}
	public void setAtrialhistorydate(Date atrialhistorydate) 
	{
		this.atrialhistorydate = atrialhistorydate;
	}

	public Date getAtrialhistorydate() 
	{
		return atrialhistorydate;
	}
	public void setLevv(Integer levv) 
	{
		this.levv = levv;
	}

	public Integer getLevv() 
	{
		return levv;
	}
	public void setLevvdate(Date levvdate) 
	{
		this.levvdate = levvdate;
	}

	public Date getLevvdate() 
	{
		return levvdate;
	}
	public void setIbd(Integer ibd) 
	{
		this.ibd = ibd;
	}

	public Integer getIbd() 
	{
		return ibd;
	}
	public void setIbddiagnosis(String ibddiagnosis) 
	{
		this.ibddiagnosis = ibddiagnosis;
	}

	public String getIbddiagnosis() 
	{
		return ibddiagnosis;
	}
	public void setIbddate(Date ibddate) 
	{
		this.ibddate = ibddate;
	}

	public Date getIbddate() 
	{
		return ibddate;
	}
	public void setConnectivetissue(Integer connectivetissue) 
	{
		this.connectivetissue = connectivetissue;
	}

	public Integer getConnectivetissue() 
	{
		return connectivetissue;
	}
	public void setAas(Integer aas) 
	{
		this.aas = aas;
	}

	public Integer getAas() 
	{
		return aas;
	}
	public void setLa(Integer la) 
	{
		this.la = la;
	}

	public Integer getLa() 
	{
		return la;
	}
	public void setAclIgg(Integer aclIgg) 
	{
		this.aclIgg = aclIgg;
	}

	public Integer getAclIgg() 
	{
		return aclIgg;
	}
	public void setAclIgm(Integer aclIgm) 
	{
		this.aclIgm = aclIgm;
	}

	public Integer getAclIgm() 
	{
		return aclIgm;
	}
	public void setLgg(Integer lgg) 
	{
		this.lgg = lgg;
	}

	public Integer getLgg() 
	{
		return lgg;
	}
	public void setLgm(Integer lgm) 
	{
		this.lgm = lgm;
	}

	public Integer getLgm() 
	{
		return lgm;
	}
	public void setSie(Integer sie) 
	{
		this.sie = sie;
	}

	public Integer getSie() 
	{
		return sie;
	}
	public void setSjogrens(Integer sjogrens) 
	{
		this.sjogrens = sjogrens;
	}

	public Integer getSjogrens() 
	{
		return sjogrens;
	}
	public void setSsclerosis(Integer ssclerosis) 
	{
		this.ssclerosis = ssclerosis;
	}

	public Integer getSsclerosis() 
	{
		return ssclerosis;
	}
	public void setMctd(Integer mctd) 
	{
		this.mctd = mctd;
	}

	public Integer getMctd() 
	{
		return mctd;
	}
	public void setRarthritis(Integer rarthritis) 
	{
		this.rarthritis = rarthritis;
	}

	public Integer getRarthritis() 
	{
		return rarthritis;
	}
	public void setUctd(Integer uctd) 
	{
		this.uctd = uctd;
	}

	public Integer getUctd() 
	{
		return uctd;
	}
	public void setOctd(Integer octd) 
	{
		this.octd = octd;
	}

	public Integer getOctd() 
	{
		return octd;
	}
	public void setOctdspecific(String octdspecific) 
	{
		this.octdspecific = octdspecific;
	}

	public String getOctdspecific() 
	{
		return octdspecific;
	}
	public void setHps(Integer hps) 
	{
		this.hps = hps;
	}

	public Integer getHps() 
	{
		return hps;
	}
	public void setHcylevel(Float hcylevel) 
	{
		this.hcylevel = hcylevel;
	}

	public Float getHcylevel() 
	{
		return hcylevel;
	}
	public void setMaximum(Float maximum) 
	{
		this.maximum = maximum;
	}

	public Float getMaximum() 
	{
		return maximum;
	}
	public void setThreeitems(Integer threeitems) 
	{
		this.threeitems = threeitems;
	}

	public Integer getThreeitems() 
	{
		return threeitems;
	}
	public void setAt(Float at) 
	{
		this.at = at;
	}

	public Float getAt() 
	{
		return at;
	}
	public void setProteins(Float proteins) 
	{
		this.proteins = proteins;
	}

	public Float getProteins() 
	{
		return proteins;
	}
	public void setProteinc(Float proteinc) 
	{
		this.proteinc = proteinc;
	}

	public Float getProteinc() 
	{
		return proteinc;
	}
	public void setHat(Integer hat) 
	{
		this.hat = hat;
	}

	public Integer getHat() 
	{
		return hat;
	}
	public void setOtherriskjudge(Integer otherriskjudge) 
	{
		this.otherriskjudge = otherriskjudge;
	}

	public Integer getOtherriskjudge() 
	{
		return otherriskjudge;
	}
	public void setOtherrisk(String otherrisk) 
	{
		this.otherrisk = otherrisk;
	}

	public String getOtherrisk() 
	{
		return otherrisk;
	}
	public void setHypertension(Integer hypertension) 
	{
		this.hypertension = hypertension;
	}

	public Integer getHypertension() 
	{
		return hypertension;
	}
	public void setCoronaryheart(Integer coronaryheart) 
	{
		this.coronaryheart = coronaryheart;
	}

	public Integer getCoronaryheart() 
	{
		return coronaryheart;
	}
	public void setRevascularization(Integer revascularization) 
	{
		this.revascularization = revascularization;
	}

	public Integer getRevascularization() 
	{
		return revascularization;
	}
	public void setDiabetes(Integer diabetes) 
	{
		this.diabetes = diabetes;
	}

	public Integer getDiabetes() 
	{
		return diabetes;
	}
	public void setLhfailure(Integer lhfailure) 
	{
		this.lhfailure = lhfailure;
	}

	public Integer getLhfailure() 
	{
		return lhfailure;
	}
	public void setLhfailurespecific(Integer lhfailurespecific) 
	{
		this.lhfailurespecific = lhfailurespecific;
	}

	public Integer getLhfailurespecific() 
	{
		return lhfailurespecific;
	}
	public void setRenalinsufficiency(Integer renalinsufficiency) 
	{
		this.renalinsufficiency = renalinsufficiency;
	}

	public Integer getRenalinsufficiency() 
	{
		return renalinsufficiency;
	}
	public void setCerebralinfarction(Integer cerebralinfarction) 
	{
		this.cerebralinfarction = cerebralinfarction;
	}

	public Integer getCerebralinfarction() 
	{
		return cerebralinfarction;
	}
	public void setCopd(Integer copd) 
	{
		this.copd = copd;
	}

	public Integer getCopd() 
	{
		return copd;
	}
	public void setCongenitalheart(Integer congenitalheart) 
	{
		this.congenitalheart = congenitalheart;
	}

	public Integer getCongenitalheart() 
	{
		return congenitalheart;
	}
	public void setChdspecific(String chdspecific) 
	{
		this.chdspecific = chdspecific;
	}

	public String getChdspecific() 
	{
		return chdspecific;
	}
	public void setHypothyroidism(Integer hypothyroidism) 
	{
		this.hypothyroidism = hypothyroidism;
	}

	public Integer getHypothyroidism() 
	{
		return hypothyroidism;
	}
	public void setHyperthyroidism(Integer hyperthyroidism) 
	{
		this.hyperthyroidism = hyperthyroidism;
	}

	public Integer getHyperthyroidism() 
	{
		return hyperthyroidism;
	}
	public void setAnemia(Integer anemia) 
	{
		this.anemia = anemia;
	}

	public Integer getAnemia() 
	{
		return anemia;
	}
	public void setPolycythemia(Integer polycythemia) 
	{
		this.polycythemia = polycythemia;
	}

	public Integer getPolycythemia() 
	{
		return polycythemia;
	}
	public void setEosinophilia(Integer eosinophilia) 
	{
		this.eosinophilia = eosinophilia;
	}

	public Integer getEosinophilia() 
	{
		return eosinophilia;
	}
	public void setPlateletlower(Integer plateletlower) 
	{
		this.plateletlower = plateletlower;
	}

	public Integer getPlateletlower() 
	{
		return plateletlower;
	}
	public void setPlateletup(Integer plateletup) 
	{
		this.plateletup = plateletup;
	}

	public Integer getPlateletup() 
	{
		return plateletup;
	}
	public void setOthercomplications(Integer othercomplications) 
	{
		this.othercomplications = othercomplications;
	}

	public Integer getOthercomplications() 
	{
		return othercomplications;
	}
	public void setOthercomplicationss(String othercomplicationss) 
	{
		this.othercomplicationss = othercomplicationss;
	}

	public String getOthercomplicationss() 
	{
		return othercomplicationss;
	}
	public void setCteph(Integer cteph) 
	{
		this.cteph = cteph;
	}

	public Integer getCteph() 
	{
		return cteph;
	}
	public void setSixmwd(Integer sixmwd) 
	{
		this.sixmwd = sixmwd;
	}

	public Integer getSixmwd() 
	{
		return sixmwd;
	}
	public void setNoreason1(Integer noreason1) 
	{
		this.noreason1 = noreason1;
	}

	public Integer getNoreason1() 
	{
		return noreason1;
	}
	public void setWalking(Float walking) 
	{
		this.walking = walking;
	}

	public Float getWalking() 
	{
		return walking;
	}
	public void setRespiratory(Integer respiratory) 
	{
		this.respiratory = respiratory;
	}

	public Integer getRespiratory() 
	{
		return respiratory;
	}
	public void setVcmax(Float vcmax) 
	{
		this.vcmax = vcmax;
	}

	public Float getVcmax() 
	{
		return vcmax;
	}
	public void setTlc(Float tlc) 
	{
		this.tlc = tlc;
	}

	public Float getTlc() 
	{
		return tlc;
	}
	public void setRv(Float rv) 
	{
		this.rv = rv;
	}

	public Float getRv() 
	{
		return rv;
	}
	public void setRvtlc(Float rvtlc) 
	{
		this.rvtlc = rvtlc;
	}

	public Float getRvtlc() 
	{
		return rvtlc;
	}
	public void setFev1(Float fev1) 
	{
		this.fev1 = fev1;
	}

	public Float getFev1() 
	{
		return fev1;
	}
	public void setFev1fvc(Float fev1fvc) 
	{
		this.fev1fvc = fev1fvc;
	}

	public Float getFev1fvc() 
	{
		return fev1fvc;
	}
	public void setFef(Float fef) 
	{
		this.fef = fef;
	}

	public Float getFef() 
	{
		return fef;
	}
	public void setTlcosb(Float tlcosb) 
	{
		this.tlcosb = tlcosb;
	}

	public Float getTlcosb() 
	{
		return tlcosb;
	}
	public void setTlcova(Float tlcova) 
	{
		this.tlcova = tlcova;
	}

	public Float getTlcova() 
	{
		return tlcova;
	}
	public void setCet(Integer cet) 
	{
		this.cet = cet;
	}

	public Integer getCet() 
	{
		return cet;
	}
	public void setHeartmri(Integer heartmri) 
	{
		this.heartmri = heartmri;
	}

	public Integer getHeartmri() 
	{
		return heartmri;
	}
	public void setPpi(Integer ppi) 
	{
		this.ppi = ppi;
	}

	public Integer getPpi() 
	{
		return ppi;
	}
	public void setCtpat(Integer ctpat) 
	{
		this.ctpat = ctpat;
	}

	public Integer getCtpat() 
	{
		return ctpat;
	}
	public void setMripae(Integer mripae) 
	{
		this.mripae = mripae;
	}

	public Integer getMripae() 
	{
		return mripae;
	}
	public void setCmri(Integer cmri) 
	{
		this.cmri = cmri;
	}

	public Integer getCmri() 
	{
		return cmri;
	}
	public void setRhc(Integer rhc) 
	{
		this.rhc = rhc;
	}

	public Integer getRhc() 
	{
		return rhc;
	}
	public void setNoreason2(Integer noreason2) 
	{
		this.noreason2 = noreason2;
	}

	public Integer getNoreason2() 
	{
		return noreason2;
	}
	public void setOtherreason(String otherreason) 
	{
		this.otherreason = otherreason;
	}

	public String getOtherreason() 
	{
		return otherreason;
	}
	public void setPa(Integer pa) 
	{
		this.pa = pa;
	}

	public Integer getPa() 
	{
		return pa;
	}
	public void setFirstcatheter(Date firstcatheter) 
	{
		this.firstcatheter = firstcatheter;
	}

	public Date getFirstcatheter() 
	{
		return firstcatheter;
	}
	public void setHr(Float hr) 
	{
		this.hr = hr;
	}

	public Float getHr() 
	{
		return hr;
	}
	public void setBpshrink(Float bpshrink) 
	{
		this.bpshrink = bpshrink;
	}

	public Float getBpshrink() 
	{
		return bpshrink;
	}
	public void setBprelaxation(Float bprelaxation) 
	{
		this.bprelaxation = bprelaxation;
	}

	public Float getBprelaxation() 
	{
		return bprelaxation;
	}
	public void setBpave(Float bpave) 
	{
		this.bpave = bpave;
	}

	public Float getBpave() 
	{
		return bpave;
	}
	public void setRap(Integer rap) 
	{
		this.rap = rap;
	}

	public Integer getRap() 
	{
		return rap;
	}
	public void setRapshrink(Float rapshrink) 
	{
		this.rapshrink = rapshrink;
	}

	public Float getRapshrink() 
	{
		return rapshrink;
	}
	public void setRaprelaxation1(Float raprelaxation1) 
	{
		this.raprelaxation1 = raprelaxation1;
	}

	public Float getRaprelaxation1() 
	{
		return raprelaxation1;
	}
	public void setRapave(Float rapave) 
	{
		this.rapave = rapave;
	}

	public Float getRapave() 
	{
		return rapave;
	}
	public void setPap(Integer pap) 
	{
		this.pap = pap;
	}

	public Integer getPap() 
	{
		return pap;
	}
	public void setPapshrink(Float papshrink) 
	{
		this.papshrink = papshrink;
	}

	public Float getPapshrink() 
	{
		return papshrink;
	}
	public void setRaprelaxation2(Float raprelaxation2) 
	{
		this.raprelaxation2 = raprelaxation2;
	}

	public Float getRaprelaxation2() 
	{
		return raprelaxation2;
	}
	public void setPapave(Float papave) 
	{
		this.papave = papave;
	}

	public Float getPapave() 
	{
		return papave;
	}
	public void setPawp(Integer pawp) 
	{
		this.pawp = pawp;
	}

	public Integer getPawp() 
	{
		return pawp;
	}
	public void setPawpshrink(Float pawpshrink) 
	{
		this.pawpshrink = pawpshrink;
	}

	public Float getPawpshrink() 
	{
		return pawpshrink;
	}
	public void setPawprelaxation(Float pawprelaxation) 
	{
		this.pawprelaxation = pawprelaxation;
	}

	public Float getPawprelaxation() 
	{
		return pawprelaxation;
	}
	public void setPawpave(Float pawpave) 
	{
		this.pawpave = pawpave;
	}

	public Float getPawpave() 
	{
		return pawpave;
	}
	public void setCo(Float co) 
	{
		this.co = co;
	}

	public Float getCo() 
	{
		return co;
	}
	public void setComethod(Integer comethod) 
	{
		this.comethod = comethod;
	}

	public Integer getComethod() 
	{
		return comethod;
	}
	public void setCi(Float ci) 
	{
		this.ci = ci;
	}

	public Float getCi() 
	{
		return ci;
	}
	public void setPvr(Float pvr) 
	{
		this.pvr = pvr;
	}

	public Float getPvr() 
	{
		return pvr;
	}
	public void setLvedd(Float lvedd) 
	{
		this.lvedd = lvedd;
	}

	public Float getLvedd() 
	{
		return lvedd;
	}
	public void setLvef(Float lvef) 
	{
		this.lvef = lvef;
	}

	public Float getLvef() 
	{
		return lvef;
	}
	public void setPasp(Float pasp) 
	{
		this.pasp = pasp;
	}

	public Float getPasp() 
	{
		return pasp;
	}
	public void setTapse(Float tapse) 
	{
		this.tapse = tapse;
	}

	public Float getTapse() 
	{
		return tapse;
	}
	public void setPe(Integer pe) 
	{
		this.pe = pe;
	}

	public Integer getPe() 
	{
		return pe;
	}
	public void setBloodgroup(Integer bloodgroup) 
	{
		this.bloodgroup = bloodgroup;
	}

	public Integer getBloodgroup() 
	{
		return bloodgroup;
	}
	public void setDdimer(Float ddimer) 
	{
		this.ddimer = ddimer;
	}

	public Float getDdimer() 
	{
		return ddimer;
	}
	public void setNt(Integer nt) 
	{
		this.nt = nt;
	}

	public Integer getNt() 
	{
		return nt;
	}
	public void setNtnumber(Float ntnumber) 
	{
		this.ntnumber = ntnumber;
	}

	public Float getNtnumber() 
	{
		return ntnumber;
	}
	public void setAst(Float ast) 
	{
		this.ast = ast;
	}

	public Float getAst() 
	{
		return ast;
	}
	public void setAlt(Float alt) 
	{
		this.alt = alt;
	}

	public Float getAlt() 
	{
		return alt;
	}
	public void setTbil(Float tbil) 
	{
		this.tbil = tbil;
	}

	public Float getTbil() 
	{
		return tbil;
	}
	public void setDbil(Float dbil) 
	{
		this.dbil = dbil;
	}

	public Float getDbil() 
	{
		return dbil;
	}
	public void setCr(Float cr) 
	{
		this.cr = cr;
	}

	public Float getCr() 
	{
		return cr;
	}
	public void setBloodgas(Integer bloodgas) 
	{
		this.bloodgas = bloodgas;
	}

	public Integer getBloodgas() 
	{
		return bloodgas;
	}
	public void setAbgt(Integer abgt) 
	{
		this.abgt = abgt;
	}

	public Integer getAbgt() 
	{
		return abgt;
	}
	public void setPco(Float pco) 
	{
		this.pco = pco;
	}

	public Float getPco() 
	{
		return pco;
	}
	public void setPo(Float po) 
	{
		this.po = po;
	}

	public Float getPo() 
	{
		return po;
	}
	public void setSao(Float sao) 
	{
		this.sao = sao;
	}

	public Float getSao() 
	{
		return sao;
	}
	public void setPaa(Float paa) 
	{
		this.paa = paa;
	}

	public Float getPaa() 
	{
		return paa;
	}
	public void setAnticoagulant(Integer anticoagulant) 
	{
		this.anticoagulant = anticoagulant;
	}

	public Integer getAnticoagulant() 
	{
		return anticoagulant;
	}
	public void setDrug1(Integer drug1) 
	{
		this.drug1 = drug1;
	}

	public Integer getDrug1() 
	{
		return drug1;
	}
	public void setOtherdrug(String otherdrug) 
	{
		this.otherdrug = otherdrug;
	}

	public String getOtherdrug() 
	{
		return otherdrug;
	}
	public void setAntiplatelet(Integer antiplatelet) 
	{
		this.antiplatelet = antiplatelet;
	}

	public Integer getAntiplatelet() 
	{
		return antiplatelet;
	}
	public void setDrug5(Integer drug5) 
	{
		this.drug5 = drug5;
	}

	public Integer getDrug5() 
	{
		return drug5;
	}
	public void setOtherdrug2(String otherdrug2) 
	{
		this.otherdrug2 = otherdrug2;
	}

	public String getOtherdrug2() 
	{
		return otherdrug2;
	}
	public void setTargeting(Integer targeting) 
	{
		this.targeting = targeting;
	}

	public Integer getTargeting() 
	{
		return targeting;
	}
	public void setLaxg(Integer laxg) 
	{
		this.laxg = laxg;
	}

	public Integer getLaxg() 
	{
		return laxg;
	}
	public void setFivepi(Integer fivepi) 
	{
		this.fivepi = fivepi;
	}

	public Integer getFivepi() 
	{
		return fivepi;
	}
	public void setDrug2(Integer drug2) 
	{
		this.drug2 = drug2;
	}

	public Integer getDrug2() 
	{
		return drug2;
	}
	public void setEra(Integer era) 
	{
		this.era = era;
	}

	public Integer getEra() 
	{
		return era;
	}
	public void setDrug3(Integer drug3) 
	{
		this.drug3 = drug3;
	}

	public Integer getDrug3() 
	{
		return drug3;
	}
	public void setProstacyclin(Integer prostacyclin) 
	{
		this.prostacyclin = prostacyclin;
	}

	public Integer getProstacyclin() 
	{
		return prostacyclin;
	}
	public void setDrug4(Integer drug4) 
	{
		this.drug4 = drug4;
	}

	public Integer getDrug4() 
	{
		return drug4;
	}
	public void setExfoliation(Integer exfoliation) 
	{
		this.exfoliation = exfoliation;
	}

	public Integer getExfoliation() 
	{
		return exfoliation;
	}
	public void setExfoliationdate(Date exfoliationdate) 
	{
		this.exfoliationdate = exfoliationdate;
	}

	public Date getExfoliationdate() 
	{
		return exfoliationdate;
	}
	public void setAngioplasty(Integer angioplasty) 
	{
		this.angioplasty = angioplasty;
	}

	public Integer getAngioplasty() 
	{
		return angioplasty;
	}
	public void setAngioplastyfdate(Date angioplastyfdate) 
	{
		this.angioplastyfdate = angioplastyfdate;
	}

	public Date getAngioplastyfdate() 
	{
		return angioplastyfdate;
	}
	public void setDeath(Integer death) 
	{
		this.death = death;
	}

	public Integer getDeath() 
	{
		return death;
	}
	public void setDeathreason(Integer deathreason) 
	{
		this.deathreason = deathreason;
	}

	public Integer getDeathreason() 
	{
		return deathreason;
	}
	public void setTs(Date ts) 
	{
		this.ts = ts;
	}

	public Date getTs() 
	{
		return ts;
	}
	public void setDr(Integer dr) 
	{
		this.dr = dr;
	}

	public Integer getDr() 
	{
		return dr;
	}
	public void setSvo2(Float svo2) 
	{
		this.svo2 = svo2;
	}

	public Float getSvo2() 
	{
		return svo2;
	}

    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("code", getCode())
            .append("department", getDepartment())
            .append("dept", getDept())
            .append("maker", getMaker())
            .append("patientName", getPatientName())
            .append("patientSex", getPatientSex())
            .append("patientAddress", getPatientAddress())
            .append("birthday", getBirthday())
            .append("height", getHeight())
            .append("weight", getWeight())
            .append("firsttime", getFirsttime())
            .append("specialsigns", getSpecialsigns())
            .append("vtehistory", getVtehistory())
            .append("ape", getApe())
            .append("ledvt", getLedvt())
            .append("otherthrombus", getOtherthrombus())
            .append("firstvtetime", getFirstvtetime())
            .append("vterelapse", getVterelapse())
            .append("malignanttumor", getMalignanttumor())
            .append("specifictumor", getSpecifictumor())
            .append("malignanttumordate", getMalignanttumordate())
            .append("splenectomy", getSplenectomy())
            .append("splenectormydate", getSplenectormydate())
            .append("pacemaker", getPacemaker())
            .append("pacemakerdate", getPacemakerdate())
            .append("atrialhistory", getAtrialhistory())
            .append("atrialhistorydate", getAtrialhistorydate())
            .append("levv", getLevv())
            .append("levvdate", getLevvdate())
            .append("ibd", getIbd())
            .append("ibddiagnosis", getIbddiagnosis())
            .append("ibddate", getIbddate())
            .append("connectivetissue", getConnectivetissue())
            .append("aas", getAas())
            .append("la", getLa())
            .append("aclIgg", getAclIgg())
            .append("aclIgm", getAclIgm())
            .append("lgg", getLgg())
            .append("lgm", getLgm())
            .append("sie", getSie())
            .append("sjogrens", getSjogrens())
            .append("ssclerosis", getSsclerosis())
            .append("mctd", getMctd())
            .append("rarthritis", getRarthritis())
            .append("uctd", getUctd())
            .append("octd", getOctd())
            .append("octdspecific", getOctdspecific())
            .append("hps", getHps())
            .append("hcylevel", getHcylevel())
            .append("maximum", getMaximum())
            .append("threeitems", getThreeitems())
            .append("at", getAt())
            .append("proteins", getProteins())
            .append("proteinc", getProteinc())
            .append("hat", getHat())
            .append("otherriskjudge", getOtherriskjudge())
            .append("otherrisk", getOtherrisk())
            .append("hypertension", getHypertension())
            .append("coronaryheart", getCoronaryheart())
            .append("revascularization", getRevascularization())
            .append("diabetes", getDiabetes())
            .append("lhfailure", getLhfailure())
            .append("lhfailurespecific", getLhfailurespecific())
            .append("renalinsufficiency", getRenalinsufficiency())
            .append("cerebralinfarction", getCerebralinfarction())
            .append("copd", getCopd())
            .append("congenitalheart", getCongenitalheart())
            .append("chdspecific", getChdspecific())
            .append("hypothyroidism", getHypothyroidism())
            .append("hyperthyroidism", getHyperthyroidism())
            .append("anemia", getAnemia())
            .append("polycythemia", getPolycythemia())
            .append("eosinophilia", getEosinophilia())
            .append("plateletlower", getPlateletlower())
            .append("plateletup", getPlateletup())
            .append("othercomplications", getOthercomplications())
            .append("othercomplicationss", getOthercomplicationss())
            .append("cteph", getCteph())
            .append("sixmwd", getSixmwd())
            .append("noreason1", getNoreason1())
            .append("walking", getWalking())
            .append("respiratory", getRespiratory())
            .append("vcmax", getVcmax())
            .append("tlc", getTlc())
            .append("rv", getRv())
            .append("rvtlc", getRvtlc())
            .append("fev1", getFev1())
            .append("fev1fvc", getFev1fvc())
            .append("fef", getFef())
            .append("tlcosb", getTlcosb())
            .append("tlcova", getTlcova())
            .append("cet", getCet())
            .append("heartmri", getHeartmri())
            .append("ppi", getPpi())
            .append("ctpat", getCtpat())
            .append("mripae", getMripae())
            .append("cmri", getCmri())
            .append("rhc", getRhc())
            .append("noreason2", getNoreason2())
            .append("otherreason", getOtherreason())
            .append("pa", getPa())
            .append("firstcatheter", getFirstcatheter())
            .append("hr", getHr())
            .append("bpshrink", getBpshrink())
            .append("bprelaxation", getBprelaxation())
            .append("bpave", getBpave())
            .append("rap", getRap())
            .append("rapshrink", getRapshrink())
            .append("raprelaxation1", getRaprelaxation1())
            .append("rapave", getRapave())
            .append("pap", getPap())
            .append("papshrink", getPapshrink())
            .append("raprelaxation2", getRaprelaxation2())
            .append("papave", getPapave())
            .append("pawp", getPawp())
            .append("pawpshrink", getPawpshrink())
            .append("pawprelaxation", getPawprelaxation())
            .append("pawpave", getPawpave())
            .append("co", getCo())
            .append("comethod", getComethod())
            .append("ci", getCi())
            .append("pvr", getPvr())
            .append("lvedd", getLvedd())
            .append("lvef", getLvef())
            .append("pasp", getPasp())
            .append("tapse", getTapse())
            .append("pe", getPe())
            .append("bloodgroup", getBloodgroup())
            .append("ddimer", getDdimer())
            .append("nt", getNt())
            .append("ntnumber", getNtnumber())
            .append("ast", getAst())
            .append("alt", getAlt())
            .append("tbil", getTbil())
            .append("dbil", getDbil())
            .append("cr", getCr())
            .append("bloodgas", getBloodgas())
            .append("abgt", getAbgt())
            .append("pco", getPco())
            .append("po", getPo())
            .append("sao", getSao())
            .append("paa", getPaa())
            .append("anticoagulant", getAnticoagulant())
            .append("drug1", getDrug1())
            .append("otherdrug", getOtherdrug())
            .append("antiplatelet", getAntiplatelet())
            .append("drug5", getDrug5())
            .append("otherdrug2", getOtherdrug2())
            .append("targeting", getTargeting())
            .append("laxg", getLaxg())
            .append("fivepi", getFivepi())
            .append("drug2", getDrug2())
            .append("era", getEra())
            .append("drug3", getDrug3())
            .append("prostacyclin", getProstacyclin())
            .append("drug4", getDrug4())
            .append("exfoliation", getExfoliation())
            .append("exfoliationdate", getExfoliationdate())
            .append("angioplasty", getAngioplasty())
            .append("angioplastyfdate", getAngioplastyfdate())
            .append("death", getDeath())
            .append("deathreason", getDeathreason())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("ts", getTs())
            .append("dr", getDr())
            .append("svo2", getSvo2())
            .toString();
    }
}
