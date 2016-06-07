package com.ximalaya.ting.android.player;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.concurrent.LinkedBlockingQueue;

public class ReadThread extends Thread
{
  private static final String TAG = "dl_mp3";
  private volatile LinkedBlockingQueue<BufferItem> buffItemQueue;
  private volatile int curIndex = 0;
  private DownloadThread currentDownload;
  private volatile int fromIndex;
  private volatile boolean isResetIndex;
  private int mDownloadIndex;
  private AudioFile mFile;
  private XMediaplayerJNI mXMediaplayerJNI;
  private volatile boolean stopFlag;
  private volatile Object synKey = new Object();

  public ReadThread(AudioFile paramAudioFile, int paramInt, LinkedBlockingQueue<BufferItem> paramLinkedBlockingQueue, XMediaplayerJNI paramXMediaplayerJNI)
  {
    this.mFile = paramAudioFile;
    this.fromIndex = paramInt;
    this.buffItemQueue = paramLinkedBlockingQueue;
    this.stopFlag = false;
    this.isResetIndex = true;
    this.mXMediaplayerJNI = paramXMediaplayerJNI;
  }

  private void putItem(BufferItem paramBufferItem)
  {
    if (!this.isResetIndex)
    {
      Logger.log("dl_mp3", "putItem url:" + this.mFile.getUrl() + " item Index:" + paramBufferItem.getIndex());
      Logger.log("dl_mp3", "resetIndex count3:" + this.buffItemQueue.size());
      this.buffItemQueue.put(paramBufferItem);
      Logger.log("dl_mp3", "resetIndex count4:" + this.buffItemQueue.size());
      return;
    }
    Logger.log("dl_mp3", "resetIndex count5:" + this.buffItemQueue.size());
  }

