package com.ximalaya.ting.android.player;

import com.ximalaya.ting.android.player.model.JNIDataModel;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.util.UUID;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class AudioFileRequestHandler
{
  private LinkedBlockingQueue<BufferItem> buffItemQueue;
  private AtomicInteger mHandlerCnt = new AtomicInteger(0);
  private ReadThread mReadThread;
  private XMediaplayerJNI mXMediaplayerJNI;

  public AudioFileRequestHandler(XMediaplayerJNI paramXMediaplayerJNI)
  {
    this.mXMediaplayerJNI = paramXMediaplayerJNI;
  }

  private int readDataFromSD(String paramString, int paramInt, byte[] paramArrayOfByte)
  {
    monitorenter;
    try
    {
      RandomAccessFile localRandomAccessFile = new RandomAccessFile(paramString, "r");
      this.mXMediaplayerJNI.setCurFileSize(localRandomAccessFile.length());
      localRandomAccessFile.seek(paramInt);
      int i = 0;
      int j;
      do
      {
        j = localRandomAccessFile.read(paramArrayOfByte, i, paramArrayOfByte.length - i);
        i += j;
      }
      while (j > 0);
      localRandomAccessFile.close();
      return i;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  private boolean resetLoadDataPosition(int paramInt, JNIDataModel paramJNIDataModel)
  {
    Logger.log(XMediaplayerJNI.Tag, "dataStreamInputFuncCallBackT resetLoadDataPosition");
    this.buffItemQueue = new LinkedBlockingQueue(3);
    if ((this.mReadThread == null) || (this.mReadThread.isClosed()))
    {
      Logger.log(XMediaplayerJNI.Tag, "dataStreamInputFuncCallBackT resetLoadDataPosition0");
      AudioFile localAudioFile;
      try
      {
        localAudioFile = AudioFile.getAudioFile(XMediaPlayerConstants.INCOM_AUDIO_FILE_DIRECTORY, this.mXMediaplayerJNI.getPlayUrl());
        if ((localAudioFile == null) || (!localAudioFile.getFileInfo().isValid()))
        {
          Logger.log(XMediaplayerJNI.Tag, "mFile.getFileInfo().inValid()");
          return false;
        }
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        localFileNotFoundException.printStackTrace();
        return false;
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
        return false;
      }
      if (this.mReadThread != null)
        this.mReadThread.close();
      if (localAudioFile.getFileInfo().isValid())
      {
        int i = localAudioFile.getFileInfo().getComFileLen();
        paramJNIDataModel.fileSize = i;
        this.mXMediaplayerJNI.setCurFileSize(i);
        int j = paramInt / 65536;
        this.mReadThread = new ReadThread(localAudioFile, j, this.buffItemQueue, this.mXMediaplayerJNI);
        String str = UUID.randomUUID().toString() + this.mHandlerCnt.get();
        this.mReadThread.setName("t_Read_" + j + "_" + str);
        Logger.log(XMediaplayerJNI.Tag, "ReadThread.start()");
        this.mReadThread.start();
        return true;
      }
    }
    else
    {
      Logger.log(XMediaplayerJNI.Tag, "dataStreamInputFuncCallBackT resetLoadDataPosition1");
      int k = this.mReadThread.getAudioFile().getFileInfo().getComFileLen();
      paramJNIDataModel.fileSize = k;
      this.mXMediaplayerJNI.setCurFileSize(k);
      int m = paramInt / 65536;
      this.mReadThread.resetIndex(m, this.buffItemQueue);
      return true;
    }
    return false;
  }

  private boolean shallReloadData()
  {
    return (this.buffItemQueue == null) || ((this.mReadThread != null) && (this.mReadThread.isClosed()) && (this.buffItemQueue.size() == 0));
  }

  public int getCachePercent()
  {
    if (PlayerUtil.isLocalFile(this.mXMediaplayerJNI.getPlayUrl()))
      return 100;
    if (this.mReadThread == null)
      return 0;
    return this.mReadThread.getCachePercent();
  }

  public int readData(JNIDataModel paramJNIDataModel, boolean paramBoolean, int paramInt)
  {
    int i = 65536;
    if (PlayerUtil.isLocalFile(paramJNIDataModel.filePath))
    {
      if (paramJNIDataModel.bufSize > i);
      while (true)
      {
        paramJNIDataModel.buf = new byte[i];
        try
        {
          readDataFromSD(paramJNIDataModel.filePath, paramInt, paramJNIDataModel.buf);
          paramJNIDataModel.fileSize = this.mXMediaplayerJNI.getCurFileSize();
          this.mXMediaplayerJNI.onBufferingUpdateInner(getCachePercent());
          return paramJNIDataModel.buf.length;
          i = paramJNIDataModel.bufSize;
        }
        catch (IOException localIOException)
        {
          return -1;
        }
      }
    }
    if (((paramBoolean) || (shallReloadData())) && (!resetLoadDataPosition(paramInt, paramJNIDataModel)))
      return -1;
    long l = this.mXMediaplayerJNI.getCurFileSize();
    Logger.log(XMediaplayerJNI.Tag, "dataStreamInputFuncCallBackT 0 tCurFileSize:" + l);
    if (l <= 0L)
      return -1;
    Logger.log(XMediaplayerJNI.Tag, "dataStreamInputFuncCallBackT 1");
    if (!paramBoolean);
    try
    {
      if (this.mXMediaplayerJNI.tmepBuf != null)
      {
        paramJNIDataModel.buf = this.mXMediaplayerJNI.tmepBuf;
        this.mXMediaplayerJNI.tmepBuf = null;
        Logger.log(XMediaplayerJNI.Tag, "dataStreamInputFuncCallBackT read temp buf");
      }
      while (true)
      {
        paramJNIDataModel.fileSize = l;
        if (paramJNIDataModel.buf != null)
          break label725;
        return -1;
        Logger.log(XMediaplayerJNI.Tag, "dataStreamInputFuncCallBackT 2");
        this.mXMediaplayerJNI.tmepBuf = null;
        localBufferItem = (BufferItem)this.buffItemQueue.poll(30000L, TimeUnit.MILLISECONDS);
        Logger.log(XMediaplayerJNI.Tag, "dataStreamInputFuncCallBackT 3");
        if (localBufferItem == null)
        {
          Logger.log(XMediaplayerJNI.Tag, "dataStreamInputFuncCallBackT timeout item null");
          return -1;
        }
        Logger.log(XMediaplayerJNI.Tag, "dataStreamInputFuncCallBackT 4");
        int j = localBufferItem.getIndex();
        Logger.log(XMediaplayerJNI.Tag, "dataStreamInputFuncCallBackT seekParaTimeStampMs index:" + j);
        if (!paramBoolean)
          break;
        Logger.log(XMediaplayerJNI.Tag, "dataStreamInputFuncCallBackT seekParaTimeStampMs 1");
        int k = paramInt % 65536;
        Logger.log(XMediaplayerJNI.Tag, "dataStreamInputFuncCallBackT offset:" + k);
        int m = localBufferItem.getBuffer().array().length;
        if ((l != 0L) && (paramInt / 65536 == l / 65536L))
        {
          m = (int)(l % 65536L);
          Logger.log(XMediaplayerJNI.Tag, "dataStreamInputFuncCallBackT lastChunkLength:" + m);
          Logger.log(XMediaplayerJNI.Tag, "dataStreamInputFuncCallBackT seekParaTimeStampMs 2");
        }
        Logger.log(XMediaplayerJNI.Tag, "dataStreamInputFuncCallBackT offset:" + k + "length:" + m);
        ByteBuffer localByteBuffer1 = localBufferItem.getBuffer();
        localByteBuffer1.position(k).limit(m);
        ByteBuffer localByteBuffer2 = localByteBuffer1.slice();
        Logger.log(XMediaplayerJNI.Tag, "dataStreamInputFuncCallBackT slice remaining:" + localByteBuffer2.remaining());
        paramJNIDataModel.buf = new byte[localByteBuffer2.remaining()];
        localByteBuffer2.get(paramJNIDataModel.buf);
        Logger.log(XMediaplayerJNI.Tag, "dataStreamInputFuncCallBackT slice buf size:" + paramJNIDataModel.buf.length);
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
      {
        BufferItem localBufferItem;
        Logger.log(XMediaplayerJNI.Tag, "dataStreamInputFuncCallBackT 19" + localInterruptedException.getMessage());
        continue;
        Logger.log(XMediaplayerJNI.Tag, "dataStreamInputFuncCallBackT seekParaTimeStampMs 3");
        if ((l != 0L) && (paramInt / 65536 == l / 65536L))
        {
          int n = (int)(l % 65536L);
          ByteBuffer localByteBuffer3 = localBufferItem.getBuffer();
          localByteBuffer3.position(0).limit(n);
          ByteBuffer localByteBuffer4 = localByteBuffer3.slice();
          paramJNIDataModel.buf = new byte[localByteBuffer4.remaining()];
          localByteBuffer4.get(paramJNIDataModel.buf);
          Logger.log(XMediaplayerJNI.Tag, "dataStreamInputFuncCallBackT seekParaTimeStampMs 4");
          continue;
        }
        paramJNIDataModel.buf = localBufferItem.getBuffer().array();
        Logger.log(XMediaplayerJNI.Tag, "dataStreamInputFuncCallBackT seekParaTimeStampMs 5");
      }
    }
    label725: return paramJNIDataModel.buf.length;
  }

  public void release()
  {
    if (this.mReadThread != null)
    {
      this.mReadThread.close();
      this.mReadThread = null;
    }
    if (this.buffItemQueue != null)
      this.buffItemQueue.clear();
  }

  public void reset()
  {
    release();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.player.AudioFileRequestHandler
 * JD-Core Version:    0.6.0
 */