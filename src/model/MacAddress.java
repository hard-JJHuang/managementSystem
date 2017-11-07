package model;
/*
FileName:MACHomework.java
Author:����С��
Date:2004-7-5
E-mail:qiyadeng@hotmail.com
Purpose:��ȡ����������MAC��ַ
*/
import java.io.*;
import java.util.*;

public class MacAddress
{
 static private final int MACLength=18;
 public static void main(String args[])
 {
  System.out.print ("�����������ַ�ǣ�");
  System.out.println(getMACAddress());
 }
 static public String getMACAddress()
 {
  SysCommand syscmd=new SysCommand();
  //ϵͳ����
  String cmd="cmd.exe /c ipconfig/all";
  Vector result;
  result=syscmd.execute(cmd);
  return getCmdStr(result.toString());
 } 
 static public String  getCmdStr(String outstr)
 {
  String find="Physical Address. . . . . . . . . :";
  int findIndex=outstr.indexOf(find);
  if(findIndex==-1)
  {
   return "δ֪����";
  }
  else
  {
   return outstr.substring(findIndex+find.length()+1,findIndex+find.length()+MACLength);
  }
 }
}

//SysCommand��
class SysCommand
{
 Process p;
 public Vector execute(String cmd)
 {
  try
  {
   Start(cmd);
   Vector  vResult=new Vector();
   DataInputStream in=new DataInputStream(p.getInputStream());
   BufferedReader myReader=new BufferedReader(new InputStreamReader(in));
   String line;
   do
   {
    line=myReader.readLine();
    if(line==null)
    {
     break;
    }
    else
    {
     vResult.addElement(line);
    }
   }while(true);
   myReader.close();
   return vResult;
  }
  catch(Exception e)
  {
   return null;
   
  }

 }
 public void Start(String cmd)
 {
  try
  {
   if(p!=null)
   {
    kill();
   }
   Runtime sys=Runtime.getRuntime();
   p=sys.exec(cmd);
   
  }
  catch(Exception e)
  {
   
  }
 }
 public void kill()
 {
  if(p!=null)
  {
   p.destroy ();
   p=null;
  }
 }
  
}