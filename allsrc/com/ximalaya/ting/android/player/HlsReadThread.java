package com.ximalaya.ting.android.player;

import java.io.File;
import java.util.concurrent.LinkedBlockingQueue;

public class HlsReadThread extends Thread
{
  private static final String TAG = "dl_hls";
  private volatile LinkedBlockingQueue<BufferItem> buffItemQueue;
  private volatile int curIndex;
  private volatile int fromIndex;
  private volatile boolean isResetIndex;
  private boolean isStop = false;
  public volatile boolean isWaiting = false;
  private int mDownloadIndex;
  private HlsAudioFile mHlsAudioFile;
  private String mSourceUrl;
  private XMediaplayerJNI mXMediaplayerJNI;
  private volatile Object synKey = new Object();
  public Object synObject = new Object();
  public Object synWaitObject = new Object();

  public HlsReadThread(HlsAudioFile paramHlsAudioFile, XMediaplayerJNI paramXMediaplayerJNI, String paramString, LinkedBlockingQueue<BufferItem> paramLinkedBlockingQueue)
  {
    this.mHlsAudioFile = paramHlsAudioFile;
    this.mXMediaplayerJNI = paramXMediaplayerJNI;
    this.mSourceUrl = paramString;
    this.buffItemQueue = paramLinkedBlockingQueue;
    this.isResetIndex = true;
  }

  private void putItem(BufferItem paramBufferItem)
  {
    if (!this.isResetIndex)
    {
      Logger.log("dl_hls", "putItem url:" + this.mHlsAudioFile.getPlayUrl(paramBufferItem.getIndex()) + " item Index:" + paramBufferItem.getIndex());
      Logger.log("dl_hls", "putItem buffItemQueue.size()0:" + this.buffItemQueue.size());
    }
    try
    {
      this.buffItemQueue.put(paramBufferItem);
      label85: Logger.log("dl_hls", "putItem buffItemQueue.size()1:" + this.buffItemQueue.size());
      return;
      Logger.log("dl_hls", "putItem buffItemQueue.size()2:" + this.buffItemQueue.size());
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      break label85;
    }
  }

