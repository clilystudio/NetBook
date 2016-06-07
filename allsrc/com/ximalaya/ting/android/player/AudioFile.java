package com.ximalaya.ting.android.player;

import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.BitSet;

public class AudioFile
{
  private static final String TAG = "dl_mp3";
  private ByteBuffer bBuffer;
  private String dirPath;
  private FileDesc fileInfo;
  private String fileName;
  private String mUrl = null;

  private AudioFile(String paramString1, String paramString2)
  {
    Logger.log("dl_mp3", "======================AudioFile Constructor()");
    this.dirPath = paramString1;
    this.fileName = MD5.md5(paramString2);
    this.mUrl = paramString2;
    this.fileInfo = new FileDesc(paramString1, paramString2);
  }

  public static AudioFile getAudioFile(String paramString1, String paramString2)
  {
    return new AudioFile(paramString1, paramString2);
  }

  private int readChunkData(int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    monitorenter;
    try
    {
      RandomAccessFile localRandomAccessFile = new RandomAccessFile(this.dirPath + "/" + this.fileName + ".chunk", "r");
      Logger.log("dl_mp3", "======================readChunkData0(" + paramInt1 + ":" + localRandomAccessFile.length() + ")");
      localRandomAccessFile.seek(paramInt1);
      int i = localRandomAccessFile.read(paramArrayOfByte, paramInt2, paramInt3);
      localRandomAccessFile.close();
      monitorexit;
      return i;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  // ERROR //
  private int writeChunkData(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 53	java/io/RandomAccessFile
    //   5: dup
    //   6: new 55	java/lang/StringBuilder
    //   9: dup
    //   10: aload_0
    //   11: getfield 32	com/ximalaya/ting/android/player/AudioFile:dirPath	Ljava/lang/String;
    //   14: invokestatic 61	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   17: invokespecial 64	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   20: ldc 66
    //   22: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   25: aload_0
    //   26: getfield 40	com/ximalaya/ting/android/player/AudioFile:fileName	Ljava/lang/String;
    //   29: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: ldc 72
    //   34: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   40: ldc 111
    //   42: invokespecial 79	java/io/RandomAccessFile:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   45: astore 4
    //   47: aload 4
    //   49: aload_0
    //   50: getfield 46	com/ximalaya/ting/android/player/AudioFile:fileInfo	Lcom/ximalaya/ting/android/player/FileDesc;
    //   53: invokevirtual 115	com/ximalaya/ting/android/player/FileDesc:getDownloadedChunks	()I
    //   56: bipush 16
    //   58: ishl
    //   59: i2l
    //   60: invokevirtual 99	java/io/RandomAccessFile:seek	(J)V
    //   63: aload 4
    //   65: aload_1
    //   66: iload_2
    //   67: iload_3
    //   68: invokevirtual 119	java/io/RandomAccessFile:write	([BII)V
    //   71: aload 4
    //   73: invokevirtual 106	java/io/RandomAccessFile:close	()V
    //   76: aload_0
    //   77: monitorexit
    //   78: iload_3
    //   79: ireturn
    //   80: astore 6
    //   82: iconst_m1
    //   83: istore_3
    //   84: goto -8 -> 76
    //   87: astore 5
    //   89: aload_0
    //   90: monitorexit
    //   91: aload 5
    //   93: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   2	76	80	java/io/IOException
    //   2	76	87	finally
  }

  public String getDirPath()
  {
    return this.dirPath;
  }

  public FileDesc getFileInfo()
  {
    monitorenter;
    try
    {
      FileDesc localFileDesc = this.fileInfo;
      monitorexit;
      return localFileDesc;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public String getFileName()
  {
    return this.fileName;
  }

  public String getFilePath()
  {
    return this.dirPath + "/" + this.fileName;
  }

  public String getUrl()
  {
    return this.mUrl;
  }

  public ByteBuffer getbBuffer()
  {
    return this.bBuffer;
  }

  public final boolean isChunkExists(int paramInt)
  {
    monitorenter;
    try
    {
      boolean bool = this.fileInfo.isChunkDownloaded(paramInt);
      if (bool)
      {
        i = 1;
        return i;
      }
      int i = 0;
    }
    finally
    {
      monitorexit;
    }
  }

  public int readChunkData(int paramInt1, int paramInt2, byte[] paramArrayOfByte, int paramInt3)
  {
    monitorenter;
    try
    {
      int i;
      if (!this.fileInfo.chunkExist.get(paramInt1))
      {
        Logger.log("dl_mp3", "fileInfo.chunkExist.get(" + paramInt1 + ")false");
        i = -1;
      }
      while (true)
      {
        return i;
        i = readChunkData(paramInt2 * ((Integer)this.fileInfo.chunkOffset.get(paramInt1)).intValue(), paramArrayOfByte, paramInt3, paramInt2);
        Logger.log("dl_mp3", "======================readChunkData(" + paramInt1 + ":" + i + ")");
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public void setbBuffer(ByteBuffer paramByteBuffer)
  {
    this.bBuffer = paramByteBuffer;
  }

  public void writeChunkData(int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    monitorenter;
    try
    {
      boolean bool = this.fileInfo.isChunkDownloaded(paramInt1);
      if (bool);
      while (true)
      {
        return;
        if (writeChunkData(paramArrayOfByte, paramInt2, paramInt3) <= 0)
          continue;
        this.fileInfo.update(paramInt1);
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public void writeFails(int paramInt)
  {
    monitorenter;
    try
    {
      this.fileInfo.valid = false;
      this.fileInfo.statusCode = paramInt;
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.player.AudioFile
 * JD-Core Version:    0.6.0
 */