package com.ximalaya.ting.android.player;

import android.os.Environment;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;

public class PlayerUtil
{
  private static String cpuInfo = "";
  private static String mAuthorization;
  private static String mProxyHost;
  private static int mProxyPort;

  public static boolean checkSdcard()
  {
    return ("mounted".equals(Environment.getExternalStorageState())) && (Environment.getExternalStorageDirectory().canWrite());
  }

  public static void cleanUpCacheSound(String paramString)
  {
    File localFile1 = new File(XMediaPlayerConstants.INCOM_AUDIO_FILE_DIRECTORY);
    String str2;
    String str1;
    if (localFile1.isDirectory())
    {
      if (TextUtils.isEmpty(paramString))
        break label203;
      String str3 = MD5.md5(paramString);
      str2 = str3 + ".chunk";
      str1 = str3 + ".index";
    }
    while (true)
    {
      File[] arrayOfFile2 = localFile1.listFiles();
      int k = arrayOfFile2.length;
      int m = 0;
      File[] arrayOfFile1;
      int i;
      if (m >= k)
      {
        File localFile2 = new File(XMediaPlayerConstants.HLS_TS_DIR);
        if (localFile2.isDirectory())
        {
          arrayOfFile1 = localFile2.listFiles();
          i = arrayOfFile1.length;
        }
      }
      for (int j = 0; ; j++)
      {
        if (j >= i)
        {
          return;
          File localFile3 = arrayOfFile2[m];
          if (((str2 == null) || (!str2.equalsIgnoreCase(localFile3.getName()))) && ((str1 == null) || (!str1.equalsIgnoreCase(localFile3.getName()))))
            localFile3.delete();
          m++;
          break;
        }
        arrayOfFile1[j].delete();
      }
      label203: str1 = null;
      str2 = null;
    }
  }

  public static boolean existSDCard()
  {
    return Environment.getExternalStorageState().equals("mounted");
  }

  public static String formatDuring(long paramLong)
  {
    if (paramLong >= 3600L)
    {
      int k = (int)(paramLong / 3600L);
      int m = (int)(paramLong % 3600L);
      if (m >= 60)
      {
        int n = m / 60;
        int i1 = m % 60;
        String str5;
        String str6;
        label116: StringBuilder localStringBuilder4;
        if (k < 10)
        {
          str5 = "0" + k;
          StringBuilder localStringBuilder3 = new StringBuilder(String.valueOf(str5)).append(":");
          if (n >= 10)
            break label177;
          str6 = "0" + n;
          localStringBuilder4 = localStringBuilder3.append(str6).append(":");
          if (i1 >= 10)
            break label187;
        }
        label177: label187: for (String str7 = "0" + i1; ; str7 = String.valueOf(i1))
        {
          return str7;
          str5 = String.valueOf(k);
          break;
          str6 = String.valueOf(n);
          break label116;
        }
      }
      String str3;
      StringBuilder localStringBuilder2;
      if (k < 10)
      {
        str3 = "0" + k;
        localStringBuilder2 = new StringBuilder(String.valueOf(str3)).append(":");
        if (m >= 10)
          break label289;
      }
      label289: for (String str4 = "00:0" + m; ; str4 = "00:" + m)
      {
        return str4;
        str3 = String.valueOf(k);
        break;
      }
    }
    if (paramLong >= 60L)
    {
      int i = (int)(paramLong / 60L);
      int j = (int)(paramLong % 60L);
      String str1;
      StringBuilder localStringBuilder1;
      if (i < 10)
      {
        str1 = "0" + i;
        localStringBuilder1 = new StringBuilder(String.valueOf(str1)).append(":");
        if (j >= 10)
          break label420;
      }
      label420: for (String str2 = "0" + j; ; str2 = String.valueOf(j))
      {
        return str2;
        str1 = String.valueOf(i);
        break;
      }
    }
    if (paramLong < 10L)
      return "00:0" + (int)paramLong;
    return "00:" + (int)paramLong;
  }

