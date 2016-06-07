package com.ximalaya.ting.android.opensdk.player.service;

import android.content.Context;
import android.text.TextUtils;
import com.squareup.okhttp.C;
import com.squareup.okhttp.D;
import com.ximalaya.ting.android.opensdk.datatrasfer.CommonRequest;
import com.ximalaya.ting.android.opensdk.httputil.BaseBuilder;
import com.ximalaya.ting.android.opensdk.httputil.BaseCall;
import com.ximalaya.ting.android.opensdk.httputil.XimalayaException;
import com.ximalaya.ting.android.opensdk.model.advertis.Advertis;
import com.ximalaya.ting.android.opensdk.model.advertis.AdvertisList;
import com.ximalaya.ting.android.opensdk.model.track.Track;
import com.ximalaya.ting.android.opensdk.util.DigestUtils;
import com.ximalaya.ting.android.opensdk.util.FileUtilBase;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class XmAdsManager
{
  private static final int MAX_ADS_CACHE = 10;
  private static final String TAG = "XmAdsManager";
  private static XmAdsManager sInstance;
  private static byte[] sLock = new byte[0];
  private boolean mAdsActive = false;
  private List<String> mAdsFileCache = new ArrayList();
  private MiniPlayer mAdsPlayer;
  private Context mAppCtx;
  private XmAdsManager.TaskWrapper mLastTask;
  private IXmAdsStatusListener mListener;

  private XmAdsManager(Context paramContext)
  {
    this.mAppCtx = paramContext.getApplicationContext();
    loadCachedAdsFile();
  }

  private boolean deleteAdsCacheFile(String paramString)
  {
    File localFile = new File(FileUtilBase.getAdsCacheDir(this.mAppCtx, paramString));
    if (localFile.exists())
      return localFile.delete();
    return false;
  }

  private void downloadAdsFile(XmAdsManager.TaskWrapper paramTaskWrapper)
  {
    if (exitPlayAds(paramTaskWrapper.cancel, paramTaskWrapper.callback))
      return;
    if (this.mListener != null)
      this.mListener.onAdsStartBuffering();
    new XmAdsManager.3(this, paramTaskWrapper).myexec(new Void[0]);
  }

  private void downloadAndPlayAds(XmAdsManager.TaskWrapper paramTaskWrapper)
  {
    if (exitPlayAds(paramTaskWrapper.cancel, paramTaskWrapper.callback))
      return;
    Advertis localAdvertis = (Advertis)paramTaskWrapper.ads.getAdvertisList().get(0);
    if (TextUtils.isEmpty(localAdvertis.getSoundUrl()))
    {
      this.mAdsActive = false;
      exitPlayAds(true, paramTaskWrapper.callback);
      return;
    }
    String str = DigestUtils.md5Hex(localAdvertis.getSoundUrl()) + getSuffixFromUrl(localAdvertis.getSoundUrl());
    if (this.mAdsFileCache.contains(str))
    {
      playAdsInternal(paramTaskWrapper);
      return;
    }
    downloadAdsFile(paramTaskWrapper);
  }

  // ERROR //
  private int downloadFile(String paramString1, String paramString2, XmAdsManager.TaskWrapper paramTaskWrapper)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: new 202	com/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config
    //   6: dup
    //   7: invokespecial 203	com/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config:<init>	()V
    //   10: astore 5
    //   12: aload 5
    //   14: sipush 3000
    //   17: putfield 206	com/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config:connectionTimeOut	I
    //   20: aload 5
    //   22: sipush 3000
    //   25: putfield 209	com/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config:readTimeOut	I
    //   28: aload_1
    //   29: aload 5
    //   31: invokestatic 215	com/ximalaya/ting/android/opensdk/util/HttpUrlUtil:getHttpURLConnection	(Ljava/lang/String;Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;)Ljava/net/HttpURLConnection;
    //   34: astore 11
    //   36: aload 11
    //   38: invokevirtual 220	java/net/HttpURLConnection:connect	()V
    //   41: aload 11
    //   43: invokevirtual 224	java/net/HttpURLConnection:getResponseCode	()I
    //   46: istore 12
    //   48: aload 11
    //   50: ldc 226
    //   52: invokevirtual 229	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   55: astore 13
    //   57: iload 12
    //   59: sipush 200
    //   62: if_icmpne +201 -> 263
    //   65: aload 13
    //   67: invokestatic 167	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   70: ifne +193 -> 263
    //   73: aload 13
    //   75: invokestatic 235	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   78: lconst_0
    //   79: lcmp
    //   80: ifgt +5 -> 85
    //   83: iconst_m1
    //   84: ireturn
    //   85: aload 11
    //   87: invokevirtual 239	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   90: astore 14
    //   92: sipush 8192
    //   95: newarray byte
    //   97: astore 15
    //   99: new 241	java/io/FileOutputStream
    //   102: dup
    //   103: new 98	java/io/File
    //   106: dup
    //   107: aload_2
    //   108: invokespecial 107	java/io/File:<init>	(Ljava/lang/String;)V
    //   111: iconst_0
    //   112: invokespecial 244	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   115: astore 7
    //   117: aload 14
    //   119: aload 15
    //   121: invokevirtual 250	java/io/InputStream:read	([B)I
    //   124: istore 16
    //   126: iload 16
    //   128: ifgt +15 -> 143
    //   131: aload 7
    //   133: invokevirtual 253	java/io/FileOutputStream:flush	()V
    //   136: aload 7
    //   138: invokevirtual 256	java/io/FileOutputStream:close	()V
    //   141: iconst_0
    //   142: ireturn
    //   143: aload_3
    //   144: getfield 120	com/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper:cancel	Z
    //   147: istore 18
    //   149: iload 18
    //   151: ifeq +19 -> 170
    //   154: aload 7
    //   156: invokevirtual 256	java/io/FileOutputStream:close	()V
    //   159: iconst_m1
    //   160: ireturn
    //   161: astore 19
    //   163: aload 19
    //   165: invokevirtual 259	java/io/IOException:printStackTrace	()V
    //   168: iconst_m1
    //   169: ireturn
    //   170: aload 7
    //   172: aload 15
    //   174: iconst_0
    //   175: iload 16
    //   177: invokevirtual 263	java/io/FileOutputStream:write	([BII)V
    //   180: goto -63 -> 117
    //   183: astore 6
    //   185: aload 6
    //   187: invokevirtual 259	java/io/IOException:printStackTrace	()V
    //   190: aload 7
    //   192: ifnull +71 -> 263
    //   195: aload 7
    //   197: invokevirtual 256	java/io/FileOutputStream:close	()V
    //   200: iconst_m1
    //   201: ireturn
    //   202: astore 10
    //   204: aload 10
    //   206: invokevirtual 259	java/io/IOException:printStackTrace	()V
    //   209: iconst_m1
    //   210: ireturn
    //   211: astore 17
    //   213: aload 17
    //   215: invokevirtual 259	java/io/IOException:printStackTrace	()V
    //   218: goto -77 -> 141
    //   221: astore 8
    //   223: aload 4
    //   225: ifnull +8 -> 233
    //   228: aload 4
    //   230: invokevirtual 256	java/io/FileOutputStream:close	()V
    //   233: aload 8
    //   235: athrow
    //   236: astore 9
    //   238: aload 9
    //   240: invokevirtual 259	java/io/IOException:printStackTrace	()V
    //   243: goto -10 -> 233
    //   246: astore 8
    //   248: aload 7
    //   250: astore 4
    //   252: goto -29 -> 223
    //   255: astore 6
    //   257: aconst_null
    //   258: astore 7
    //   260: goto -75 -> 185
    //   263: iconst_m1
    //   264: ireturn
    //
    // Exception table:
    //   from	to	target	type
    //   154	159	161	java/io/IOException
    //   117	126	183	java/io/IOException
    //   131	136	183	java/io/IOException
    //   143	149	183	java/io/IOException
    //   170	180	183	java/io/IOException
    //   195	200	202	java/io/IOException
    //   136	141	211	java/io/IOException
    //   3	57	221	finally
    //   65	83	221	finally
    //   85	117	221	finally
    //   228	233	236	java/io/IOException
    //   117	126	246	finally
    //   131	136	246	finally
    //   143	149	246	finally
    //   170	180	246	finally
    //   185	190	246	finally
    //   3	57	255	java/io/IOException
    //   65	83	255	java/io/IOException
    //   85	117	255	java/io/IOException
  }

  private boolean exitPlayAds(boolean paramBoolean, XmAdsManager.PlayAdsCallback paramPlayAdsCallback)
  {
    if (paramBoolean)
    {
      if (this.mListener != null)
        this.mListener.onCompletePlayAds();
      paramPlayAdsCallback.onFinish();
      return true;
    }
    return false;
  }

  private void getAdsInfoAndPlay(XmAdsManager.TaskWrapper paramTaskWrapper)
  {
    monitorenter;
    try
    {
      if (this.mListener != null)
        this.mListener.onStartGetAdsInfo();
      HashMap localHashMap = new HashMap();
      localHashMap.put("trackId", "87288");
      localHashMap.put("mode", "0");
      localHashMap.put("playMethod", "1");
      CommonRequest.getAdvertis(localHashMap, new XmAdsManager.1(this, paramTaskWrapper));
      return;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public static XmAdsManager getInstance(Context paramContext)
  {
    if (sInstance == null);
    synchronized (sLock)
    {
      if (sInstance == null)
        sInstance = new XmAdsManager(paramContext);
      return sInstance;
    }
  }

  public static String getSuffixFromUrl(String paramString)
  {
    if ((TextUtils.isEmpty(paramString)) || (!paramString.contains(".")))
      return null;
    return paramString.substring(paramString.lastIndexOf("."), paramString.length());
  }

  private void loadCachedAdsFile()
  {
    File localFile = new File(FileUtilBase.getAdsCacheDir(this.mAppCtx, ""));
    if (!localFile.exists())
      localFile.mkdirs();
    String[] arrayOfString = localFile.list();
    if ((arrayOfString == null) || (arrayOfString.length == 0))
      return;
    this.mAdsFileCache.clear();
    this.mAdsFileCache.addAll(Arrays.asList(arrayOfString));
  }

  private void playAdsInternal(XmAdsManager.TaskWrapper paramTaskWrapper)
  {
    if (exitPlayAds(paramTaskWrapper.cancel, paramTaskWrapper.callback))
    {
      if (this.mListener != null)
        this.mListener.onAdsStopBuffering();
      return;
    }
    if (this.mAdsPlayer != null)
      this.mAdsPlayer.stopPlay();
    while (true)
    {
      while (true)
      {
        this.mAdsPlayer.setOnCompletionListener(new XmAdsManager.2(this, paramTaskWrapper));
        Advertis localAdvertis = (Advertis)paramTaskWrapper.ads.getAdvertisList().get(0);
        String str1 = DigestUtils.md5Hex(localAdvertis.getSoundUrl()) + getSuffixFromUrl(localAdvertis.getSoundUrl());
        String str2 = FileUtilBase.getAdsCacheDir(this.mAppCtx, str1);
        if (!new File(str2).exists())
          break label225;
        try
        {
          this.mAdsPlayer.init(str2);
          this.mAdsPlayer.startPlay();
          if (this.mListener == null)
            break;
          this.mListener.onStartPlayAds(localAdvertis, 0);
          return;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          if (this.mListener != null)
            this.mListener.onError(0, 0);
          this.mAdsActive = false;
          exitPlayAds(true, paramTaskWrapper.callback);
          return;
        }
      }
      this.mAdsPlayer = new MiniPlayer();
    }
    label225: this.mAdsActive = false;
    exitPlayAds(true, paramTaskWrapper.callback);
  }

  private void uploadAdsLog(XmAdsManager.TaskWrapper paramTaskWrapper)
  {
    XmAdsRecord localXmAdsRecord = new XmAdsRecord();
    localXmAdsRecord.setTime(System.currentTimeMillis());
    localXmAdsRecord.setTrackId(paramTaskWrapper.track.getDataId());
    localXmAdsRecord.setAdItemId(((Advertis)paramTaskWrapper.ads.getAdvertisList().get(0)).getAdid());
    localXmAdsRecord.setResponseId(paramTaskWrapper.ads.getResponseId());
    localXmAdsRecord.setVersion(CommonRequest.getInstanse().getSdkVersion());
    try
    {
      localXmAdsRecord.setAppKey(CommonRequest.getInstanse().getAppKey());
      XmAdsEvents localXmAdsEvents = new XmAdsEvents(localXmAdsRecord);
      try
      {
        C localC = BaseBuilder.urlPost("http://xdcs-collector.test.ximalaya.com/api/v1/realtime", localXmAdsEvents.toJsonString().getBytes()).a();
        BaseCall.doAsync(localC, new XmAdsManager.4(this));
        return;
      }
      catch (XimalayaException localXimalayaException2)
      {
        return;
      }
    }
    catch (XimalayaException localXimalayaException1)
    {
    }
  }

  public boolean isAdsActive()
  {
    return this.mAdsActive;
  }

  public boolean isAdsBuffering()
  {
    return (this.mAdsActive) && (!isAdsPlaying());
  }

  public boolean isAdsPlaying()
  {
    return (this.mAdsPlayer != null) && (this.mAdsPlayer.isPlaying());
  }

  public void pauseAd()
  {
    if (this.mAdsPlayer != null)
      this.mAdsPlayer.pausePlay();
  }

  public void playAd()
  {
    if (this.mAdsPlayer != null)
      this.mAdsPlayer.startPlay();
  }

  public void playAds(Track paramTrack, XmAdsManager.PlayAdsCallback paramPlayAdsCallback)
  {
    this.mAdsActive = true;
    if (this.mLastTask != null)
      this.mLastTask.cancel = true;
    XmAdsManager.TaskWrapper localTaskWrapper = new XmAdsManager.TaskWrapper(this);
    localTaskWrapper.track = paramTrack;
    localTaskWrapper.callback = paramPlayAdsCallback;
    this.mLastTask = localTaskWrapper;
    if (this.mAdsPlayer != null)
      this.mAdsPlayer.stopPlay();
    getAdsInfoAndPlay(this.mLastTask);
  }

  public void release()
  {
    if (this.mAdsPlayer != null)
      this.mAdsPlayer.stopPlay();
    if (this.mLastTask != null)
      this.mLastTask.cancel = true;
    this.mListener = null;
    synchronized (sLock)
    {
      sInstance = null;
      return;
    }
  }

  public void setAdsStatusListener(IXmAdsStatusListener paramIXmAdsStatusListener)
  {
    this.mListener = paramIXmAdsStatusListener;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.XmAdsManager
 * JD-Core Version:    0.6.0
 */