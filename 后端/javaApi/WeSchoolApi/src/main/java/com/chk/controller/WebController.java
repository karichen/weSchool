package com.chk.controller;

import com.chk.pojo.*;
import com.chk.service.*;
import com.chk.util.GetOpenid;
import com.chk.util.Password;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.apache.ibatis.annotations.Param;
import org.apache.poi.hssf.usermodel.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/activeWeb")

public class WebController {

    @Autowired
    Quser quser;

    @Autowired
    Active active;

    @Autowired
    Qriginator qriginator;

    @Autowired
    QuserService quserService;

    @Autowired
    ActiveService activeService;

    @Autowired
    Password password;

    @Autowired
    Danmu danmu;

    @Autowired
    UnitVideo unitVideo;

    @Autowired
    Examination examination;

    @Autowired
    ExamService examService;



    @Autowired
    Participant participant;

    @Autowired
    ParticipantService participantService;

    @Autowired
    FeedBacker feedBacker;

    @Autowired
    FeedBackService feedBackService;

    @Autowired
    UnitService unitService;

    @GetMapping("/registUser")
    @ResponseBody
    public Integer registUser(@RequestParam(value="userNick")String userNick,
                          @RequestParam(value="avaUrl")String avaUrl,
                          @RequestParam(value="gender")String  gender,
                          @RequestParam(value="openid")String openid){
      quser.setOpenid(openid);
      quser.setAvaUrl(avaUrl);
      quser.setGender(gender);
      quser.setUserNick(userNick);
      return quserService.addUser(quser);
    }

    @GetMapping("/createActive")
    @ResponseBody
    public String createActive(@RequestParam(value="active_major")String active_major,
                          @RequestParam(value="active_starttime")String active_starttime,
                          @RequestParam(value="active_endtime")String active_endtime,
                          @RequestParam(value="active_place")String active_place,
                          @RequestParam(value="active_salary")String active_salary,
                          @RequestParam(value="active_count")String active_count,
                          @RequestParam(value="activer_phone")String activer_phone,
                          @RequestParam(value="activer_QQ")String activer_QQ,
                          @RequestParam(value="active_remark")String active_remark,
                          @RequestParam(value="activer_openid")String activer_openid,
                          @RequestParam(value="fields")String fields) {

        //组装活动发起者
    qriginator.setPhone(activer_phone);
    qriginator.setQQ(activer_QQ);
    qriginator.setOpenid(activer_openid);

    //活动发起人组装到活动
    active.setQriginator(qriginator);
    //组装活动
    active.setMajor(active_major);
    active.setStarttime(active_starttime);
    active.setEndtime(active_endtime);
    active.setPlace(active_place);
    active.setSalary(active_salary);
    active.setCount(active_count);
    active.setRemark(active_remark);
    active.setFields(fields);
    String pwdid=password.generatePassword(10);

    if (activeService.addActive(active,pwdid)>0){
        return pwdid;
    }else {
        return "error";
    }

    }