  // ERROR //
  private int readChunkData(File paramFile, BufferItem paramBufferItem)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 119	java/io/RandomAccessFile
    //   5: dup
    //   6: aload_1
    //   7: ldc 121
    //   9: invokespecial 124	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   12: astore 4
    //   14: aload 4
    //   16: invokevirtual 128	java/io/RandomAccessFile:length	()J
    //   19: l2i
    //   20: newarray byte
    //   22: astore 9
    //   24: iconst_0
    //   25: istore 10
    //   27: aload 4
    //   29: aload 9
    //   31: iload 10
    //   33: aload 9
    //   35: arraylength
    //   36: iload 10
    //   38: isub
    //   39: invokevirtual 132	java/io/RandomAccessFile:read	([BII)I
    //   42: istore 11
    //   44: iload 10
    //   46: iload 11
    //   48: iadd
    //   49: istore 10
    //   51: iload 11
    //   53: ifgt -26 -> 27
    //   56: aload_2
    //   57: aload 9
    //   59: invokevirtual 136	com/ximalaya/ting/android/player/BufferItem:setBuffer	([B)V
    //   62: aload 4
    //   64: invokevirtual 139	java/io/RandomAccessFile:close	()V
    //   67: aload 4
    //   69: invokevirtual 139	java/io/RandomAccessFile:close	()V
    //   72: iload 10
    //   74: ireturn
    //   75: astore 14
    //   77: aload_3
    //   78: ifnull +7 -> 85
    //   81: aload_3
    //   82: invokevirtual 139	java/io/RandomAccessFile:close	()V
    //   85: iconst_m1
    //   86: ireturn
    //   87: astore 13
    //   89: aconst_null
    //   90: astore 4
    //   92: aload 13
    //   94: astore 7
    //   96: aload 4
    //   98: ifnull +8 -> 106
    //   101: aload 4
    //   103: invokevirtual 139	java/io/RandomAccessFile:close	()V
    //   106: aload 7
    //   108: athrow
    //   109: astore 12
    //   111: iload 10
    //   113: ireturn
    //   114: astore 6
    //   116: goto -31 -> 85
    //   119: astore 8
    //   121: goto -15 -> 106
    //   124: astore 7
    //   126: goto -30 -> 96
    //   129: astore 5
    //   131: aload 4
    //   133: astore_3
    //   134: goto -57 -> 77
    //
    // Exception table:
    //   from	to	target	type
    //   2	14	75	java/io/IOException
    //   2	14	87	finally
    //   67	72	109	java/io/IOException
    //   81	85	114	java/io/IOException
    //   101	106	119	java/io/IOException
    //   14	24	124	finally
    //   27	44	124	finally
    //   56	67	124	finally
    //   14	24	129	java/io/IOException
    //   27	44	129	java/io/IOException
    //   56	67	129	java/io/IOException
  }

  public void close()
  {
    this.isStop = true;
    if (this.buffItemQueue != null)
      this.buffItemQueue.clear();
    Logger.log(XMediaplayerJNI.Tag, "HlsReadThread hls readData close");
  }

  public int getCacheIndex()
  {
    if (this.mDownloadIndex == 0)
      return this.mHlsAudioFile.getPlayIndex();
    return this.mDownloadIndex;
  }

  public boolean isClose()
  {
    return this.isStop;
  }

  public void notifyDownload()
  {
    if (this.isWaiting)
      synchronized (this.synWaitObject)
      {
        this.isWaiting = false;
        this.synWaitObject.notify();
        return;
      }
  }

  public void resetIndex(LinkedBlockingQueue<BufferItem> paramLinkedBlockingQueue)
  {
    synchronized (this.synKey)
    {
      Logger.log("dl_hls", "resetIndex bq.size()0:" + paramLinkedBlockingQueue.size());
      this.isResetIndex = true;
      this.fromIndex = this.mHlsAudioFile.getPlayIndex();
      if (this.buffItemQueue != null)
        this.buffItemQueue.clear();
      this.buffItemQueue = paramLinkedBlockingQueue;
      Logger.log("dl_hls", "resetIndex bq.size()1:" + paramLinkedBlockingQueue.size());
      return;
    }
  }

  public void run()
  {
    this.fromIndex = this.mHlsAudioFile.getPlayIndex();
    this.isResetIndex = true;
    if ((this.isStop) || (!this.mXMediaplayerJNI.getPlayUrl().equals(this.mSourceUrl)));
    while (true)
    {
      String str1;
      while (true)
      {
        while (true)
        {
          this.isStop = true;
          Logger.log(XMediaplayerJNI.Tag, "HlsReadThread isStop:" + this.isStop + "cacheIndex:" + this.curIndex);
          return;
          synchronized (this.synKey)
          {
            if (this.isResetIndex)
            {
              Logger.log("dl_hls", "resetIndex isResetIndex buffItemQueue.size():" + this.buffItemQueue.size());
              this.isResetIndex = false;
              this.curIndex = this.fromIndex;
              this.mDownloadIndex = this.fromIndex;
            }
            if ((this.curIndex >= this.mHlsAudioFile.getPlayUrlsLength()) && (!this.mXMediaplayerJNI.getAudioType().equals(XMediaplayerJNI.AudioType.HLS_FILE)) && (!this.isResetIndex))
              continue;
            if (this.mDownloadIndex < this.curIndex)
              this.mDownloadIndex = this.curIndex;
            int i = -3 + XMediaPlayerConstants.DOWNLOAD_QUEUE_SIZE;
            if ((this.mDownloadIndex - this.curIndex >= i) || (this.buffItemQueue.size() < 3) || (this.isStop) || (this.mDownloadIndex >= this.mHlsAudioFile.getPlayUrlsLength()) || (this.isResetIndex))
            {
              if (this.isStop)
                continue;
              if (this.isResetIndex)
                break;
              str1 = this.mHlsAudioFile.getPlayUrl(this.curIndex);
              Logger.log("dl_hls", "HlsReadThread downUrl0:" + str1 + "    cacheIndex:" + this.curIndex + "getPlayUrlsLength:" + this.mHlsAudioFile.getPlayUrlsLength());
              if (str1 != null)
                break label630;
              if (!this.mXMediaplayerJNI.getAudioType().equals(XMediaplayerJNI.AudioType.HLS_FILE))
                continue;
              synchronized (this.synWaitObject)
              {
                this.isWaiting = true;
              }
            }
          }
        }
        try
        {
          this.synWaitObject.wait();
          monitorexit;
          break;
          localObject4 = finally;
          monitorexit;
          throw localObject4;
          localObject2 = finally;
          monitorexit;
          throw localObject2;
          String str2 = this.mHlsAudioFile.getPlayUrl(this.mDownloadIndex);
          if (!PlayerUtil.isDownloadHlsTs(str2))
            if (new HlsDownloadThread(str2, null).download() > 0)
            {
              Logger.log("dl_hls", "url:" + str2 + " downloadIndex:" + this.mDownloadIndex + "下载并且缓存成功1");
              this.mDownloadIndex = (1 + this.mDownloadIndex);
              this.mXMediaplayerJNI.onBufferingUpdateInner(this.mHlsAudioFile.getCachePercent());
            }
          while (true)
          {
            Logger.log("dl_hls", "getCachePercent percent mDownloadIndex:" + this.mDownloadIndex);
            break;
            Logger.log("dl_hls", "url:" + str2 + " downloadIndex:" + this.mDownloadIndex + "下载失败error1");
            continue;
            Logger.log("dl_hls", "url:" + str2 + " downloadIndex:" + this.mDownloadIndex + "本地已缓冲");
            this.mDownloadIndex = (1 + this.mDownloadIndex);
          }
        }
        catch (InterruptedException localInterruptedException)
        {
          while (true)
            localInterruptedException.printStackTrace();
        }
      }
      label630: if (PlayerUtil.isDownloadHlsTs(str1))
      {
        Logger.log("dl_hls", "url:" + str1 + " curIndex:" + this.curIndex + "缓存命中成功");
        BufferItem localBufferItem2 = new BufferItem();
        localBufferItem2.setIndex(this.curIndex);
        if (readChunkData(new File(PlayerUtil.getHlsFilePath(str1)), localBufferItem2) > 0)
        {
          Logger.log("dl_hls", "url:" + str1 + " curIndex:" + this.curIndex + "缓存获取成功");
          putItem(localBufferItem2);
          this.curIndex = (1 + this.curIndex);
          this.mXMediaplayerJNI.onBufferingUpdateInner(this.mHlsAudioFile.getCachePercent());
          break;
        }
        Logger.log("dl_hls", "url:" + str1 + " curIndex:" + this.curIndex + "缓存获取失败error");
      }
      BufferItem localBufferItem1 = new BufferItem();
      localBufferItem1.setIndex(this.curIndex);
      if (new HlsDownloadThread(str1, localBufferItem1).download() > 0)
      {
        putItem(localBufferItem1);
        Logger.log("dl_hls", "url:" + str1 + " curIndex:" + this.curIndex + "下载并且缓存成功2");
        this.curIndex = (1 + this.curIndex);
        this.mXMediaplayerJNI.onBufferingUpdateInner(this.mHlsAudioFile.getCachePercent());
        break;
      }
      Logger.log("dl_hls", "url:" + str1 + " curIndex:" + this.curIndex + "下载并且缓存失败2");
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.player.HlsReadThread
 * JD-Core Version:    0.6.0
 */