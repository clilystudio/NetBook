package com.ximalaya.ting.android.player;

import android.text.TextUtils;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.nio.ByteBuffer;

public class DownloadThread
{
  private static final String TAG = "dl_mp3";
  private ByteBuffer bBuffer;
  private AudioFile mFile;
  private int mIndex;
  private boolean stopFlag;

  public DownloadThread(AudioFile paramAudioFile, int paramInt)
  {
    Logger.log("dl_mp3", "======================DownloadThread Constructor(" + paramInt + ")");
    this.mFile = paramAudioFile;
    this.mIndex = paramInt;
    this.bBuffer = ByteBuffer.allocate(65536);
    this.stopFlag = false;
  }

  public void close()
  {
    this.stopFlag = true;
  }

  public int download()
  {
    if ((this.stopFlag) || (this.mFile == null) || (this.mIndex < 0) || (TextUtils.isEmpty(this.mFile.getUrl())))
      return -1;
    int i = 3;
    while (true)
    {
      int j = i - 1;
      if (i <= 0)
        return -1;
      try
      {
        HttpURLConnection localHttpURLConnection = PlayerUtil.getHttpURLConnection(this.mFile.getUrl());
        localHttpURLConnection.setRequestMethod("GET");
        localHttpURLConnection.setRequestProperty("Accept-Encoding", "identity");
        int k;
        if (this.mIndex == -1 + this.mFile.getFileInfo().getComChunkNum())
          k = this.mIndex << 16;
        int n;
        for (int m = -1 + this.mFile.getFileInfo().getComFileLen(); ; m = -1 + (1 + this.mIndex << 16))
        {
          Object[] arrayOfObject = new Object[2];
          arrayOfObject[0] = Integer.valueOf(k);
          arrayOfObject[1] = Integer.valueOf(m);
          localHttpURLConnection.addRequestProperty("Range", String.format("bytes=%d-%d", arrayOfObject));
          n = localHttpURLConnection.getResponseCode();
          if (n == 206)
            break label224;
          Logger.log(XMediaplayerJNI.Tag, "DownloadThread fail responseCode:" + n);
          i = j;
          break;
          k = this.mIndex << 16;
        }
        label224: int i1 = localHttpURLConnection.getContentLength();
        if (i1 <= 0)
        {
          Logger.log(XMediaplayerJNI.Tag, "DownloadThread fail contentLength0:" + i1);
          i = j;
          continue;
        }
        if ((i1 != 65536) && (this.mIndex != -1 + this.mFile.getFileInfo().getComChunkNum()))
        {
          Logger.log(XMediaplayerJNI.Tag, "DownloadThread fail contentLength1:" + i1);
          i = j;
          continue;
        }
        InputStream localInputStream = localHttpURLConnection.getInputStream();
        int i2 = 0;
        int i3;
        do
        {
          i3 = localInputStream.read(this.bBuffer.array(), i2, 65536 - i2);
          i2 += i3;
        }
        while (i3 > 0);
        localInputStream.close();
        this.mFile.setbBuffer(this.bBuffer);
        return n;
      }
      catch (MalformedURLException localMalformedURLException)
      {
        Logger.log(XMediaplayerJNI.Tag, "DownloadThread MalformedURLException:" + localMalformedURLException.toString());
        i = j;
      }
      catch (IOException localIOException)
      {
        Logger.log(XMediaplayerJNI.Tag, "DownloadThread IOException:" + localIOException.toString());
        i = j;
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.player.DownloadThread
 * JD-Core Version:    0.6.0
 */