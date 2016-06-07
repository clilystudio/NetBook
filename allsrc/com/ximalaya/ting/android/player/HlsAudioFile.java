package com.ximalaya.ting.android.player;

import com.ximalaya.ting.android.player.model.JNIDataModel;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

public class HlsAudioFile
{
  private LinkedBlockingQueue<BufferItem> buffItemQueue;
  private boolean isRunning = false;
  private int lastIndex = -1;
  private List<String> mHlsPlayUrls = new ArrayList();
  private HlsReadThread mHlsReadThread;
  private String mPlayUrl;
  private String mSourceUrl;
  private XMediaplayerJNI mXMediaplayerJNI;

  public HlsAudioFile(String paramString, XMediaplayerJNI paramXMediaplayerJNI)
  {
    this.mSourceUrl = paramString;
    this.mXMediaplayerJNI = paramXMediaplayerJNI;
  }

  private void startChacheFile()
  {
    if ((this.mHlsReadThread == null) || (this.mHlsReadThread.isClose()))
    {
      this.buffItemQueue = new LinkedBlockingQueue(3);
      this.mHlsReadThread = new HlsReadThread(this, this.mXMediaplayerJNI, this.mSourceUrl, this.buffItemQueue);
      this.isRunning = false;
    }
    if ((!this.mHlsReadThread.isAlive()) && (!this.isRunning) && (getPlayIndex() >= 0))
    {
      this.isRunning = true;
      this.mHlsReadThread.start();
    }
    this.mHlsReadThread.notifyDownload();
  }

  public void addPlayUrls(String[] paramArrayOfString)
  {
    if ((paramArrayOfString != null) && (paramArrayOfString.length > 0))
    {
      this.mHlsPlayUrls.addAll(Arrays.asList(paramArrayOfString));
      startChacheFile();
    }
  }

  public int getCachePercent()
  {
    if ((this.mHlsReadThread == null) || (getPlayUrlsLength() == 0))
      return 0;
    Logger.log(XMediaplayerJNI.Tag, "DownloadThread hls mHlsReadThread.getCacheIndex():" + this.mHlsReadThread.getCacheIndex() + "getPlayUrlsLength():" + getPlayUrlsLength());
    return (int)(100.0F * (this.mHlsReadThread.getCacheIndex() / getPlayUrlsLength()));
  }

  public List<String> getHlsPlayUrls()
  {
    return this.mHlsPlayUrls;
  }

  public int getPlayIndex()
  {
    if (this.mPlayUrl == null)
      return -1;
    return this.mHlsPlayUrls.indexOf(this.mPlayUrl);
  }

  public String getPlayUrl()
  {
    return this.mPlayUrl;
  }

  public String getPlayUrl(int paramInt)
  {
    if (paramInt < this.mHlsPlayUrls.size())
      return (String)this.mHlsPlayUrls.get(paramInt);
    return null;
  }

  public int getPlayUrlsLength()
  {
    return this.mHlsPlayUrls.size();
  }

  public long readData(JNIDataModel paramJNIDataModel)
  {
    Logger.log(XMediaplayerJNI.Tag, "hls readData callback:" + System.currentTimeMillis());
    this.mPlayUrl = paramJNIDataModel.filePath;
    boolean bool = this.mXMediaplayerJNI.getAudioType().equals(XMediaplayerJNI.AudioType.HLS_FILE);
    int i = 0;
    int j;
    if (!bool)
    {
      j = getPlayIndex();
      Logger.log(XMediaplayerJNI.Tag, "HlsReadThread notify555 curIndex:" + j + "lastIndex:" + this.lastIndex);
      int k = 1 + this.lastIndex;
      i = 0;
      if (k != j)
        break label227;
    }
    while (true)
    {
      this.lastIndex = j;
      startChacheFile();
      if (i != 0)
      {
        this.buffItemQueue = new LinkedBlockingQueue(3);
        this.mHlsReadThread.resetIndex(this.buffItemQueue);
      }
      try
      {
        BufferItem localBufferItem = (BufferItem)this.buffItemQueue.poll(30000L, TimeUnit.MILLISECONDS);
        Logger.log(XMediaplayerJNI.Tag, "dataStreamInputFuncCallBackT 3");
        if (localBufferItem == null)
        {
          Logger.log(XMediaplayerJNI.Tag, "dataStreamInputFuncCallBackT timeout item null");
          return -1L;
        }
        paramJNIDataModel.buf = localBufferItem.getBuffer().array();
        paramJNIDataModel.fileSize = paramJNIDataModel.buf.length;
        long l = paramJNIDataModel.fileSize;
        return l;
      }
      catch (InterruptedException localInterruptedException)
      {
        return -1L;
      }
      label227: i = 1;
    }
  }

  public void release()
  {
    if (this.mHlsReadThread != null)
      this.mHlsReadThread.close();
    if (this.buffItemQueue != null)
      this.buffItemQueue.clear();
  }

  public void setPlayUrl(String paramString)
  {
    this.mPlayUrl = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.player.HlsAudioFile
 * JD-Core Version:    0.6.0
 */