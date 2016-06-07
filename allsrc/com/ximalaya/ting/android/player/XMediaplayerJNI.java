package com.ximalaya.ting.android.player;

import android.text.TextUtils;
import com.ximalaya.ting.android.player.model.JNIDataModel;
import java.nio.Buffer;
import java.nio.ByteBuffer;

public abstract class XMediaplayerJNI
  implements XMediaplayerImpl
{
  public static String Tag = "XMPLAY";
  public boolean isBuffing = false;
  private boolean isSeeking = false;
  private AudioFileRequestHandler mAudioFileRequestHandler;
  private AudioTrackPlayThread mAudioTrackPlayThread;
  private XMediaplayerJNI.AudioType mAudioType = XMediaplayerJNI.AudioType.NORMAL_FILE;
  private long mCurFileSize;
  public String mCurrentDataDecodeUrl = this.mPlayUrl;
  private byte[] mCurrentDecodeData;
  private int mCurrentSeekPosition = -1;
  private int mCurrentSeekPositionState = 0;
  private int mDownItemSize = 32768;
  private boolean mHasSeek = true;
  private HlsAudioFile mHlsAudioFile;
  private long mJniHandler;
  public String mPlayUrl;
  public byte[] tmepBuf;

  static
  {
    if (PlayerUtil.isX86Arch())
    {
      Logger.log(Tag, "loadLibrary xmediaplayer_x isRrmV7Plus:" + PlayerUtil.isRrmV7Plus());
      System.loadLibrary("xmediaplayer_x");
      return;
    }
    Logger.log(Tag, "loadLibrary xmediaplayer isRrmV7Plus:" + PlayerUtil.isRrmV7Plus());
    System.loadLibrary("xmediaplayer");
  }

  public XMediaplayerJNI()
  {
    int i = MediaplayerFrameworkInit();
    Logger.log(Tag, "MediaplayerFrameworkInit result:" + i);
    if (i < 0)
      handlePlayerStatus(XMediaplayerJNI.NativeErrorType.ERR_ARCH_NOT_SUPPORT.value());
  }

  private String getCurPlayUrl()
  {
    if (this.mAudioType != XMediaplayerJNI.AudioType.NORMAL_FILE)
    {
      if (this.mHlsAudioFile != null)
        return this.mHlsAudioFile.getPlayUrl();
      throw new RuntimeException("getCurPlayUrl 错误！");
    }
    return this.mPlayUrl;
  }

  private void handleSmallBufRequest(JNIDataModel paramJNIDataModel)
  {
    if (paramJNIDataModel.buf.length > paramJNIDataModel.bufSize)
    {
      ByteBuffer localByteBuffer1 = ByteBuffer.wrap(paramJNIDataModel.buf);
      localByteBuffer1.clear();
      localByteBuffer1.position(paramJNIDataModel.bufSize).limit(paramJNIDataModel.buf.length);
      ByteBuffer localByteBuffer2 = localByteBuffer1.slice();
      this.tmepBuf = new byte[localByteBuffer2.remaining()];
      localByteBuffer2.get(this.tmepBuf);
      Logger.log(Tag, "dataStreamInputFuncCallBackT length diff tJNIDataModel.bufSize:" + paramJNIDataModel.bufSize);
      Logger.log(Tag, "dataStreamInputFuncCallBackT length diff tJNIDataModel.buf:" + paramJNIDataModel.buf.length);
      if (this.tmepBuf != null)
        Logger.log(Tag, "dataStreamInputFuncCallBackT length diff tmepBuf:" + this.tmepBuf.length);
      localByteBuffer1.clear();
      localByteBuffer1.position(0).limit(paramJNIDataModel.bufSize);
      ByteBuffer localByteBuffer3 = localByteBuffer1.slice();
      paramJNIDataModel.buf = new byte[localByteBuffer3.remaining()];
      localByteBuffer3.get(paramJNIDataModel.buf);
      Logger.log(Tag, "dataStreamInputFuncCallBackT length diff tJNIDataModel.buf:" + paramJNIDataModel.buf.length);
      if (this.tmepBuf != null)
        Logger.log(Tag, "dataStreamInputFuncCallBackT length diff all1:" + (paramJNIDataModel.buf.length + this.tmepBuf.length));
    }
  }

  private void releaseAudioTrackPlayThread()
  {
    if (this.mAudioTrackPlayThread != null)
    {
      this.mAudioTrackPlayThread.releasePlay();
      this.mAudioTrackPlayThread = null;
    }
    Logger.log(Tag, "releaseAudioTrackPlayThread releasePlay");
  }

  public native int MediaplayerComplete(long paramLong);

  public native int MediaplayerDestroy(long paramLong);

  public native int MediaplayerFrameworkInit();

  public native int MediaplayerGetCurPlayingFileType(long paramLong);

  public native long MediaplayerGetCurrentDecodedDataTime(long paramLong);

  public native long MediaplayerGetCurrentTime(long paramLong);

  public native long MediaplayerGetMediaDuration(long paramLong);

  public native int MediaplayerGetOutputData(byte[] paramArrayOfByte, int paramInt, long paramLong);

  public native int MediaplayerInit(int paramInt1, int paramInt2, int paramInt3, int paramInt4);

  public native int MediaplayerOutputDataAppointment(long paramLong);

  public native int MediaplayerPause(long paramLong);

  public native int MediaplayerPlay(long paramLong);

  public native int MediaplayerPrepareAsync(long paramLong);

  public native int MediaplayerReset(long paramLong);

  public native int MediaplayerSeek(long paramLong1, long paramLong2);

  public native int MediaplayerSetDataSourceInfo(String paramString, int paramInt, long paramLong);

  public native int MediaplayerStop(long paramLong);

  public int bufferedDataReachThresholdCallBackT(int paramInt)
  {
    if (!XMediaplayerJNI.NativeErrorType.NO_ERR.equals(XMediaplayerJNI.NativeErrorType.valueOf(paramInt)))
    {
      handlePlayerStatus(paramInt);
      return -1;
    }
    getAudioTrackPlayThread().dataReady();
    Logger.log(Tag, "dataStreamInputFuncCallBackT bufferedDataReachThresholdCallBackT");
    return 1;
  }

  public int dataStreamInputFuncCallBackT(JNIDataModel paramJNIDataModel)
  {
    if (!XMediaplayerJNI.NativeErrorType.NO_ERR.equals(XMediaplayerJNI.NativeErrorType.valueOf(paramJNIDataModel.status)))
    {
      Logger.log(Tag, "dataStreamInputFuncCallBackT readData start error:");
      handlePlayerStatus(paramJNIDataModel.status);
      return -1;
    }
    long l = System.currentTimeMillis();
    Logger.log(Tag, "dataStreamInputFuncCallBackT readData start:" + l);
    if (paramJNIDataModel.filePath == null)
      throw new RuntimeException("dataStreamInputFuncCallBackT tJNIDataModel.filePath==null 异常！！！");
    Logger.log(Tag, "dataStreamInputFuncCallBackT xx seekParaTimeStampMs fill io start");
    if (!paramJNIDataModel.filePath.equals(getCurPlayUrl()))
    {
      this.mCurrentSeekPosition = -1;
      this.mCurFileSize = 0L;
      this.mCurrentSeekPositionState = 0;
      this.mHasSeek = true;
      this.tmepBuf = null;
      Logger.log(Tag, "dataStreamInputFuncCallBackT 重置");
    }
    Logger.log(Tag, "dataStreamInputFuncCallBackT filePath:" + paramJNIDataModel.filePath);
    Logger.log(Tag, "dataStreamInputFuncCallBackT seekParaTimeStampMs mCurrentSeekPositionState:" + this.mCurrentSeekPositionState);
    Logger.log(Tag, "dataStreamInputFuncCallBackT seekParaTimeStampMs mCurrentSeekPosition:" + this.mCurrentSeekPosition);
    if ((this.mHasSeek) && (this.mCurrentSeekPosition != this.mCurrentSeekPositionState))
    {
      this.mCurrentSeekPosition = this.mCurrentSeekPositionState;
      Logger.log(Tag, "dataStreamInputFuncCallBackT seekParaTimeStampMs true mCurrentSeekPosition:" + this.mCurrentSeekPosition);
      Logger.log(Tag, "dataStreamInputFuncCallBackT length diff seek true");
    }
    while (true)
    {
      Logger.log(Tag, "dataStreamInputFuncCallBackT mCurFileSize:" + this.mCurFileSize + "mCurrentSeekPosition:" + this.mCurrentSeekPosition);
      if ((this.mCurFileSize <= 0L) || (this.mCurrentSeekPosition < this.mCurFileSize))
        break;
      Logger.log(Tag, "dataStreamInputFuncCallBackT xx return 0");
      return 0;
      this.mHasSeek = false;
    }
    if (!isHls())
    {
      Logger.log(Tag, "dataStreamInputFuncCallBackT NORMAL_FILE");
      if (this.mAudioFileRequestHandler == null)
      {
        if (XMediaPlayerConstants.isDebug)
          throw new RuntimeException("mAudioFileRequestHandler==null");
        Logger.log(Tag, "dataStreamInputFuncCallBackT xx 19");
        return -1;
      }
      if (this.mAudioFileRequestHandler.readData(paramJNIDataModel, this.mHasSeek, this.mCurrentSeekPosition) <= 0)
      {
        Logger.log(Tag, "dataStreamInputFuncCallBackT xx 20");
        return -1;
      }
    }
    else
    {
      if (this.mHlsAudioFile == null)
      {
        if (XMediaPlayerConstants.isDebug)
          throw new RuntimeException("mHlsAudioFile==null");
        Logger.log(Tag, "dataStreamInputFuncCallBackT xx 21");
        return -1;
      }
      if ((this.mHasSeek) || (this.tmepBuf == null))
        break label539;
      paramJNIDataModel.buf = this.tmepBuf;
      this.tmepBuf = null;
      paramJNIDataModel.fileSize = this.mCurFileSize;
      Logger.log(Tag, "dataStreamInputFuncCallBackT read temp buf");
    }
    while (true)
    {
      this.mHasSeek = false;
      if (paramJNIDataModel.buf != null)
        break label577;
      Logger.log(Tag, "dataStreamInputFuncCallBackT xx tJNIDataModel.buf==null");
      return -1;
      label539: this.tmepBuf = null;
      Logger.log(Tag, "dataStreamInputFuncCallBackT M3U8_FILE");
      if (this.mHlsAudioFile.readData(paramJNIDataModel) < 0L)
        break;
      this.mCurFileSize = paramJNIDataModel.fileSize;
    }
    label577: Logger.log(Tag, "dataStreamInputFuncCallBackT buf.length" + paramJNIDataModel.buf.length);
    Logger.log(Tag, "dataStreamInputFuncCallBackT mCurFileSize:" + this.mCurFileSize);
    Logger.log(Tag, "dataStreamInputFuncCallBackT tJNIDataModel.buf.length:" + paramJNIDataModel.buf.length);
    Logger.log(Tag, "dataStreamInputFuncCallBackT tJNIDataModel.bufSize:" + paramJNIDataModel.bufSize);
    handleSmallBufRequest(paramJNIDataModel);
    if (paramJNIDataModel.buf != null)
      this.mCurrentSeekPosition += paramJNIDataModel.buf.length;
    Logger.log(Tag, "dataStreamInputFuncCallBackT tJNIDataModel.buf.length:" + paramJNIDataModel.buf.length);
    Logger.log(Tag, "dataStreamInputFuncCallBackT mCurFileSize2:" + this.mCurFileSize);
    Logger.log(Tag, "dataStreamInputFuncCallBackT tJNIDataModel filesize:" + paramJNIDataModel.fileSize);
    Logger.log(Tag, "dataStreamInputFuncCallBackT xx seekParaTimeStampMs fill io end");
    Logger.log(Tag, "dataStreamInputFuncCallBackT readData end:" + (System.currentTimeMillis() - l));
    return paramJNIDataModel.buf.length;
  }

  public int dataStreamOutReadyFuncCallBackT(int paramInt1, int paramInt2)
  {
    Logger.log(Tag, "dataStreamOutReadyFuncCallBackT");
    if (!XMediaplayerJNI.NativeErrorType.NO_ERR.equals(XMediaplayerJNI.NativeErrorType.valueOf(paramInt2)))
    {
      handlePlayerStatus(paramInt2);
      return -1;
    }
    onPreparedInner();
    return 0;
  }

  public int dataStreamSeekFuncCallBackT(String paramString, long paramLong, int paramInt)
  {
    Logger.log(Tag, "dataStreamSeekFuncCallBackT 0 offset:" + paramLong);
    if (!XMediaplayerJNI.NativeErrorType.NO_ERR.equals(XMediaplayerJNI.NativeErrorType.valueOf(paramInt)))
    {
      handlePlayerStatus(paramInt);
      return -1;
    }
    if (!TextUtils.isEmpty(paramString))
      this.mCurrentDataDecodeUrl = paramString;
    this.mHasSeek = true;
    this.mCurrentSeekPositionState = (int)paramLong;
    Logger.log(Tag, "dataStreamInputFuncCallBackT seekParaTimeStampMs true offset:" + paramLong);
    return 0;
  }

  public AudioTrackPlayThread getAudioTrackPlayThread()
  {
    if (this.mAudioTrackPlayThread == null)
    {
      Logger.log(Tag, "dataStreamInputFuncCallBackT getAudioTrackPlayThread new");
      this.mAudioTrackPlayThread = new AudioTrackPlayThread(this);
    }
    return this.mAudioTrackPlayThread;
  }

  public XMediaplayerJNI.AudioType getAudioType()
  {
    return this.mAudioType;
  }

  public int getCachePercent()
  {
    if (isHls())
      if (this.mHlsAudioFile != null);
    do
    {
      return 0;
      return this.mHlsAudioFile.getCachePercent();
    }
    while (this.mAudioFileRequestHandler == null);
    return this.mAudioFileRequestHandler.getCachePercent();
  }

  public long getCurFileSize()
  {
    return this.mCurFileSize;
  }

  public int getCurrentPosition()
  {
    return (int)MediaplayerGetCurrentTime(this.mJniHandler);
  }

  public int getDuration()
  {
    return (int)MediaplayerGetMediaDuration(this.mJniHandler);
  }

  public int getOutputData(byte[] paramArrayOfByte, int paramInt)
  {
    return MediaplayerGetOutputData(paramArrayOfByte, paramInt, this.mJniHandler);
  }

  public String getPlayUrl()
  {
    return this.mPlayUrl;
  }

  public void handlePlayerStatus(int paramInt)
  {
    XMediaplayerJNI.NativeErrorType localNativeErrorType = XMediaplayerJNI.NativeErrorType.valueOf(paramInt);
    Logger.log(Tag, "handlePlayerStatus status:" + paramInt);
    if (localNativeErrorType == null)
      return;
    switch ($SWITCH_TABLE$com$ximalaya$ting$android$player$XMediaplayerJNI$NativeErrorType()[localNativeErrorType.ordinal()])
    {
    case 1:
    default:
      return;
    case 2:
      onErrorInner(8, 1);
      return;
    case 6:
      onErrorInner(8, -1004);
      return;
    case 3:
      onErrorInner(8, -1010);
      return;
    case 5:
      onErrorInner(8, 100);
      return;
    case 7:
      onErrorInner(8, -1004);
      return;
    case 4:
      onErrorInner(8, -1004);
      return;
    case 8:
    }
    onErrorInner(8, -1011);
  }

  public boolean isHls()
  {
    return (this.mAudioType.value() > 0) && (this.mAudioType.value() < 4);
  }

  public boolean isPlaying()
  {
    Logger.log(Tag, "dataStreamInputFuncCallBackT isPlaying");
    return getAudioTrackPlayThread().isPlaying();
  }

  public boolean isSeeking()
  {
    return this.isSeeking;
  }

  // ERROR //
  public int m3u8FileStreamInputFuncCallBackT(JNIDataModel paramJNIDataModel)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: getstatic 74	com/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType:NO_ERR	Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;
    //   5: aload_1
    //   6: getfield 281	com/ximalaya/ting/android/player/model/JNIDataModel:status	I
    //   9: invokestatic 263	com/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType:valueOf	(I)Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;
    //   12: invokevirtual 267	com/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType:equals	(Ljava/lang/Object;)Z
    //   15: ifne +13 -> 28
    //   18: aload_0
    //   19: aload_1
    //   20: getfield 281	com/ximalaya/ting/android/player/model/JNIDataModel:status	I
    //   23: invokevirtual 163	com/ximalaya/ting/android/player/XMediaplayerJNI:handlePlayerStatus	(I)V
    //   26: iconst_m1
    //   27: ireturn
    //   28: aload_1
    //   29: ifnull +10 -> 39
    //   32: aload_1
    //   33: getfield 186	com/ximalaya/ting/android/player/model/JNIDataModel:bufSize	I
    //   36: ifgt +14 -> 50
    //   39: getstatic 80	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   42: ldc_w 448
    //   45: invokestatic 111	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   48: iconst_m1
    //   49: ireturn
    //   50: getstatic 80	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   53: ldc_w 450
    //   56: invokestatic 111	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   59: iload_2
    //   60: iconst_1
    //   61: isub
    //   62: istore_3
    //   63: iload_2
    //   64: ifgt +50 -> 114
    //   67: getstatic 80	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   70: ldc_w 452
    //   73: invokestatic 111	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   76: aload_1
    //   77: getfield 183	com/ximalaya/ting/android/player/model/JNIDataModel:buf	[B
    //   80: ifnull +23 -> 103
    //   83: aload_1
    //   84: getfield 183	com/ximalaya/ting/android/player/model/JNIDataModel:buf	[B
    //   87: arraylength
    //   88: aload_1
    //   89: getfield 186	com/ximalaya/ting/android/player/model/JNIDataModel:bufSize	I
    //   92: if_icmpgt +11 -> 103
    //   95: aload_1
    //   96: getfield 183	com/ximalaya/ting/android/player/model/JNIDataModel:buf	[B
    //   99: arraylength
    //   100: ifne +666 -> 766
    //   103: getstatic 80	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   106: ldc_w 454
    //   109: invokestatic 111	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   112: iconst_0
    //   113: ireturn
    //   114: aload_0
    //   115: getfield 133	com/ximalaya/ting/android/player/XMediaplayerJNI:mPlayUrl	Ljava/lang/String;
    //   118: invokestatic 458	com/ximalaya/ting/android/player/PlayerUtil:getHttpURLConnection	(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    //   121: astore 14
    //   123: aload 14
    //   125: astore 6
    //   127: aload 6
    //   129: iconst_1
    //   130: invokevirtual 464	java/net/HttpURLConnection:setUseCaches	(Z)V
    //   133: aload 6
    //   135: invokevirtual 467	java/net/HttpURLConnection:getResponseCode	()I
    //   138: istore 15
    //   140: getstatic 80	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   143: new 88	java/lang/StringBuilder
    //   146: dup
    //   147: ldc_w 469
    //   150: invokespecial 94	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   153: iload 15
    //   155: invokevirtual 156	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   158: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   161: invokestatic 111	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   164: iload 15
    //   166: sipush 200
    //   169: if_icmpeq +11 -> 180
    //   172: iload 15
    //   174: sipush 206
    //   177: if_icmpne +290 -> 467
    //   180: getstatic 80	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   183: ldc_w 471
    //   186: invokestatic 111	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   189: aload 6
    //   191: invokevirtual 475	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   194: astore 16
    //   196: aload 16
    //   198: astore 17
    //   200: new 477	java/io/ByteArrayOutputStream
    //   203: dup
    //   204: invokespecial 478	java/io/ByteArrayOutputStream:<init>	()V
    //   207: astore 18
    //   209: sipush 1024
    //   212: newarray byte
    //   214: astore 23
    //   216: aload 17
    //   218: aload 23
    //   220: invokevirtual 484	java/io/InputStream:read	([B)I
    //   223: istore 24
    //   225: iload 24
    //   227: iconst_m1
    //   228: if_icmpne +115 -> 343
    //   231: getstatic 80	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   234: new 88	java/lang/StringBuilder
    //   237: dup
    //   238: ldc_w 486
    //   241: invokespecial 94	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   244: iload 24
    //   246: invokevirtual 156	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   249: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   252: invokestatic 111	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   255: aload_1
    //   256: aload 18
    //   258: invokevirtual 490	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   261: putfield 183	com/ximalaya/ting/android/player/model/JNIDataModel:buf	[B
    //   264: aload 18
    //   266: invokevirtual 493	java/io/ByteArrayOutputStream:close	()V
    //   269: getstatic 80	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   272: ldc_w 495
    //   275: invokestatic 111	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   278: aload 6
    //   280: ifnull +8 -> 288
    //   283: aload 6
    //   285: invokevirtual 498	java/net/HttpURLConnection:disconnect	()V
    //   288: getstatic 80	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   291: ldc_w 500
    //   294: invokestatic 111	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   297: aload 17
    //   299: ifnull +8 -> 307
    //   302: aload 17
    //   304: invokevirtual 501	java/io/InputStream:close	()V
    //   307: getstatic 80	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   310: ldc_w 503
    //   313: invokestatic 111	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   316: aload_1
    //   317: getfield 183	com/ximalaya/ting/android/player/model/JNIDataModel:buf	[B
    //   320: ifnull +624 -> 944
    //   323: aload_1
    //   324: getfield 183	com/ximalaya/ting/android/player/model/JNIDataModel:buf	[B
    //   327: arraylength
    //   328: ifle +616 -> 944
    //   331: getstatic 80	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   334: ldc_w 505
    //   337: invokestatic 111	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   340: goto -273 -> 67
    //   343: aload 18
    //   345: aload 23
    //   347: iconst_0
    //   348: iload 24
    //   350: invokevirtual 509	java/io/ByteArrayOutputStream:write	([BII)V
    //   353: getstatic 80	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   356: new 88	java/lang/StringBuilder
    //   359: dup
    //   360: ldc_w 511
    //   363: invokespecial 94	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   366: iload 24
    //   368: invokevirtual 156	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   371: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   374: invokestatic 111	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   377: goto -161 -> 216
    //   380: astore 22
    //   382: aload 17
    //   384: astore 5
    //   386: aload 22
    //   388: astore 4
    //   390: getstatic 80	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   393: new 88	java/lang/StringBuilder
    //   396: dup
    //   397: ldc_w 513
    //   400: invokespecial 94	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   403: aload 4
    //   405: invokevirtual 514	java/net/MalformedURLException:toString	()Ljava/lang/String;
    //   408: invokevirtual 313	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   411: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   414: invokestatic 111	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   417: getstatic 80	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   420: ldc_w 495
    //   423: invokestatic 111	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   426: aload 6
    //   428: ifnull +8 -> 436
    //   431: aload 6
    //   433: invokevirtual 498	java/net/HttpURLConnection:disconnect	()V
    //   436: getstatic 80	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   439: ldc_w 500
    //   442: invokestatic 111	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   445: aload 5
    //   447: ifnull +8 -> 455
    //   450: aload 5
    //   452: invokevirtual 501	java/io/InputStream:close	()V
    //   455: getstatic 80	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   458: ldc_w 503
    //   461: invokestatic 111	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   464: goto -148 -> 316
    //   467: iload 15
    //   469: sipush 400
    //   472: if_icmplt +477 -> 949
    //   475: getstatic 80	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   478: new 88	java/lang/StringBuilder
    //   481: dup
    //   482: ldc_w 516
    //   485: invokespecial 94	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   488: iload 15
    //   490: invokevirtual 156	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   493: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   496: invokestatic 111	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   499: getstatic 80	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   502: ldc_w 495
    //   505: invokestatic 111	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   508: aload 6
    //   510: ifnull +8 -> 518
    //   513: aload 6
    //   515: invokevirtual 498	java/net/HttpURLConnection:disconnect	()V
    //   518: getstatic 80	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   521: ldc_w 500
    //   524: invokestatic 111	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   527: getstatic 80	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   530: ldc_w 503
    //   533: invokestatic 111	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   536: iconst_m1
    //   537: ireturn
    //   538: astore 12
    //   540: aconst_null
    //   541: astore 5
    //   543: aconst_null
    //   544: astore 6
    //   546: getstatic 80	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   549: new 88	java/lang/StringBuilder
    //   552: dup
    //   553: ldc_w 518
    //   556: invokespecial 94	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   559: aload 12
    //   561: invokevirtual 519	java/io/IOException:toString	()Ljava/lang/String;
    //   564: invokevirtual 313	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   567: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   570: invokestatic 111	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   573: getstatic 80	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   576: ldc_w 495
    //   579: invokestatic 111	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   582: aload 6
    //   584: ifnull +8 -> 592
    //   587: aload 6
    //   589: invokevirtual 498	java/net/HttpURLConnection:disconnect	()V
    //   592: getstatic 80	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   595: ldc_w 500
    //   598: invokestatic 111	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   601: aload 5
    //   603: ifnull +8 -> 611
    //   606: aload 5
    //   608: invokevirtual 501	java/io/InputStream:close	()V
    //   611: getstatic 80	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   614: ldc_w 503
    //   617: invokestatic 111	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   620: goto -304 -> 316
    //   623: astore 10
    //   625: aconst_null
    //   626: astore 5
    //   628: aconst_null
    //   629: astore 6
    //   631: getstatic 80	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   634: new 88	java/lang/StringBuilder
    //   637: dup
    //   638: ldc_w 521
    //   641: invokespecial 94	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   644: aload 10
    //   646: invokevirtual 522	java/lang/Exception:toString	()Ljava/lang/String;
    //   649: invokevirtual 313	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   652: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   655: invokestatic 111	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   658: getstatic 80	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   661: ldc_w 495
    //   664: invokestatic 111	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   667: aload 6
    //   669: ifnull +8 -> 677
    //   672: aload 6
    //   674: invokevirtual 498	java/net/HttpURLConnection:disconnect	()V
    //   677: getstatic 80	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   680: ldc_w 500
    //   683: invokestatic 111	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   686: aload 5
    //   688: ifnull +8 -> 696
    //   691: aload 5
    //   693: invokevirtual 501	java/io/InputStream:close	()V
    //   696: getstatic 80	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   699: ldc_w 503
    //   702: invokestatic 111	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   705: goto -389 -> 316
    //   708: astore 7
    //   710: aconst_null
    //   711: astore 5
    //   713: aconst_null
    //   714: astore 6
    //   716: getstatic 80	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   719: ldc_w 495
    //   722: invokestatic 111	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   725: aload 6
    //   727: ifnull +8 -> 735
    //   730: aload 6
    //   732: invokevirtual 498	java/net/HttpURLConnection:disconnect	()V
    //   735: getstatic 80	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   738: ldc_w 500
    //   741: invokestatic 111	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   744: aload 5
    //   746: ifnull +8 -> 754
    //   749: aload 5
    //   751: invokevirtual 501	java/io/InputStream:close	()V
    //   754: getstatic 80	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   757: ldc_w 503
    //   760: invokestatic 111	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   763: aload 7
    //   765: athrow
    //   766: getstatic 80	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   769: new 88	java/lang/StringBuilder
    //   772: dup
    //   773: ldc_w 524
    //   776: invokespecial 94	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   779: aload_1
    //   780: getfield 183	com/ximalaya/ting/android/player/model/JNIDataModel:buf	[B
    //   783: arraylength
    //   784: invokevirtual 156	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   787: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   790: invokestatic 111	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   793: getstatic 80	com/ximalaya/ting/android/player/XMediaplayerJNI:Tag	Ljava/lang/String;
    //   796: new 88	java/lang/StringBuilder
    //   799: dup
    //   800: ldc_w 526
    //   803: invokespecial 94	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   806: new 303	java/lang/String
    //   809: dup
    //   810: aload_1
    //   811: getfield 183	com/ximalaya/ting/android/player/model/JNIDataModel:buf	[B
    //   814: invokespecial 529	java/lang/String:<init>	([B)V
    //   817: invokevirtual 313	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   820: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   823: invokestatic 111	com/ximalaya/ting/android/player/Logger:log	(Ljava/lang/String;Ljava/lang/Object;)V
    //   826: aload_1
    //   827: getfield 183	com/ximalaya/ting/android/player/model/JNIDataModel:buf	[B
    //   830: arraylength
    //   831: ireturn
    //   832: astore 9
    //   834: goto -379 -> 455
    //   837: astore 13
    //   839: goto -228 -> 611
    //   842: astore 11
    //   844: goto -148 -> 696
    //   847: astore 8
    //   849: goto -95 -> 754
    //   852: astore 25
    //   854: goto -547 -> 307
    //   857: astore 7
    //   859: aconst_null
    //   860: astore 5
    //   862: goto -146 -> 716
    //   865: astore 21
    //   867: aload 17
    //   869: astore 5
    //   871: aload 21
    //   873: astore 7
    //   875: goto -159 -> 716
    //   878: astore 7
    //   880: goto -164 -> 716
    //   883: astore 10
    //   885: aconst_null
    //   886: astore 5
    //   888: goto -257 -> 631
    //   891: astore 20
    //   893: aload 17
    //   895: astore 5
    //   897: aload 20
    //   899: astore 10
    //   901: goto -270 -> 631
    //   904: astore 12
    //   906: aconst_null
    //   907: astore 5
    //   909: goto -363 -> 546
    //   912: astore 19
    //   914: aload 17
    //   916: astore 5
    //   918: aload 19
    //   920: astore 12
    //   922: goto -376 -> 546
    //   925: astore 4
    //   927: aconst_null
    //   928: astore 5
    //   930: aconst_null
    //   931: astore 6
    //   933: goto -543 -> 390
    //   936: astore 4
    //   938: aconst_null
    //   939: astore 5
    //   941: goto -551 -> 390
    //   944: iload_3
    //   945: istore_2
    //   946: goto -887 -> 59
    //   949: aconst_null
    //   950: astore 17
    //   952: goto -683 -> 269
    //
    // Exception table:
    //   from	to	target	type
    //   200	216	380	java/net/MalformedURLException
    //   216	225	380	java/net/MalformedURLException
    //   231	269	380	java/net/MalformedURLException
    //   343	377	380	java/net/MalformedURLException
    //   114	123	538	java/io/IOException
    //   114	123	623	java/lang/Exception
    //   114	123	708	finally
    //   450	455	832	java/io/IOException
    //   606	611	837	java/io/IOException
    //   691	696	842	java/io/IOException
    //   749	754	847	java/io/IOException
    //   302	307	852	java/io/IOException
    //   127	164	857	finally
    //   180	196	857	finally
    //   475	499	857	finally
    //   200	216	865	finally
    //   216	225	865	finally
    //   231	269	865	finally
    //   343	377	865	finally
    //   390	417	878	finally
    //   546	573	878	finally
    //   631	658	878	finally
    //   127	164	883	java/lang/Exception
    //   180	196	883	java/lang/Exception
    //   475	499	883	java/lang/Exception
    //   200	216	891	java/lang/Exception
    //   216	225	891	java/lang/Exception
    //   231	269	891	java/lang/Exception
    //   343	377	891	java/lang/Exception
    //   127	164	904	java/io/IOException
    //   180	196	904	java/io/IOException
    //   475	499	904	java/io/IOException
    //   200	216	912	java/io/IOException
    //   216	225	912	java/io/IOException
    //   231	269	912	java/io/IOException
    //   343	377	912	java/io/IOException
    //   114	123	925	java/net/MalformedURLException
    //   127	164	936	java/net/MalformedURLException
    //   180	196	936	java/net/MalformedURLException
    //   475	499	936	java/net/MalformedURLException
  }

  public int m3u8ParsedNewMediaItemInfoFuncCallBackT(String[] paramArrayOfString, int paramInt1, int paramInt2)
  {
    if (!XMediaplayerJNI.NativeErrorType.NO_ERR.equals(XMediaplayerJNI.NativeErrorType.valueOf(paramInt2)))
    {
      Logger.log(Tag, "m3u8ParsedNewMediaItemInfoFuncCallBackT onErrorInner");
      handlePlayerStatus(paramInt2);
    }
    do
      return -1;
    while (this.mHlsAudioFile == null);
    Logger.log(Tag, "HlsReadThread downUrl0 m3u8ParsedNewMediaItemInfoFuncCallBackT length:" + paramArrayOfString.length);
    int i = MediaplayerGetCurPlayingFileType(this.mJniHandler);
    if (i >= 0)
    {
      this.mAudioType = XMediaplayerJNI.AudioType.valueOf(i);
      Logger.log(Tag, "m3u8ParsedNewMediaItemInfoFuncCallBackT mAudioType0:" + this.mAudioType.value());
    }
    while (true)
    {
      this.mHlsAudioFile.addPlayUrls(paramArrayOfString);
      return 0;
      onErrorInner(8, 1);
      Logger.log(Tag, "m3u8ParsedNewMediaItemInfoFuncCallBackT mAudioType0 error");
    }
  }

  public abstract void mOnTimedChangeListenerInner();

  public abstract void onBufferingUpdateInner(int paramInt);

  public void onCompletionInner()
  {
    resetAllData();
    MediaplayerComplete(this.mJniHandler);
    Logger.log(Tag, "dataStreamInputFuncCallBackT onCompletionInner");
    releaseAudioTrackPlayThread();
  }

  public void onErrorInner(int paramInt1, int paramInt2)
  {
    Logger.log(Tag, "onErrorInner");
  }

  public abstract void onInfoInner(int paramInt1, int paramInt2);

  public void onPreparedInner()
  {
    if (this.isBuffing)
      onInfoInner(10, 702);
    int i = MediaplayerGetCurPlayingFileType(this.mJniHandler);
    if (i >= 0)
    {
      this.mAudioType = XMediaplayerJNI.AudioType.valueOf(i);
      Logger.log(Tag, "onPreparedInner mAudioType:" + this.mAudioType.value());
      return;
    }
    onErrorInner(8, 1);
    Logger.log(Tag, "onPreparedInner mAudioType error");
  }

  public abstract void onSeekCompletedInner();

  public int outputDataAppointment()
  {
    return MediaplayerOutputDataAppointment(this.mJniHandler);
  }

  public void pause()
  {
    Logger.log(Tag, "dataStreamInputFuncCallBackT pause");
    getAudioTrackPlayThread().pausePlay();
    MediaplayerPause(this.mJniHandler);
  }

  public void prepareAsync()
  {
    Logger.log(Tag, "prepareAsync");
    if (!this.isBuffing)
      onInfoInner(10, 701);
    MediaplayerPrepareAsync(this.mJniHandler);
  }

  public void release()
  {
    while (true)
    {
      if (MediaplayerReset(this.mJniHandler) >= 0)
      {
        Logger.log(Tag, "dataStreamInputFuncCallBackT release");
        releaseAudioTrackPlayThread();
        if (this.mHlsAudioFile != null)
          this.mHlsAudioFile.release();
        if (this.mAudioFileRequestHandler != null)
          this.mAudioFileRequestHandler.release();
        MediaplayerDestroy(this.mJniHandler);
        this.tmepBuf = null;
        return;
      }
      try
      {
        Thread.sleep(10000L);
      }
      catch (InterruptedException localInterruptedException)
      {
      }
    }
  }

  public void reset()
  {
    Logger.log(Tag, "reset");
    MediaplayerReset(this.mJniHandler);
    resetAllData();
  }

  public void resetAllData()
  {
    this.mHasSeek = true;
    this.tmepBuf = null;
    this.mCurrentSeekPosition = -1;
    this.mCurrentSeekPositionState = 0;
    this.mCurFileSize = 0L;
    if (this.mAudioFileRequestHandler != null)
      this.mAudioFileRequestHandler.reset();
    if (this.mHlsAudioFile != null)
      this.mHlsAudioFile.release();
    Logger.log(Tag, "dataStreamInputFuncCallBackT initAllData 重置0");
  }

  public void seekTo(int paramInt)
  {
    Logger.log(Tag, "seekParaTimeStampMs msec:" + paramInt);
    this.isSeeking = true;
    MediaplayerSeek(paramInt, this.mJniHandler);
    this.isSeeking = false;
    onSeekCompletedInner();
    mOnTimedChangeListenerInner();
    Logger.log(Tag, "ttseek2:" + System.currentTimeMillis());
  }

  public void setCurFileSize(long paramLong)
  {
    this.mCurFileSize = paramLong;
  }

  public void setDataSource(String paramString)
  {
    Logger.log(Tag, "setDataSource src:" + paramString);
    this.mPlayUrl = paramString;
    if (this.mPlayUrl.contains("m3u8"))
    {
      this.mHlsAudioFile = new HlsAudioFile(this.mPlayUrl, this);
      this.mAudioType = XMediaplayerJNI.AudioType.M3U8_FILE;
      MediaplayerSetDataSourceInfo(this.mPlayUrl, this.mAudioType.value(), this.mJniHandler);
    }
    while (true)
    {
      Logger.log(Tag, "setDataSource mAudioType:" + this.mAudioType.value());
      return;
      this.mAudioFileRequestHandler = new AudioFileRequestHandler(this);
      this.mAudioType = XMediaplayerJNI.AudioType.NORMAL_FILE;
      MediaplayerSetDataSourceInfo(this.mPlayUrl, this.mAudioType.value(), this.mJniHandler);
    }
  }

  public void setVolume(float paramFloat1, float paramFloat2)
  {
    getAudioTrackPlayThread().setVolume(paramFloat1);
  }

  public void start()
  {
    Logger.log(Tag, "dataStreamInputFuncCallBackT start");
    getAudioTrackPlayThread().startPlay();
    MediaplayerPlay(this.mJniHandler);
  }

  public void stop()
  {
    Logger.log(Tag, "dataStreamInputFuncCallBackT stop");
    getAudioTrackPlayThread().stopPlay();
    MediaplayerStop(this.mJniHandler);
    resetAllData();
  }

  public void xmediaplayerInit()
  {
    this.mJniHandler = MediaplayerInit(getAudioTrackPlayThread().getMinOutputBufferSize(), 65536, 65536, 65536);
    Logger.log(Tag, "MediaplayerInit mJniHandler:" + this.mJniHandler);
    if (this.mJniHandler == 0L)
      handlePlayerStatus(XMediaplayerJNI.NativeErrorType.ERR_ARCH_NOT_SUPPORT.value());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.player.XMediaplayerJNI
 * JD-Core Version:    0.6.0
 */