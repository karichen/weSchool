package com.chk.util;

import org.springframework.web.bind.annotation.RequestParam;

public class StringChange {
    public static void main(String[] args) {
        String str="collegedepartment,major,nativeplace,housenature,homeaddress,nation,politi,bankcard,admission,graduation,parenttelephone,departuretime,returntime,destination,yesschool,calculation,mandarin,makeuptimes,failexam,chargename,teammembers,worktitle,workscategories,introduction,teamname,instructorname,instructorphone";
        String str2="学院/系别,专业名称,籍贯,户籍性质,家庭住址,民族,政治面貌,银行卡号,入学时间,毕业时间,家长电话,离校时间,返校时间,去向地点,是否留校,计算过级情况,普通话过级情况,补考次数,挂科情况,备注负责人姓名,团队成员,作品名称,作品/参赛类别,作品简介,团队名称,指导老师姓名,指导老师电话";
        //RequestParam(str);
        //ifnull(str);
        //ifnull(str);
        //setparam(str);
       // setexcel(str);
        //xcxList(str,str2);
        //isSelect(str,str2);
        //isSelectdata(str,str2);
        //onetoonedata(str);
       // isSelectdataone(str,str2);
        wxml(str,str2);
    }

    public static void RequestParam(String str){
        String[] strArray = null;
        strArray = str.split(","); //拆分字符为"," ,然后把结果交给数组strArray
        for (int i=0;i<strArray.length;i++){
            strArray[i]= "@RequestParam(value="+"\""+strArray[i]+"\""+",required = false,defaultValue = "+"\""+null+"\""+")String "+strArray[i]+","+"\n";
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (String s : strArray) {
            stringBuffer.append(s);
        }
        System.out.println(stringBuffer.toString());
    }
    public static void ifnull(String str){
        String[] strArray = null;
        strArray = str.split(","); //拆分字符为"," ,然后把结果交给数组strArray
        for (int i=0;i<strArray.length;i++){
            strArray[i]= strArray[i]+"=("+strArray[i]+"==\"null\"?null:"+strArray[i]+");\n";
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (String s : strArray) {
            stringBuffer.append(s);
        }
        System.out.println(stringBuffer.toString());
    }

    public static void setparam(String str){
        String[] strArray = null;
        strArray = str.split(","); //拆分字符为"," ,然后把结果交给数组strArray
        for (int i=0;i<strArray.length;i++){
            strArray[i]= "participant.set"+strArray[i]+"("+strArray[i]+");\n";
        }
        StringBuffer stringBuffer =new StringBuffer();
        for (String s : strArray) {
            stringBuffer.append(s);
        }
        System.out.println(stringBuffer.toString());
    }

    public static void setexcel(String str){
        String[] strArray = null;
        strArray = str.split(","); //拆分字符为"," ,然后把结果交给数组strArray
        for (int i=0;i<strArray.length;i++){
            strArray[i]= "if (!participant2.get"+strArray[i]+"().equals("+"\"null\""+")) {row1.createCell(i).setCellValue(participant2.get"+strArray[i]+"());i++;};\n";
        }
        StringBuffer stringBuffer =new StringBuffer();
        for (String s : strArray) {
            stringBuffer.append(s);
        }
        System.out.println(stringBuffer.toString());
    }

    public static void xcxList(String str,String str2){
        String[] strArray = null;
        String[] strArray2 = null;
        strArray = str.split(","); //拆分字符为"," ,然后把结果交给数组strArray
        strArray2 = str2.split(","); //拆分字符为"," ,然后把结果交给数组strArray2
        if (strArray.length==strArray2.length){
        for (int i=0;i<strArray.length;i++){
            strArray[i]=",{ id: "+(20+i)+", \nselect: false,\n name: "+"\'"+strArray2[i]+"\'"+", \nfiled: "+ "\""+strArray[i]+"\""+"\n }";
        }}
        StringBuffer stringBuffer =new StringBuffer();
        for (String s : strArray) {
            stringBuffer.append(s);
        }
        System.out.println(stringBuffer.toString());
    }

    public static void isSelect(String str,String str2){
        String[] strArray = null;
        String[] strArray2 = null;
        strArray = str.split(","); //拆分字符为"," ,然后把结果交给数组strArray
        strArray2 = str2.split(","); //拆分字符为"," ,然后把结果交给数组strArray2
        if (strArray.length==strArray2.length){
            for (int i=0;i<strArray.length;i++){
                char[] cs=strArray[i].toCharArray();
                cs[0]-=32;
                strArray[i]="isSelect"+String.valueOf(cs)+": false,\n";
            }}
        StringBuffer stringBuffer =new StringBuffer();
        for (String s : strArray) {
            stringBuffer.append(s);
        }
        System.out.println(stringBuffer.toString());
    }

    public static void isSelectdata(String str,String str2){
        String[] strArray = null;
        String[] strArray2 = null;
        strArray = str.split(","); //拆分字符为"," ,然后把结果交给数组strArray
        strArray2 = str2.split(","); //拆分字符为"," ,然后把结果交给数组strArray2
        if (strArray.length==strArray2.length){
            for (int i=0;i<strArray.length;i++){
                char[] cs=strArray[i].toCharArray();
                cs[0]-=32;
                strArray[i]= "if (that.data.isSelect"+String.valueOf(cs)+") var "+ strArray[i]+" = e.detail.value."+strArray[i]+";\nelse "+strArray[i] +"= null;\n";
            }}
        StringBuffer stringBuffer =new StringBuffer();
        for (String s : strArray) {
            stringBuffer.append(s);
        }
        System.out.println(stringBuffer.toString());
    }

    public static void onetoone(String str){
        String[] strArray = null;
        strArray = str.split(","); //拆分字符为"," ,然后把结果交给数组strArray
        for (int i=0;i<strArray.length;i++){
            strArray[i]=  strArray[i] +" : "+ strArray[i]+",\n";
        }
        StringBuffer stringBuffer =new StringBuffer();
        for (String s : strArray) {
            stringBuffer.append(s);
        }
        System.out.println(stringBuffer.toString());
    }

    public static void onetoonedata(String str){
        String[] strArray = null;
        strArray = str.split(","); //拆分字符为"," ,然后把结果交给数组strArray
        for (int i=0;i<strArray.length;i++){
            strArray[i]=  strArray[i] +" : that.data."+ strArray[i]+",\n";
        }
        StringBuffer stringBuffer =new StringBuffer();
        for (String s : strArray) {
            stringBuffer.append(s);
        }
        System.out.println(stringBuffer.toString());
    }

    public static void isSelectdataone(String str,String str2){
        String[] strArray = null;
        String[] strArray2 = null;
        strArray = str.split(","); //拆分字符为"," ,然后把结果交给数组strArray
        strArray2 = str2.split(","); //拆分字符为"," ,然后把结果交给数组strArray2
        if (strArray.length==strArray2.length){
            for (int i=0;i<strArray.length;i++){
                char[] cs=strArray[i].toCharArray();
                cs[0]-=32;
                strArray[i]="if (acts.includes(\""+strArray[i]+"\")) that.setData({ isSelect"+String.valueOf(cs)+": true });\n";
            }}
        StringBuffer stringBuffer =new StringBuffer();
        for (String s : strArray) {
            stringBuffer.append(s);
        }
        System.out.println(stringBuffer.toString());
    }

    public static void wxml(String str,String str2){
        String[] strArray = null;
        String[] strArray2 = null;
        strArray = str.split(","); //拆分字符为"," ,然后把结果交给数组strArray
        strArray2 = str2.split(","); //拆分字符为"," ,然后把结果交给数组strArray2
        if (strArray.length==strArray2.length){
            for (int i=0;i<strArray.length;i++){
                char[] cs=strArray[i].toCharArray();
                cs[0]-=32;
                strArray[i]="<view class=\"cu-form-group \" wx:if=\"{{isSelect"+String.valueOf(cs)+"}}\">\n <view class=\"title\">"+strArray2[i]+"</view>\n<input placeholder=\"\" name=\""+strArray[i]+"\"></input>\n </view>\n\n";
            }}
        StringBuffer stringBuffer =new StringBuffer();
        for (String s : strArray) {
            stringBuffer.append(s);
        }
        System.out.println(stringBuffer.toString());
    }

    public static void wxml2(String str,String str2){
        String[] strArray = null;
        String[] strArray2 = null;
        strArray = str.split(","); //拆分字符为"," ,然后把结果交给数组strArray
        strArray2 = str2.split(","); //拆分字符为"," ,然后把结果交给数组strArray2
        if (strArray.length==strArray2.length){
            for (int i=0;i<strArray.length;i++){
                char[] cs=strArray[i].toCharArray();
                cs[0]-=32;
                strArray[i]= "<view class=\"long-text\" wx:if=\"{{isSelect"+String.valueOf(cs)+"}}\">"+strArray2[i]+"：{{"+strArray[i]+"}}</view>\n";
            }}
        StringBuffer stringBuffer =new StringBuffer();
        for (String s : strArray) {
            stringBuffer.append(s);
        }
        System.out.println(stringBuffer.toString());
    }
}


