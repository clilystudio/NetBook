package com.ximalaya.ting.android.player;

import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;

public class FileDesc
{
  private static final String TAG = "dl_mp3";
  public volatile BitSet chunkExist;
  private int chunkNum;
  public volatile ArrayList<Integer> chunkOffset;
  private int comChunkNum;
  private long comFileLen;
  private String dirPath;
  public volatile ArrayList<Integer> downloadedChunks;
  private String eTag;
  public volatile int statusCode;
  private String url;
  public volatile boolean valid;

  // ERROR //
  public FileDesc(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: invokespecial 32	java/lang/Object:<init>	()V
    //   6: aload_0
    //   7: iconst_0
    //   8: putfield 34	com/ximalaya/ting/android/player/FileDesc:valid	Z
    //   11: ldc 8
    //   13: ldc 36
    //   15: invokestatic 42	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   18: aload_0
    //   19: aload_1
    //   20: putfield 44	com/ximalaya/ting/android/player/FileDesc:dirPath	Ljava/lang/String;
    //   23: aload_0
    //   24: aload_2
    //   25: putfield 46	com/ximalaya/ting/android/player/FileDesc:url	Ljava/lang/String;
    //   28: aload_0
    //   29: invokespecial 50	com/ximalaya/ting/android/player/FileDesc:createCacheDir	()Z
    //   32: pop
    //   33: new 52	java/io/File
    //   36: dup
    //   37: new 54	java/lang/StringBuilder
    //   40: dup
    //   41: aload_1
    //   42: invokestatic 60	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   45: invokespecial 63	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   48: ldc 65
    //   50: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: aload_2
    //   54: invokestatic 75	com/ximalaya/ting/android/player/MD5:md5	(Ljava/lang/String;)Ljava/lang/String;
    //   57: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: ldc 77
    //   62: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   65: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   68: invokespecial 82	java/io/File:<init>	(Ljava/lang/String;)V
    //   71: astore 5
    //   73: new 52	java/io/File
    //   76: dup
    //   77: new 54	java/lang/StringBuilder
    //   80: dup
    //   81: aload_1
    //   82: invokestatic 60	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   85: invokespecial 63	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   88: ldc 65
    //   90: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: aload_2
    //   94: invokestatic 75	com/ximalaya/ting/android/player/MD5:md5	(Ljava/lang/String;)Ljava/lang/String;
    //   97: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: ldc 84
    //   102: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   105: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   108: invokespecial 82	java/io/File:<init>	(Ljava/lang/String;)V
    //   111: astore 6
    //   113: aload 5
    //   115: invokevirtual 87	java/io/File:exists	()Z
    //   118: aload 6
    //   120: invokevirtual 87	java/io/File:exists	()Z
    //   123: if_icmpeq +15 -> 138
    //   126: aload 5
    //   128: invokevirtual 90	java/io/File:delete	()Z
    //   131: pop
    //   132: aload 6
    //   134: invokevirtual 90	java/io/File:delete	()Z
    //   137: pop
    //   138: aload 5
    //   140: invokevirtual 87	java/io/File:exists	()Z
    //   143: ifne +10 -> 153
    //   146: aload_0
    //   147: aload_1
    //   148: aload_2
    //   149: invokevirtual 93	com/ximalaya/ting/android/player/FileDesc:initFileDescFormNet	(Ljava/lang/String;Ljava/lang/String;)V
    //   152: return
    //   153: new 95	java/io/FileInputStream
    //   156: dup
    //   157: new 54	java/lang/StringBuilder
    //   160: dup
    //   161: aload_1
    //   162: invokestatic 60	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   165: invokespecial 63	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   168: ldc 65
    //   170: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   173: aload_2
    //   174: invokestatic 75	com/ximalaya/ting/android/player/MD5:md5	(Ljava/lang/String;)Ljava/lang/String;
    //   177: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   180: ldc 77
    //   182: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   185: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   188: invokespecial 96	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   191: astore 7
    //   193: new 98	java/io/DataInputStream
    //   196: dup
    //   197: aload 7
    //   199: invokespecial 101	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   202: astore 8
    //   204: aload_0
    //   205: aload 8
    //   207: invokevirtual 104	java/io/DataInputStream:readUTF	()Ljava/lang/String;
    //   210: putfield 46	com/ximalaya/ting/android/player/FileDesc:url	Ljava/lang/String;
    //   213: aload_0
    //   214: getfield 46	com/ximalaya/ting/android/player/FileDesc:url	Ljava/lang/String;
    //   217: ifnull +14 -> 231
    //   220: aload_0
    //   221: getfield 46	com/ximalaya/ting/android/player/FileDesc:url	Ljava/lang/String;
    //   224: aload_2
    //   225: invokevirtual 108	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   228: ifne +32 -> 260
    //   231: aload 5
    //   233: invokevirtual 90	java/io/File:delete	()Z
    //   236: pop
    //   237: aload 6
    //   239: invokevirtual 90	java/io/File:delete	()Z
    //   242: pop
    //   243: aload_0
    //   244: aload_1
    //   245: aload_2
    //   246: invokevirtual 93	com/ximalaya/ting/android/player/FileDesc:initFileDescFormNet	(Ljava/lang/String;Ljava/lang/String;)V
    //   249: aload 7
    //   251: invokevirtual 111	java/io/FileInputStream:close	()V
    //   254: aload 8
    //   256: invokevirtual 112	java/io/DataInputStream:close	()V
    //   259: return
    //   260: aload_0
    //   261: aload 8
    //   263: invokevirtual 116	java/io/DataInputStream:readLong	()J
    //   266: putfield 118	com/ximalaya/ting/android/player/FileDesc:comFileLen	J
    //   269: aload_0
    //   270: aload 8
    //   272: invokevirtual 104	java/io/DataInputStream:readUTF	()Ljava/lang/String;
    //   275: putfield 120	com/ximalaya/ting/android/player/FileDesc:eTag	Ljava/lang/String;
    //   278: aload_0
    //   279: getfield 118	com/ximalaya/ting/android/player/FileDesc:comFileLen	J
    //   282: l2f
    //   283: ldc 121
    //   285: fdiv
    //   286: f2d
    //   287: invokestatic 127	java/lang/Math:ceil	(D)D
    //   290: d2i
    //   291: istore 17
    //   293: ldc 8
    //   295: new 54	java/lang/StringBuilder
    //   298: dup
    //   299: ldc 129
    //   301: invokespecial 63	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   304: aload_0
    //   305: getfield 118	com/ximalaya/ting/android/player/FileDesc:comFileLen	J
    //   308: invokevirtual 132	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   311: ldc 134
    //   313: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   316: iload 17
    //   318: invokevirtual 137	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   321: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   324: invokestatic 42	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   327: aload_0
    //   328: iload 17
    //   330: putfield 139	com/ximalaya/ting/android/player/FileDesc:comChunkNum	I
    //   333: aload_0
    //   334: aload 8
    //   336: invokevirtual 143	java/io/DataInputStream:readInt	()I
    //   339: putfield 145	com/ximalaya/ting/android/player/FileDesc:chunkNum	I
    //   342: new 147	java/util/ArrayList
    //   345: dup
    //   346: invokespecial 148	java/util/ArrayList:<init>	()V
    //   349: astore 18
    //   351: iconst_0
    //   352: istore 19
    //   354: iload 19
    //   356: aload_0
    //   357: getfield 145	com/ximalaya/ting/android/player/FileDesc:chunkNum	I
    //   360: if_icmplt +34 -> 394
    //   363: aload_0
    //   364: getfield 139	com/ximalaya/ting/android/player/FileDesc:comChunkNum	I
    //   367: ifle +16 -> 383
    //   370: aload_0
    //   371: iconst_1
    //   372: putfield 34	com/ximalaya/ting/android/player/FileDesc:valid	Z
    //   375: aload_0
    //   376: aload 18
    //   378: iload 17
    //   380: invokespecial 152	com/ximalaya/ting/android/player/FileDesc:initFromArray	(Ljava/util/ArrayList;I)V
    //   383: aload 7
    //   385: invokevirtual 111	java/io/FileInputStream:close	()V
    //   388: aload 8
    //   390: invokevirtual 112	java/io/DataInputStream:close	()V
    //   393: return
    //   394: aload 18
    //   396: new 154	java/lang/Integer
    //   399: dup
    //   400: aload 8
    //   402: invokevirtual 143	java/io/DataInputStream:readInt	()I
    //   405: invokespecial 157	java/lang/Integer:<init>	(I)V
    //   408: invokevirtual 160	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   411: pop
    //   412: iinc 19 1
    //   415: goto -61 -> 354
    //   418: astore 22
    //   420: aconst_null
    //   421: astore 8
    //   423: aload 5
    //   425: invokevirtual 90	java/io/File:delete	()Z
    //   428: pop
    //   429: aload 6
    //   431: invokevirtual 90	java/io/File:delete	()Z
    //   434: pop
    //   435: aload_0
    //   436: aload_1
    //   437: aload_2
    //   438: invokevirtual 93	com/ximalaya/ting/android/player/FileDesc:initFileDescFormNet	(Ljava/lang/String;Ljava/lang/String;)V
    //   441: aload_3
    //   442: ifnull +7 -> 449
    //   445: aload_3
    //   446: invokevirtual 111	java/io/FileInputStream:close	()V
    //   449: aload 8
    //   451: ifnull -299 -> 152
    //   454: aload 8
    //   456: invokevirtual 112	java/io/DataInputStream:close	()V
    //   459: return
    //   460: astore 11
    //   462: aconst_null
    //   463: astore 7
    //   465: aload 7
    //   467: ifnull +8 -> 475
    //   470: aload 7
    //   472: invokevirtual 111	java/io/FileInputStream:close	()V
    //   475: aload_3
    //   476: ifnull +7 -> 483
    //   479: aload_3
    //   480: invokevirtual 112	java/io/DataInputStream:close	()V
    //   483: aload 11
    //   485: athrow
    //   486: astore 11
    //   488: aconst_null
    //   489: astore_3
    //   490: goto -25 -> 465
    //   493: astore 14
    //   495: aload 8
    //   497: astore_3
    //   498: aload 14
    //   500: astore 11
    //   502: goto -37 -> 465
    //   505: astore 10
    //   507: aload_3
    //   508: astore 7
    //   510: aload 8
    //   512: astore_3
    //   513: aload 10
    //   515: astore 11
    //   517: goto -52 -> 465
    //   520: astore 21
    //   522: aload 7
    //   524: astore_3
    //   525: aconst_null
    //   526: astore 8
    //   528: goto -105 -> 423
    //   531: astore 9
    //   533: aload 7
    //   535: astore_3
    //   536: goto -113 -> 423
    //
    // Exception table:
    //   from	to	target	type
    //   153	193	418	java/io/IOException
    //   153	193	460	finally
    //   193	204	486	finally
    //   204	231	493	finally
    //   231	249	493	finally
    //   260	351	493	finally
    //   354	383	493	finally
    //   394	412	493	finally
    //   423	441	505	finally
    //   193	204	520	java/io/IOException
    //   204	231	531	java/io/IOException
    //   231	249	531	java/io/IOException
    //   260	351	531	java/io/IOException
    //   354	383	531	java/io/IOException
    //   394	412	531	java/io/IOException
  }

