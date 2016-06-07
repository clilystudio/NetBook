package com.ximalaya.ting.android.player;

import android.media.AudioTrack;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class AudioTrackPlayThread extends Thread
{
  public static final int AUDIO_CHANNEL = 12;
  public static final int AUDIO_CHANNEL_NUM = 2;
  public static final int AUDIO_FORMAT = 2;
  public static final int BUFFER_TIME = 1;
  public static final int BYTES_PER_SAMPLE = 2;
  public static final int DEFAULT_MIN_BUFFER_MULTIPLICATION_FACTOR = 4;
  private static int DEF_BUFF_SIZE = 0;
  public static final int PLAYBACK_STREAM = 3;
  public static final int SAMPLE_RATE = 44100;
  public static final int WRITE_NON_BLOCKING = 1;
  private volatile boolean isPlaying = false;
  private volatile boolean isRelaseFlag = false;
  private boolean isRunning = false;
  private boolean isWaiting = false;
  private long lastUpdateTime = 0L;
  private AudioTrack mAudioTrack;
  private byte[] mAudiodata;
  private int mBufferSize;
  private float mVolume;
  private XMediaplayerJNI mXMediaplayerJNI;
  private Object syncObject = new Object();

  public AudioTrackPlayThread(XMediaplayerJNI paramXMediaplayerJNI)
  {
    this.mXMediaplayerJNI = paramXMediaplayerJNI;
    initAudioTrack();
  }

  private void audioTrackRelease()
  {
    this.isPlaying = false;
    Logger.log(XMediaplayerJNI.Tag, "AudioTrackPlayThread audioTrackRelease");
    if (this.mAudioTrack != null)
      this.mAudioTrack.release();
    this.mAudioTrack = null;
  }

  private void audioTrackStart()
  {
    if (this.mAudioTrack == null)
      return;
    if ((this.mAudioTrack.getState() == 1) && (this.mAudioTrack.getPlayState() != 3))
    {
      Logger.log(XMediaplayerJNI.Tag, "AudioTrackPlayThread startPlay3");
      this.mAudioTrack.play();
      this.isPlaying = true;
      Logger.log(XMediaplayerJNI.Tag, "AudioTrackPlayThread startPlay4");
      return;
    }
    if (this.mAudioTrack != null)
    {
      Logger.log(XMediaplayerJNI.Tag, "AudioTrackPlayThread startPlay5");
      this.mAudioTrack.release();
      initAudioTrack();
      this.mAudioTrack.play();
      this.isPlaying = true;
      Logger.log(XMediaplayerJNI.Tag, "AudioTrackPlayThread startPlay6");
      return;
    }
    Logger.log(XMediaplayerJNI.Tag, "AudioTrackPlayThread startPlay7");
    initAudioTrack();
    this.mAudioTrack.play();
    this.isPlaying = true;
    Logger.log(XMediaplayerJNI.Tag, "AudioTrackPlayThread startPlay8");
  }

  private int audioTrackWrite(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    Logger.log(XMediaplayerJNI.Tag, "AudioTrackPlayThread audioTrackWrite start");
    AudioTrack localAudioTrack = this.mAudioTrack;
    int i = 0;
    int k;
    int m;
    if (localAudioTrack != null)
    {
      int j = this.mAudioTrack.getPlayState();
      i = 0;
      if (j == 3)
      {
        k = 0;
        m = paramInt2;
      }
    }
    while (true)
    {
      if ((m <= 0) || (!this.isPlaying))
      {
        i = k;
        label62: Logger.log(XMediaplayerJNI.Tag, "AudioTrackPlayThread audioTrackWrite end");
        return i;
      }
      if (m > this.mBufferSize);
      int i1;
      for (int n = this.mBufferSize; ; n = m)
      {
        Logger.log(XMediaplayerJNI.Tag, "AudioTrackPlayThread audioTrackWrite 0 written：" + n);
        if ((this.mAudioTrack == null) || (this.mAudioTrack.getPlayState() != 3))
          break;
        Logger.log(XMediaplayerJNI.Tag, "AudioTrackPlayThread audioTrackWrite 22 written：" + n);
        i1 = this.mAudioTrack.write(paramArrayOfByte, paramInt1, n);
        if (i1 >= 0)
          break label207;
        Logger.log(XMediaplayerJNI.Tag, "AudioTrackPlayThread audioTrackWrite 1 error wriBytes：" + i1);
        i = k;
        break label62;
      }
      label207: Logger.log(XMediaplayerJNI.Tag, "AudioTrackPlayThread audioTrackWrite 1 wriBytes：" + i1);
      k += i1;
      m -= n;
      paramInt1 += n;
    }
  }

  private void initAudioTrack()
  {
    Logger.log(XMediaplayerJNI.Tag, "initAudioTrack");
    int i = AudioTrack.getMinBufferSize(44100, 12, 2);
    this.mBufferSize = (i * 4);
    this.mBufferSize = Math.max(i, DEF_BUFF_SIZE);
    this.mAudioTrack = new AudioTrack(3, 44100, 12, 2, this.mBufferSize, 1);
    this.mAudiodata = new byte[this.mBufferSize];
  }

  private static void setVolumeV3(AudioTrack paramAudioTrack, float paramFloat)
  {
    if (paramAudioTrack == null)
      return;
    paramAudioTrack.setStereoVolume(paramFloat, paramFloat);
  }

  private void writePcm(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
      return;
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(XMediaPlayerConstants.APP_BASE_DIR + "/log/pcm.pcm");
      localFileOutputStream.write(paramArrayOfByte);
      localFileOutputStream.close();
      return;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      localFileNotFoundException.printStackTrace();
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }

  public void dataReady()
  {
    Logger.log(XMediaplayerJNI.Tag, "AudioTrackPlayThread dataReady");
    if (this.isWaiting)
      synchronized (this.syncObject)
      {
        Logger.log(XMediaplayerJNI.Tag, "AudioTrackPlayThread notify");
        this.syncObject.notify();
        this.isWaiting = false;
        return;
      }
  }

  public int getMinOutputBufferSize()
  {
    return this.mBufferSize;
  }

  public float getVolume()
  {
    return this.mVolume;
  }

  public boolean isPlaying()
  {
    return (this.mAudioTrack != null) && (this.mAudioTrack.getPlayState() == 3);
  }

  public void pausePlay()
  {
    if (this.mAudioTrack == null);
    do
    {
      return;
      this.isPlaying = false;
      Logger.log(XMediaplayerJNI.Tag, "AudioTrackPlayThread pausePlay0");
    }
    while (this.mAudioTrack.getPlayState() != 3);
    this.mAudioTrack.pause();
    Logger.log(XMediaplayerJNI.Tag, "AudioTrackPlayThread pausePlay1");
  }

  public void releasePlay()
  {
    this.isPlaying = false;
    this.isRelaseFlag = true;
    Logger.log(XMediaplayerJNI.Tag, "AudioTrackPlayThread releasePlay");
    interrupt();
  }

  public void run()
  {
    this.isRunning = true;
    if (this.isRelaseFlag);
    label12: label58: int i;
    while (true)
    {
      this.isRunning = false;
      stopPlay();
      audioTrackRelease();
      return;
      try
      {
        synchronized (this.syncObject)
        {
          if (!this.isRelaseFlag)
            break label58;
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
      break;
      i = this.mXMediaplayerJNI.getOutputData(this.mAudiodata, this.mAudiodata.length);
      Logger.log(XMediaplayerJNI.Tag, "AudioTrackPlayThread result0:" + i);
      if (i > 0);
      while (true)
      {
        if ((i >= this.mBufferSize) || (this.isRelaseFlag));
        do
        {
          if (!this.isRelaseFlag)
            break label313;
          monitorexit;
          break;
          arrayOfByte = new byte[this.mBufferSize - i];
        }
        while (this.isRelaseFlag);
        j = this.mXMediaplayerJNI.getOutputData(arrayOfByte, arrayOfByte.length);
        Logger.log(XMediaplayerJNI.Tag, "AudioTrackPlayThread result1 reLength:" + j);
        if (j > 0)
        {
          System.arraycopy(arrayOfByte, 0, this.mAudiodata, i, arrayOfByte.length);
          i += j;
          Logger.log(XMediaplayerJNI.Tag, "AudioTrackPlayThread result2:" + j);
          continue;
        }
        this.isWaiting = true;
        Logger.log(XMediaplayerJNI.Tag, "AudioTrackPlayThread mAudioTrack wait0");
        this.mXMediaplayerJNI.outputDataAppointment();
        if ((!this.mXMediaplayerJNI.isBuffing) && (this.mXMediaplayerJNI.getPlayState() == 4))
          this.mXMediaplayerJNI.onInfoInner(10, 701);
        this.syncObject.wait(30000L);
        this.isWaiting = false;
      }
      label313: Logger.log(XMediaplayerJNI.Tag, "AudioTrackPlayThread result3:" + i);
      if (i != -2)
        break label409;
      Logger.log(XMediaplayerJNI.Tag, "AudioTrackPlayThread decode over");
      if (this.mXMediaplayerJNI.isBuffing)
        this.mXMediaplayerJNI.onInfoInner(10, 702);
      audioTrackWrite(this.mAudiodata, 0, this.mAudiodata.length);
      this.mAudioTrack.stop();
      this.mXMediaplayerJNI.onCompletionInner();
      monitorexit;
    }
    label409: if (i != -1)
      if (i == 0)
      {
        this.isWaiting = true;
        Logger.log(XMediaplayerJNI.Tag, "AudioTrackPlayThread wait");
        this.mXMediaplayerJNI.outputDataAppointment();
        if ((!this.mXMediaplayerJNI.isBuffing) && (this.mXMediaplayerJNI.getPlayState() == 4))
          this.mXMediaplayerJNI.onInfoInner(10, 701);
        this.syncObject.wait(30000L);
        this.isWaiting = false;
      }
    while (true)
    {
      if (i < 0)
      {
        this.mXMediaplayerJNI.onErrorInner(8, 1);
        monitorexit;
        break label12;
        if (i > 0)
        {
          if (this.mXMediaplayerJNI.isBuffing)
            this.mXMediaplayerJNI.onInfoInner(10, 702);
          i = audioTrackWrite(this.mAudiodata, 0, i);
          if (System.currentTimeMillis() - this.lastUpdateTime <= 1000L)
            continue;
          this.lastUpdateTime = System.currentTimeMillis();
          Logger.log(XMediaplayerJNI.Tag, "AudioTrackPlayThread ttseek3:" + System.currentTimeMillis());
          this.mXMediaplayerJNI.mOnTimedChangeListenerInner();
          continue;
        }
      }
      else
      {
        byte[] arrayOfByte;
        int j;
        monitorexit;
        break;
      }
      i = -1;
    }
  }

  public void seekPlay()
  {
    if (this.mAudioTrack == null);
    do
    {
      return;
      if (this.mAudioTrack.getPlayState() != 3)
        continue;
      this.mAudioTrack.pause();
      this.mAudioTrack.flush();
      audioTrackStart();
      return;
    }
    while (this.mAudioTrack.getPlayState() != 2);
    this.mAudioTrack.flush();
  }

  public void setVolume(float paramFloat)
  {
    this.mVolume = paramFloat;
    setVolumeV3(this.mAudioTrack, paramFloat);
  }

  public void startPlay()
  {
    if (this.mAudioTrack == null);
    do
    {
      return;
      Logger.log(XMediaplayerJNI.Tag, "AudioTrackPlayThread startPlay0");
      if (this.mAudioTrack.getPlayState() != 3)
      {
        audioTrackStart();
        Logger.log(XMediaplayerJNI.Tag, "AudioTrackPlayThread startPlay1");
      }
      Logger.log(XMediaplayerJNI.Tag, "AudioTrackPlayThread startPlay isRunning0");
    }
    while (this.isRunning);
    Logger.log(XMediaplayerJNI.Tag, "AudioTrackPlayThread startPlay isRunning1");
    this.isRunning = true;
    start();
  }

  public void stopPlay()
  {
    if (this.mAudioTrack == null);
    do
    {
      return;
      this.isPlaying = false;
      Logger.log(XMediaplayerJNI.Tag, "AudioTrackPlayThread stopPlay0");
    }
    while (this.mAudioTrack.getPlayState() == 1);
    this.mAudioTrack.stop();
    this.mAudioTrack.flush();
    Logger.log(XMediaplayerJNI.Tag, "AudioTrackPlayThread stopPlay1");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.player.AudioTrackPlayThread
 * JD-Core Version:    0.6.0
 */