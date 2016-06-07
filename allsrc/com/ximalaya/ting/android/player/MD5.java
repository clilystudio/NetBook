package com.ximalaya.ting.android.player;

import java.math.BigInteger;
import java.security.MessageDigest;

public class MD5
{
  public static String md5(String paramString)
  {
    if (paramString != null)
      try
      {
        MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
        localMessageDigest.update(paramString.getBytes());
        String str;
        for (paramString = new BigInteger(1, localMessageDigest.digest()).toString(16); ; paramString = str)
        {
          if (paramString.length() >= 32)
            return paramString;
          str = "0" + paramString;
        }
      }
      catch (Exception localException)
      {
        Logger.log("md5加密出错" + localException.getMessage());
      }
    return paramString;
  }

  public static String md5(byte[] paramArrayOfByte)
  {
    Object localObject = "";
    if (paramArrayOfByte != null)
      try
      {
        MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
        localMessageDigest.update(paramArrayOfByte);
        String str;
        for (localObject = new BigInteger(1, localMessageDigest.digest()).toString(16); ; localObject = str)
        {
          if (((String)localObject).length() >= 32)
            return localObject;
          str = "0" + (String)localObject;
        }
      }
      catch (Exception localException)
      {
        Logger.log("md5加密出错" + localException.getMessage());
      }
    return (String)localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.player.MD5
 * JD-Core Version:    0.6.0
 */