  private boolean createCacheDir()
  {
    File localFile = new File(XMediaPlayerConstants.INCOM_AUDIO_FILE_DIRECTORY);
    if ((!localFile.exists()) && (!localFile.mkdirs()))
    {
      Logger.log("dl_mp3", "目录不存在，创建失败！" + XMediaPlayerConstants.INCOM_AUDIO_FILE_DIRECTORY);
      return false;
    }
    return true;
  }

  private void initFromArray(ArrayList<Integer> paramArrayList, int paramInt)
  {
    this.chunkExist = new BitSet(paramInt);
    this.chunkOffset = new ArrayList(paramInt);
    int i = 0;
    if (i >= paramInt)
    {
      this.downloadedChunks = new ArrayList();
      this.downloadedChunks = paramArrayList;
    }
    for (int j = 0; ; j++)
    {
      if (j >= paramArrayList.size())
      {
        return;
        this.chunkOffset.add(i, Integer.valueOf(-1));
        i++;
        break;
      }
      this.chunkExist.set(((Integer)paramArrayList.get(j)).intValue());
      this.chunkOffset.set(((Integer)paramArrayList.get(j)).intValue(), Integer.valueOf(j));
    }
  }

  public boolean equals(Object paramObject)
  {
    int i;
    if (paramObject == this)
      i = 1;
    FileDesc localFileDesc;
    String str;
    do
    {
      boolean bool;
      do
      {
        return i;
        bool = paramObject instanceof FileDesc;
        i = 0;
      }
      while (!bool);
      localFileDesc = (FileDesc)paramObject;
      str = getUrl();
      i = 0;
    }
    while (str == null);
    return str.equals(localFileDesc.getUrl());
  }