  private BufferItem readChunk(int paramInt)
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocate(65536);
    try
    {
      if (this.mFile.readChunkData(paramInt, 65536, localByteBuffer.array(), 0) == 65536)
      {
        BufferItem localBufferItem = new BufferItem();
        localBufferItem.setBuffer(localByteBuffer);
        localBufferItem.setIndex(paramInt);
        return localBufferItem;
      }
    }
    catch (IOException localIOException)
    {
    }
    return null;
  }

  public void close()
  {
    this.stopFlag = true;
    this.buffItemQueue.clear();
    if (this.currentDownload != null)
      this.currentDownload.close();
    this.mXMediaplayerJNI = null;
  }

  public AudioFile getAudioFile()
  {
    return this.mFile;
  }

  public int getCacheIndex()
  {
    return this.mDownloadIndex;
  }

  public int getCachePercent()
  {
    int i = (int)(100.0F * (this.mDownloadIndex / this.mFile.getFileInfo().getComChunkNum()));
    Logger.log("dl_mp3", "getCachePercent percent:" + i + " mDownloadIndex:" + this.mDownloadIndex + "getComChunkNum:" + this.mFile.getFileInfo().getComChunkNum());
    return i;
  }

  public boolean isClosed()
  {
    return this.stopFlag;
  }

  public void resetIndex(int paramInt, LinkedBlockingQueue<BufferItem> paramLinkedBlockingQueue)
  {
    synchronized (this.synKey)
    {
      Logger.log("dl_mp3", "resetIndex count0:" + paramLinkedBlockingQueue.size());
      this.isResetIndex = true;
      this.fromIndex = paramInt;
      if (this.buffItemQueue != null)
        this.buffItemQueue.clear();
      this.buffItemQueue = paramLinkedBlockingQueue;
      Logger.log("dl_mp3", "resetIndex count1:" + paramLinkedBlockingQueue.size());
      return;
    }
  }

  public void run()
  {
    Logger.log("dl_mp3", "======================ReadThread run() start");
    while (true)
    {
      label39: FileDesc localFileDesc;
      try
      {
        if (this.stopFlag)
          continue;
        boolean bool1 = this.mXMediaplayerJNI.getPlayUrl().equals(this.mFile.getFileInfo().getUrl());
        if (bool1)
          continue;
        this.stopFlag = true;
        Logger.log("dl_mp3", "======================ReadThread run() end");
        return;
        Logger.log("dl_mp3", "======================ReadThread while(" + this.curIndex + ":" + this.mFile.getFileInfo().getComChunkNum() + ")");
      }
      catch (Exception localException)
      {
        synchronized (this.synKey)
        {
          Logger.log("dl_mp3", "resetIndex count6:" + this.buffItemQueue.size());
          if (!this.isResetIndex)
            continue;
          this.isResetIndex = false;
          this.curIndex = this.fromIndex;
          this.mDownloadIndex = this.fromIndex;
          Logger.log("dl_mp3", "resetIndex count7:" + this.buffItemQueue.size());
          localFileDesc = this.mFile.getFileInfo();
          if (!localFileDesc.isValid())
          {
            BufferItem localBufferItem1 = new BufferItem();
            localBufferItem1.fails = true;
            localBufferItem1.errorCode = this.mFile.getFileInfo().statusCode;
            try
            {
              this.buffItemQueue.put(localBufferItem1);
            }
            catch (InterruptedException localInterruptedException1)
            {
              localInterruptedException1.printStackTrace();
            }
            continue;
            localException = localException;
            Logger.log("dl_mp3", "ReadThread Exception:" + localException.getMessage());
          }
        }
      }
      BufferItem localBufferItem2;
      if (this.curIndex >= localFileDesc.getComChunkNum())
      {
        localBufferItem2 = new BufferItem();
        localBufferItem2.setBuffer(ByteBuffer.allocate(65536));
        localBufferItem2.setIndex(this.curIndex);
        localBufferItem2.setLastChunk();
      }
      try
      {
        putItem(localBufferItem2);
        if (!this.isResetIndex)
          continue;
        if (this.mDownloadIndex < this.curIndex)
          this.mDownloadIndex = this.curIndex;
        int i = -3 + XMediaPlayerConstants.DOWNLOAD_QUEUE_SIZE;
        if ((this.mDownloadIndex - this.curIndex >= i) || (this.buffItemQueue.size() < 3) || (this.stopFlag) || (this.mDownloadIndex >= localFileDesc.getComChunkNum()) || (this.isResetIndex))
        {
          if (this.stopFlag)
            continue;
          if (this.isResetIndex)
            continue;
          this.mXMediaplayerJNI.onBufferingUpdateInner(getCachePercent());
          Logger.log("dl_mp3", "开始获取分段数据：url:" + this.mFile.getUrl() + " curIndex:" + this.curIndex);
          if (this.mFile.getFileInfo().isChunkDownloaded(this.curIndex))
            break label1088;
          Logger.log("dl_mp3", "url:" + this.mFile.getUrl() + " curIndex:" + this.curIndex + "缓存命中失败");
          DownloadThread localDownloadThread2 = new DownloadThread(this.mFile, this.curIndex);
          this.currentDownload = localDownloadThread2;
          if (localDownloadThread2.download() != 200)
            break label855;
          throw new IOException();
        }
      }
      catch (InterruptedException localInterruptedException2)
      {
        while (true)
        {
          localInterruptedException2.printStackTrace();
          continue;
          boolean bool2 = this.mFile.getFileInfo().isChunkDownloaded(this.mDownloadIndex);
          this.mXMediaplayerJNI.onBufferingUpdateInner(getCachePercent());
          if (!bool2)
          {
            if (new DownloadThread(this.mFile, this.mDownloadIndex).download() == 200)
              throw new IOException();
            if (this.mFile.getbBuffer() != null)
            {
              this.mFile.writeChunkData(this.mDownloadIndex, this.mFile.getbBuffer().array(), 0, this.mFile.getbBuffer().array().length);
              this.mFile.setbBuffer(null);
              Logger.log("dl_mp3", "url:" + this.mFile.getUrl() + " downloadIndex:" + this.mDownloadIndex + "下载并且缓存成功");
            }
          }
          else
          {
            this.mDownloadIndex = (1 + this.mDownloadIndex);
            Logger.log("dl_mp3", "getCachePercent percent mDownloadIndex0:" + this.mDownloadIndex);
            continue;
          }
          Logger.log("dl_mp3", "url:" + this.mFile.getUrl() + " downloadIndex:" + this.mDownloadIndex + "下载失败error");
        }
      }
    }
    label855: if (this.mFile.getbBuffer() != null)
    {
      BufferItem localBufferItem5 = new BufferItem();
      localBufferItem5.setBuffer(this.mFile.getbBuffer());
      localBufferItem5.setIndex(this.curIndex);
      putItem(localBufferItem5);
      this.mFile.writeChunkData(this.curIndex, this.mFile.getbBuffer().array(), 0, this.mFile.getbBuffer().array().length);
      this.mFile.setbBuffer(null);
      Logger.log("dl_mp3", "url:" + this.mFile.getUrl() + " curIndex:" + this.curIndex + "下载并且缓存成功");
      this.curIndex = (1 + this.curIndex);
    }
    while (true)
    {
      Logger.log("dl_mp3", "结束获取分段数据：url:" + this.mFile.getUrl() + " curIndex:" + this.curIndex);
      break;
      Logger.log("dl_mp3", "url:" + this.mFile.getUrl() + " curIndex:" + this.curIndex + "下载失败error");
      break label39;
      label1088: Logger.log("dl_mp3", "url:" + this.mFile.getUrl() + " curIndex:" + this.curIndex + "缓存命中成功");
      BufferItem localBufferItem3 = readChunk(this.curIndex);
      if (localBufferItem3 != null)
      {
        Logger.log("dl_mp3", "url:" + this.mFile.getUrl() + " curIndex:" + this.curIndex + "缓存获取成功");
        putItem(localBufferItem3);
        this.curIndex = (1 + this.curIndex);
        continue;
      }
      Logger.log("dl_mp3", "url:" + this.mFile.getUrl() + " curIndex:" + this.curIndex + "缓存获取失败error");
      DownloadThread localDownloadThread1 = new DownloadThread(this.mFile, this.curIndex);
      this.currentDownload = localDownloadThread1;
      localDownloadThread1.download();
      if (this.mFile.getbBuffer() == null)
        continue;
      BufferItem localBufferItem4 = new BufferItem();
      localBufferItem4.setBuffer(this.mFile.getbBuffer());
      localBufferItem4.setIndex(this.curIndex);
      putItem(localBufferItem4);
      this.mFile.setbBuffer(null);
      this.curIndex = (1 + this.curIndex);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.player.ReadThread
 * JD-Core Version:    0.6.0
 */