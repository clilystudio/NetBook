package com.ximalaya.ting.android.opensdk.util;

import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class HttpUrlUtil
{
  // ERROR //
  public static int downloadFile(String paramString1, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: invokestatic 16	com/ximalaya/ting/android/opensdk/util/HttpUrlUtil:getHttpURLConnection	(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    //   6: astore 8
    //   8: aload 8
    //   10: invokevirtual 21	java/net/HttpURLConnection:connect	()V
    //   13: aload 8
    //   15: invokevirtual 25	java/net/HttpURLConnection:getResponseCode	()I
    //   18: istore 9
    //   20: aload 8
    //   22: ldc 27
    //   24: invokevirtual 31	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   27: astore 10
    //   29: aconst_null
    //   30: astore_3
    //   31: iload 9
    //   33: sipush 200
    //   36: if_icmpne +210 -> 246
    //   39: aload 10
    //   41: invokestatic 37	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   44: istore 11
    //   46: aconst_null
    //   47: astore_3
    //   48: iload 11
    //   50: ifne +196 -> 246
    //   53: aload 10
    //   55: invokestatic 43	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   58: lconst_0
    //   59: lcmp
    //   60: ifgt +6 -> 66
    //   63: goto +183 -> 246
    //   66: aload 8
    //   68: invokevirtual 47	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   71: astore 12
    //   73: sipush 8192
    //   76: newarray byte
    //   78: astore 13
    //   80: new 49	java/io/File
    //   83: dup
    //   84: aload_1
    //   85: invokespecial 52	java/io/File:<init>	(Ljava/lang/String;)V
    //   88: astore 14
    //   90: aload 14
    //   92: invokevirtual 56	java/io/File:exists	()Z
    //   95: istore 15
    //   97: aconst_null
    //   98: astore_3
    //   99: iload 15
    //   101: ifne +9 -> 110
    //   104: aload 14
    //   106: invokevirtual 59	java/io/File:mkdirs	()Z
    //   109: pop
    //   110: new 61	java/io/FileOutputStream
    //   113: dup
    //   114: new 49	java/io/File
    //   117: dup
    //   118: aload 14
    //   120: aload_2
    //   121: invokespecial 64	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   124: iconst_0
    //   125: invokespecial 67	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   128: astore 17
    //   130: aload 12
    //   132: aload 13
    //   134: invokevirtual 73	java/io/InputStream:read	([B)I
    //   137: istore 18
    //   139: iload 18
    //   141: ifgt +24 -> 165
    //   144: aload 17
    //   146: invokevirtual 76	java/io/FileOutputStream:flush	()V
    //   149: aload 17
    //   151: invokevirtual 79	java/io/FileOutputStream:close	()V
    //   154: iconst_0
    //   155: ireturn
    //   156: astore 19
    //   158: aload 19
    //   160: invokevirtual 82	java/io/IOException:printStackTrace	()V
    //   163: iconst_0
    //   164: ireturn
    //   165: aload 17
    //   167: aload 13
    //   169: iconst_0
    //   170: iload 18
    //   172: invokevirtual 86	java/io/FileOutputStream:write	([BII)V
    //   175: goto -45 -> 130
    //   178: astore 4
    //   180: aload 17
    //   182: astore_3
    //   183: aload 4
    //   185: invokevirtual 82	java/io/IOException:printStackTrace	()V
    //   188: aload_3
    //   189: ifnull +7 -> 196
    //   192: aload_3
    //   193: invokevirtual 79	java/io/FileOutputStream:close	()V
    //   196: iconst_m1
    //   197: ireturn
    //   198: astore 7
    //   200: aload 7
    //   202: invokevirtual 82	java/io/IOException:printStackTrace	()V
    //   205: goto -9 -> 196
    //   208: astore 5
    //   210: aload_3
    //   211: ifnull +7 -> 218
    //   214: aload_3
    //   215: invokevirtual 79	java/io/FileOutputStream:close	()V
    //   218: aload 5
    //   220: athrow
    //   221: astore 6
    //   223: aload 6
    //   225: invokevirtual 82	java/io/IOException:printStackTrace	()V
    //   228: goto -10 -> 218
    //   231: astore 5
    //   233: aload 17
    //   235: astore_3
    //   236: goto -26 -> 210
    //   239: astore 4
    //   241: aconst_null
    //   242: astore_3
    //   243: goto -60 -> 183
    //   246: iconst_m1
    //   247: ireturn
    //
    // Exception table:
    //   from	to	target	type
    //   149	154	156	java/io/IOException
    //   130	139	178	java/io/IOException
    //   144	149	178	java/io/IOException
    //   165	175	178	java/io/IOException
    //   192	196	198	java/io/IOException
    //   2	29	208	finally
    //   39	46	208	finally
    //   53	63	208	finally
    //   66	97	208	finally
    //   104	110	208	finally
    //   110	130	208	finally
    //   183	188	208	finally
    //   214	218	221	java/io/IOException
    //   130	139	231	finally
    //   144	149	231	finally
    //   165	175	231	finally
    //   2	29	239	java/io/IOException
    //   39	46	239	java/io/IOException
    //   53	63	239	java/io/IOException
    //   66	97	239	java/io/IOException
    //   104	110	239	java/io/IOException
    //   110	130	239	java/io/IOException
  }

  public static HttpURLConnection getHttpURLConnection(String paramString)
  {
    return getHttpURLConnection(paramString, HttpUrlUtil.Config.DEFAULT);
  }

  public static HttpURLConnection getHttpURLConnection(String paramString, HttpUrlUtil.Config paramConfig)
  {
    URL localURL = new URL(paramString);
    if (paramConfig == null)
      paramConfig = HttpUrlUtil.Config.DEFAULT;
    HttpURLConnection localHttpURLConnection2;
    HttpURLConnection localHttpURLConnection1;
    if (paramConfig.useProxy)
    {
      localHttpURLConnection2 = (HttpURLConnection)localURL.openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(paramConfig.proxyHost, paramConfig.proxyPort)));
      if (TextUtils.isEmpty(paramConfig.authorization))
        break label199;
      localHttpURLConnection2.setRequestProperty("Authorization", paramConfig.authorization);
      localHttpURLConnection1 = localHttpURLConnection2;
    }
    while (true)
    {
      localHttpURLConnection1.setConnectTimeout(paramConfig.connectionTimeOut);
      localHttpURLConnection1.setReadTimeout(paramConfig.readTimeOut);
      localHttpURLConnection1.setUseCaches(paramConfig.useCache);
      localHttpURLConnection1.setRequestMethod(paramConfig.method);
      Iterator localIterator;
      if (paramConfig.property != null)
        localIterator = paramConfig.property.entrySet().iterator();
      while (true)
      {
        if (!localIterator.hasNext())
        {
          return localHttpURLConnection1;
          localHttpURLConnection1 = (HttpURLConnection)localURL.openConnection();
          break;
        }
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        localHttpURLConnection1.setRequestProperty((String)localEntry.getKey(), (String)localEntry.getValue());
      }
      label199: localHttpURLConnection1 = localHttpURLConnection2;
    }
  }

  public static int upload(String paramString1, String paramString2)
  {
    try
    {
      File localFile = new File(paramString2);
      if ((localFile.exists()) && (!localFile.isDirectory()) && (localFile.canRead()))
      {
        HttpURLConnection localHttpURLConnection = getHttpURLConnection(paramString1);
        localHttpURLConnection.setDoOutput(true);
        localHttpURLConnection.setRequestMethod("POST");
        localHttpURLConnection.setChunkedStreamingMode(134217728);
        localHttpURLConnection.setRequestProperty("connection", "Keep-Alive");
        localHttpURLConnection.setRequestProperty("Charset", "UTF-8");
        localHttpURLConnection.setRequestProperty("Content-Type", "multipart/form-data;file=" + localFile.getName());
        localHttpURLConnection.setRequestProperty("filename", localFile.getName());
        localHttpURLConnection.setRequestProperty("Content-Length", localFile.length());
        OutputStream localOutputStream = localHttpURLConnection.getOutputStream();
        FileInputStream localFileInputStream = new FileInputStream(localFile);
        byte[] arrayOfByte = new byte[8192];
        while (true)
        {
          int i = localFileInputStream.read(arrayOfByte);
          if (i <= 0)
          {
            localOutputStream.flush();
            localFileInputStream.close();
            localOutputStream.close();
            break;
          }
          localOutputStream.write(arrayOfByte, 0, i);
        }
      }
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      break label218;
      return -2;
    }
    label218: return -1;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.util.HttpUrlUtil
 * JD-Core Version:    0.6.0
 */