  public int getComChunkNum()
  {
    return this.comChunkNum;
  }

  public int getComFileLen()
  {
    return (int)this.comFileLen;
  }

  public int getDownloadedChunks()
  {
    monitorenter;
    try
    {
      if (this.downloadedChunks != null)
      {
        int j = this.downloadedChunks.size();
        i = j;
        return i;
      }
      int i = 0;
    }
    finally
    {
      monitorexit;
    }
  }

  public String getETag()
  {
    return this.eTag;
  }

  public int getErrorCode()
  {
    return this.statusCode;
  }

  public String getUrl()
  {
    return this.url;
  }

  public int hashCode()
  {
    if (this.url == null)
      return 0;
    return this.url.hashCode();
  }

  public void initFileDescFormNet(String paramString1, String paramString2)
  {
    int i = 0;
    int k;
    label469: for (int j = 3; ; j = k)
    {
      k = j - 1;
      if (j <= 0);
      while (true)
        if (!this.valid)
        {
          Logger.log("dl_mp3", "valid0:" + this.valid + "comFileLen:" + this.comFileLen + "statusCode:" + this.statusCode);
          return;
          try
          {
            HttpURLConnection localHttpURLConnection = PlayerUtil.getHttpURLConnection(paramString2);
            localHttpURLConnection.setRequestMethod("HEAD");
            localHttpURLConnection.connect();
            this.statusCode = localHttpURLConnection.getResponseCode();
            if (this.statusCode >= 400)
              Logger.w("dl_mp3", "Error response code for get head for url: " + paramString2 + ",status code is: " + this.statusCode + " in handler thread");
            for (this.valid = false; ; this.valid = true)
            {
              this.comFileLen = localHttpURLConnection.getContentLength();
              Logger.log("dl_mp3", "conn.getContentLength():" + this.comFileLen);
              if (this.comFileLen <= 0L)
                this.valid = false;
              this.eTag = localHttpURLConnection.getHeaderField("ETag");
              localHttpURLConnection.disconnect();
              if (this.valid)
                break;
              break label469;
            }
          }
          catch (Exception localException)
          {
            this.valid = false;
          }
        }
      Logger.log("dl_mp3", "valid1:" + this.valid + "comFileLen:" + this.comFileLen + "statusCode:" + this.statusCode);
      this.comChunkNum = (int)Math.ceil((float)this.comFileLen / 65536.0F);
      Logger.log("dl_mp3", "calc001==comFileLen==:" + this.comFileLen + ",comChunkNum:" + this.comChunkNum + "statusCode:" + this.statusCode);
      this.chunkNum = 0;
      this.chunkExist = new BitSet(this.comChunkNum);
      if (this.comChunkNum > 0)
      {
        this.chunkOffset = new ArrayList(this.comChunkNum);
        while (true)
        {
          if (i >= this.comChunkNum)
          {
            this.downloadedChunks = new ArrayList();
            saveDescHeadToDisk(paramString1, MD5.md5(paramString2));
            this.valid = true;
            return;
          }
          this.chunkOffset.add(i, Integer.valueOf(-1));
          i++;
        }
      }
      this.valid = false;
      this.statusCode = 408;
      return;
    }
  }