    @RequestMapping(value = "/upload", method = {RequestMethod.POST, RequestMethod.GET})
    public ModelAndView uploadPicture(HttpServletRequest request, HttpServletResponse response) throws IOException {


        //获取pwdid
        String pwdid=request.getParameter("pwdid");

        //获取urlid
        String urlid=request.getParameter("urlid");

        MultipartHttpServletRequest req = (MultipartHttpServletRequest) request;

        //对应前端的upload的name参数"file"
        MultipartFile multipartFile = req.getFile("file");

        //realPath填写服务器文件夹路径
        Resource resource = new ClassPathResource("");
        String targetUrl=resource.getFile().getAbsolutePath();
        String realPath = targetUrl+"/static/images";

        //获取随机数
        String pwd=password.generatePassword(5);

        //格式化时间戳
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss");
        String nowTime = sdf.format(new Date().getTime());

        //裁剪用户id
        String originalFirstName = multipartFile.getOriginalFilename();
        String picFirstName = originalFirstName.substring(0, originalFirstName.indexOf("."));

        //取得图片的格式后缀
        String originalLastName = multipartFile.getOriginalFilename();
        String picLastName = originalLastName.substring(originalLastName.lastIndexOf("."));

        //拼接：mima+名字+时间戳+后缀
        String picName = pwd+ picFirstName + "." + nowTime + picLastName;
        try {
            File dir = new File(realPath);
            //如果文件目录不存在，创建文件目录
            if (!dir.exists()) {
                dir.mkdir();
                System.out.println("创建文件目录成功：" + realPath);
            }
            File file = new File(realPath, picName);
            multipartFile.transferTo(file);
            System.out.println("添加图片w成功！");
            String imgUrlname="https://weschool.petchk.cn/images"+"/"+picName;
           // String imgUrlname="http://127.0.0.1:8085/images"+"/"+picName;
            System.out.println(imgUrlname);
            System.out.println(pwdid);
            activeService.updateActiveImgUrls(pwdid,imgUrlname,urlid);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (IllegalStateException e) {
            e.printStackTrace();
        }
        return null;
    }

    //查询我创建的正在进行的活动
    @GetMapping("/queryMyActive")
    @ResponseBody
    public List<Active> queryMyActive(@RequestParam(value="activer_openid")String openid){
        qriginator.setOpenid(openid);
        active.setQriginator(qriginator);
        return activeService.queryActiveByOpenid(active);
    }

    //查询我创建的已经过期的活动
    @GetMapping("/queryMyHistoryActive")
    @ResponseBody
    public List<Active> queryMyHistoryActive(@RequestParam(value="activer_openid")String openid){
        qriginator.setOpenid(openid);
        active.setQriginator(qriginator);
        return activeService.queryHistoryActiveByOpenid(active);
    }

    @GetMapping("/queryActive")
    @ResponseBody
    public Active queryActive(@RequestParam(value="pwdid")String pwdid){
       active.setPwdid(pwdid);
      return activeService.queryActiveByPwdid(active);
    }



    @GetMapping("/updateActive")
    @ResponseBody
    public Integer updateActive(@RequestParam(value="active_major")String active_major,
                               @RequestParam(value="active_starttime")String active_starttime,
                               @RequestParam(value="active_endtime")String active_endtime,
                               @RequestParam(value="active_place")String active_place,
                               @RequestParam(value="active_salary")String active_salary,
                               @RequestParam(value="active_count")String active_count,
                               @RequestParam(value="activer_phone")String activer_phone,
                               @RequestParam(value="activer_QQ")String activer_QQ,
                               @RequestParam(value="active_remark")String active_remark,
                               @RequestParam(value="activer_openid")String activer_openid,
                                @RequestParam(value="fields")String fields,
                               @RequestParam(value="pwdid")String pwdid) {

        //组装活动发起者
        qriginator.setPhone(activer_phone);
        qriginator.setQQ(activer_QQ);
        qriginator.setOpenid(activer_openid);

        //活动发起人组装到活动
        active.setQriginator(qriginator);
        //组装活动
        active.setMajor(active_major);
        active.setStarttime(active_starttime);
        active.setEndtime(active_endtime);
        active.setPlace(active_place);
        active.setSalary(active_salary);
        active.setCount(active_count);
        active.setRemark(active_remark);
        active.setFields(fields);
        active.setPwdid(pwdid);

     return activeService.updateActive(active);

    }

    //查询所有正在进行的活动
    @GetMapping("/queryAllActive")
    @ResponseBody
    public List<Active> queryAllActive(){
        return activeService.queryAllActive();
    }

        //查询所有包含某关键字的的活动
    @GetMapping("/queryAllContentActive")
    @ResponseBody
    public List<Active> queryAllContentActive(@RequestParam("content")String content){
        return activeService.queryAllContentActive(content);
    }

    //查询所有过期的活动
    @GetMapping("/queryAllHistoryActive")
    @ResponseBody
    public List<Active> queryAllHistoryActive(){
        return activeService.queryAllHistoryActive();
    }


    //报名活动
    @GetMapping("/signUpActive")
    @ResponseBody
    public Integer signUpActive(@RequestParam(value="infoList",required = false,defaultValue = "null")String infoList,
                                @RequestParam(value="pwdid")String pwdid,
                                @RequestParam(value="openid")String openid
                                ) {
        infoList=(infoList=="null"?null:infoList);
        participant.setInfoList(infoList);
        participant.setOpenid(openid);
        participant.setPwdid(pwdid);
        return participantService.addParticipant(participant);
    }

    //查询我参加的正在进行的活动
    @GetMapping("/queryMypartActive")
    @ResponseBody
    public List<Active> queryMypartActive(@RequestParam(value="activer_openid")String openid){
        qriginator.setOpenid(openid);
        active.setQriginator(qriginator);
        return activeService.queryMypartAllActive(active);
    }


    //查询我参加的已经过期的活动
    @GetMapping("/queryHistoryMypartActive")
    @ResponseBody
    public List<Active> queryHistoryMypartActive(@RequestParam(value="activer_openid")String openid){
        qriginator.setOpenid(openid);
        active.setQriginator(qriginator);
        return activeService.queryHistoryMypartAllActive(active);
    }


    //取消参加活动
    @GetMapping("/cancelMypartActive")
    @ResponseBody
    public Integer cancelMypartActive(@RequestParam(value="activer_openid")String openid,
                                      @RequestParam(value="pwdid")String pwdid){
       participant.setOpenid(openid);
       participant.setPwdid(pwdid);
       return participantService.cancelMypart(participant);
    }


    //意见反馈接口
    @GetMapping("/feedBack")
    @ResponseBody
    public Integer feedBack(@RequestParam(value="name")String name,
                            @RequestParam(value="phone")String phone,
                            @RequestParam(value="QQ")String QQ,
                            @RequestParam(value="wxnum")String wx,
                            @RequestParam(value="feed_back")String feed_back,
                            @RequestParam(value="openid")String openid){
        feedBacker.setOpenid(openid);
        feedBacker.setName(name);
        feedBacker.setPhone(phone);
        feedBacker.setQQ(QQ);
        feedBacker.setWx(wx);
        feedBacker.setFeed_back(feed_back);
    return feedBackService.addFeedBackService(feedBacker);

    }

    //查询报名初略信息
    @GetMapping("/queryListQuser")
    @ResponseBody
    public List<Quser>  queryListQuser(@RequestParam(value="pwdid")String pwdid){
    return quserService.queryListQuser(pwdid);
    }

    //生成动态excel报名表
    @RequestMapping(value = "/ExcelDownloads", method = RequestMethod.GET)
    public void downloadAllClassmate(HttpServletRequest request,HttpServletResponse response) throws IOException {
        String pwdid= (String) request.getParameter("pwdid");
       // String pwdid="n2M5M7Pd1E";
        participant.setPwdid(pwdid);
        HSSFWorkbook workbook = new HSSFWorkbook();
        HSSFSheet sheet = workbook.createSheet("信息表");

        List<Participant> participantList = participantService.queryListParticipant(participant);
        String fileName = "kariInf"  + ".xls";//设置要导出的文件的名字
        //新增数据行，并且设置单元格数据

        int rowNum = 1;

        //获得需要处理字符串
        active.setPwdid(pwdid);
        String oldString=activeService.queryActiveByPwdid(active).getFields();
        String newString=oldString.replace("\"","").replace("[","").replace("]","");

        String[] headers = newString.split(",");
        //headers表示excel表中第一行的表头

        HSSFRow row = sheet.createRow(0);

        //在excel表中添加表头
        for(int i=0;i<headers.length;i++){
            HSSFCell cell = row.createCell(i);
            HSSFRichTextString text = new HSSFRichTextString(headers[i]);
            cell.setCellValue(text);
        }



       // 在表中存放查询到的数据放入对应的列
        for (Participant participant2 : participantList) {
            HSSFRow row1 = sheet.createRow(rowNum);
            int i=0;
            //取出报名信息
            String infoList=participant2.getInfoList();
            JSONArray json = JSONArray.fromObject(infoList);
            String value="";
            if (json.size()>0) {
                System.out.println("开始分拣");
                for (int j= 0; j< json.size(); j++) {
                    JSONObject job = json.getJSONObject(j);
                     value = (String) job.get("value");
                    row1.createCell(i).setCellValue(value);i++;
                }}
            rowNum++;
        }

        response.setContentType("application/octet-stream");
        response.setHeader("Content-disposition", "attachment;filename=" + fileName);
        response.flushBuffer();
        workbook.write(response.getOutputStream());
    }

    @ResponseBody
    @GetMapping("/deleteActive")
    public Integer deleteAcitve(@RequestParam(value = "activer_openid")String activer_openid,
                                @RequestParam(value = "pwdid")String pwdid){
     qriginator.setOpenid(activer_openid);
     active.setQriginator(qriginator);
     active.setPwdid(pwdid);
    return activeService.deleteActive(active);
    }

    @ResponseBody
    @GetMapping("/getOpenid")
    public String registOpenid(@RequestParam(value = "code")String code){
        GetOpenid god=new GetOpenid();
        return god.getOpenId("wx834e2a56e7a131b8","f693fcb7b5d44023b1dd77aee67d394a",code,"authorization_code");
    }

    @GetMapping("/adddanmu")
    @ResponseBody
    public int addDanmu(@RequestParam("id")Integer id,
                        @RequestParam("text")String text,
                        @RequestParam("color")String color,
                        @RequestParam("timed")String timed,
                        @RequestParam("videosrc")String videosrc,
                        @RequestParam("useropenid")String useropenid,
                        @RequestParam("imgUrl")String imgUrl,
                        @RequestParam("datetime")String datetime,
                        @RequestParam("nick")String nick,
                        @RequestParam("kind")String kind) {
        unitVideo.setId(id);
        danmu.setText(text);
        danmu.setColor(color);
        danmu.setTimed(timed);
        danmu.setVideosrc(videosrc);
        danmu.setUseropenid(useropenid);
        danmu.setImgUrl(imgUrl);
        danmu.setDatetime(datetime);
        danmu.setNick(nick);
        return unitService.addDanmu(unitVideo,danmu,kind);
    }

    @GetMapping("/returndanmu")
    @ResponseBody
    public List<Danmu>returnDanmu(@RequestParam("videosrc")String videosrc){
        danmu.setVideosrc(videosrc);
        return unitService.queryDanmu(danmu);

    }

    @GetMapping("/addpoints")
    @ResponseBody
    public int updatePoints(@RequestParam("id")Integer id,
                            @RequestParam("kind")String kind){
        return unitService.updatePoints(id,kind);
    }

    @GetMapping("/unitvideo")
    @ResponseBody
    public List<UnitVideo>unitVideo(@RequestParam("id")String id){
        Integer unitId= Integer.valueOf(id);
        unitVideo.setId(unitId);
        return unitService.queryUnit(unitVideo);
    }
    @GetMapping("/queryexamination")
    @ResponseBody
    public List<Examination>queryExamination(@RequestParam("unit_kind")String kind){
        examination.setKind(kind);
        List<Examination> examinations=examService.queryExaminationByKind(examination);
        return examinations;
    }
}