  public static String getCpuInfo()
  {
    if (!TextUtils.isEmpty(cpuInfo))
      return cpuInfo;
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new FileReader("/proc/cpuinfo"), 8192);
      String[] arrayOfString = localBufferedReader.readLine().split("\\s+");
      for (int i = 2; ; i++)
      {
        if (i >= arrayOfString.length)
        {
          localBufferedReader.close();
          label55: return cpuInfo;
        }
        cpuInfo = cpuInfo + arrayOfString[i] + " ";
      }
    }
    catch (IOException localIOException)
    {
      break label55;
    }
  }

  public static String getHlsFilePath(String paramString)
  {
    MD5.md5(paramString);
    new File(XMediaPlayerConstants.HLS_TS_DIR).mkdirs();
    return XMediaPlayerConstants.HLS_TS_DIR + File.separatorChar + paramString.substring(-20 + paramString.length(), paramString.length());
  }

  public static HttpURLConnection getHttpURLConnection(String paramString)
  {
    URL localURL = new URL(paramString);
    HttpURLConnection localHttpURLConnection;
    if (!TextUtils.isEmpty(mProxyHost))
    {
      localHttpURLConnection = (HttpURLConnection)localURL.openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(mProxyHost, mProxyPort)));
      if (!TextUtils.isEmpty(mAuthorization))
        localHttpURLConnection.setRequestProperty("Authorization", mAuthorization);
    }
    while (true)
    {
      localHttpURLConnection.setConnectTimeout(10000);
      localHttpURLConnection.setReadTimeout(10000);
      localHttpURLConnection.setUseCaches(true);
      return localHttpURLConnection;
      localHttpURLConnection = (HttpURLConnection)localURL.openConnection();
    }
  }

  public static final long getPlayCacheSize()
  {
    boolean bool = checkSdcard();
    float f = 0.0F;
    if (bool)
      f = 0.0F + (float)sizeOfDirectory(new File(XMediaPlayerConstants.INCOM_AUDIO_FILE_DIRECTORY)) + (float)sizeOfDirectory(new File(XMediaPlayerConstants.HLS_TS_DIR));
    return ()f;
  }

  public static boolean isDownloadHlsTs(String paramString)
  {
    File localFile = new File(getHlsFilePath(paramString));
    return (localFile.exists()) && (localFile.length() > 0L);
  }

  public static boolean isLocalFile(String paramString)
  {
    return (paramString == null) || (!paramString.startsWith("http://"));
  }

  public static boolean isRrmV7Plus()
  {
    String str = System.getProperty("os.arch");
    if ((str != null) && (str.contains("arm")));
    for (int i = 0; ; i++)
    {
      if (i >= str.length())
        return false;
      if ((str.charAt(i) >= '0') && (str.charAt(i) <= '9') && (str.charAt(i) >= '7'))
        return true;
    }
  }

  public static boolean isX86Arch()
  {
    String str = System.getProperty("os.arch");
    return (str != null) && (str.contains("86"));
  }

  public static void setAuthorization(String paramString)
  {
    mAuthorization = paramString;
  }

  public static void setProxyHost(String paramString)
  {
    mProxyHost = paramString;
  }

  public static void setProxyPort(int paramInt)
  {
    mProxyPort = paramInt;
  }

  public static long sizeOfDirectory(File paramFile)
  {
    long l = 0L;
    if ((paramFile == null) || (!paramFile.exists()));
    File[] arrayOfFile;
    while (true)
    {
      return l;
      if (!paramFile.isDirectory())
        return paramFile.length();
      arrayOfFile = paramFile.listFiles();
      if (arrayOfFile != null)
        break;
      String str;
      if (!paramFile.exists())
        str = paramFile + " does not exist";
      while (str != null)
      {
        return l;
        boolean bool = paramFile.isDirectory();
        str = null;
        if (bool)
          continue;
        str = paramFile + " is not a directory";
      }
    }
    int i = 0;
    label114: File localFile;
    if (i < arrayOfFile.length)
    {
      localFile = arrayOfFile[i];
      if (!localFile.isDirectory())
        break label149;
      l += sizeOfDirectory(localFile);
    }
    while (true)
    {
      i++;
      break label114;
      break;
      label149: l += localFile.length();
    }
  }

  public static void writeFile(String paramString, byte[] paramArrayOfByte, int paramInt)
  {
    try
    {
      if (paramString.contains("http"))
        paramString = paramString.substring(-10 + paramString.length(), paramString.length());
      File localFile = new File(XMediaPlayerConstants.APP_BASE_DIR + "/log/test/" + paramInt + "_" + paramString);
      localFile.getParentFile().mkdirs();
      FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
      localFileOutputStream.write(paramArrayOfByte);
      localFileOutputStream.close();
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.player.PlayerUtil
 * JD-Core Version:    0.6.0
 */