  public boolean isChunkDownloaded(int paramInt)
  {
    monitorenter;
    try
    {
      BitSet localBitSet = this.chunkExist;
      int i = 0;
      if (localBitSet != null)
      {
        i = 0;
        if (paramInt >= 0)
        {
          int j = this.chunkExist.length();
          i = 0;
          if (paramInt < j)
          {
            boolean bool = this.chunkExist.get(paramInt);
            i = bool;
          }
        }
      }
      return i;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public boolean isIndexAvaliable(int paramInt)
  {
    BitSet localBitSet = this.chunkExist;
    int i = 0;
    if (localBitSet != null)
    {
      i = 0;
      if (paramInt >= 0)
      {
        int j = this.chunkExist.length();
        i = 0;
        if (paramInt < j)
          i = 1;
      }
    }
    return i;
  }

  public boolean isValid()
  {
    return (this.valid) && (this.comChunkNum > 0);
  }

  public void saveDescHeadToDisk(String paramString1, String paramString2)
  {
    monitorenter;
    try
    {
      Logger.log("dl_mp3", "saveDescHeadToDisk(" + paramString1 + ", " + paramString2 + ", " + this.comFileLen + ")");
      try
      {
        FileOutputStream localFileOutputStream = new FileOutputStream(paramString1 + "/" + paramString2 + ".index", false);
        DataOutputStream localDataOutputStream = new DataOutputStream(localFileOutputStream);
        localDataOutputStream.writeUTF(this.url);
        localDataOutputStream.writeLong(this.comFileLen);
        if (this.eTag == null);
        for (String str = ""; ; str = this.eTag)
        {
          localDataOutputStream.writeUTF(str);
          localDataOutputStream.writeInt(0);
          localDataOutputStream.flush();
          localDataOutputStream.close();
          localFileOutputStream.close();
          monitorexit;
          return;
        }
      }
      catch (Exception localException)
      {
        while (true)
          Logger.log("dl_mp3", "exception: saveDescHeadToDisk" + localException.getMessage());
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public boolean saveDescToDisk(String paramString1, String paramString2)
  {
    monitorenter;
    try
    {
      Logger.log("dl_mp3", "======================saveDescToDisk(" + paramString1 + ", " + paramString2 + ")");
      try
      {
        FileOutputStream localFileOutputStream = new FileOutputStream(paramString1 + "/" + paramString2 + ".index", false);
        DataOutputStream localDataOutputStream = new DataOutputStream(localFileOutputStream);
        localDataOutputStream.writeUTF(this.url);
        localDataOutputStream.writeLong(this.comFileLen);
        String str;
        Iterator localIterator;
        if (this.eTag == null)
        {
          str = "\"\"";
          localDataOutputStream.writeUTF(str);
          localDataOutputStream.writeInt(this.chunkNum);
          localIterator = this.downloadedChunks.iterator();
        }
        while (true)
        {
          if (!localIterator.hasNext())
          {
            localDataOutputStream.flush();
            localDataOutputStream.close();
            localFileOutputStream.close();
            i = 1;
            monitorexit;
            return i;
            str = "\"" + this.eTag + "\"";
            break;
          }
          localDataOutputStream.writeInt(((Integer)localIterator.next()).intValue());
        }
      }
      catch (Exception localException)
      {
        while (true)
          int i = 0;
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public void update(int paramInt)
  {
    monitorenter;
    try
    {
      BitSet localBitSet = this.chunkExist;
      if (localBitSet == null);
      while (true)
      {
        return;
        int i = this.downloadedChunks.size();
        this.chunkExist.set(paramInt);
        this.chunkOffset.set(paramInt, Integer.valueOf(i));
        this.downloadedChunks.add(new Integer(paramInt));
        this.chunkNum = (1 + this.chunkNum);
        saveDescToDisk(this.dirPath, MD5.md5(this.url));
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.player.FileDesc
 * JD-Core Version:    0.6.0
 */