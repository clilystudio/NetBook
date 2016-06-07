package com.ximalaya.ting.android.opensdk.datatrasfer;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.squareup.okhttp.C;
import com.squareup.okhttp.D;
import com.ximalaya.ting.android.opensdk.httputil.BaseBuilder;
import com.ximalaya.ting.android.opensdk.httputil.BaseCall;
import com.ximalaya.ting.android.opensdk.httputil.BaseResponse;
import com.ximalaya.ting.android.opensdk.httputil.ExecutorDelivery;
import com.ximalaya.ting.android.opensdk.httputil.XimalayaException;
import com.ximalaya.ting.android.opensdk.model.album.AlbumList;
import com.ximalaya.ting.android.opensdk.model.album.BatchAlbumList;
import com.ximalaya.ting.android.opensdk.model.album.HotAggregationList;
import com.ximalaya.ting.android.opensdk.model.album.HumanRecommendAlbumList;
import com.ximalaya.ting.android.opensdk.model.album.RelativeAlbums;
import com.ximalaya.ting.android.opensdk.model.album.SearchAlbumList;
import com.ximalaya.ting.android.opensdk.model.album.UpdateBatchList;
import com.ximalaya.ting.android.opensdk.model.app.AppModel;
import com.ximalaya.ting.android.opensdk.model.banner.CategoryBannerList;
import com.ximalaya.ting.android.opensdk.model.banner.DiscoveryBannerList;
import com.ximalaya.ting.android.opensdk.model.banner.RankBannerList;
import com.ximalaya.ting.android.opensdk.model.category.CategoryList;
import com.ximalaya.ting.android.opensdk.model.category.HumanRecommendCategoryList;
import com.ximalaya.ting.android.opensdk.model.column.ColumnDetail;
import com.ximalaya.ting.android.opensdk.model.column.ColumnList;
import com.ximalaya.ting.android.opensdk.model.download.RecommendDownload;
import com.ximalaya.ting.android.opensdk.model.live.program.ProgramList;
import com.ximalaya.ting.android.opensdk.model.live.provinces.ProvinceList;
import com.ximalaya.ting.android.opensdk.model.live.radio.RadioList;
import com.ximalaya.ting.android.opensdk.model.live.schedule.ScheduleList;
import com.ximalaya.ting.android.opensdk.model.ranks.RankAlbumList;
import com.ximalaya.ting.android.opensdk.model.ranks.RankList;
import com.ximalaya.ting.android.opensdk.model.ranks.RankTrackList;
import com.ximalaya.ting.android.opensdk.model.tag.TagList;
import com.ximalaya.ting.android.opensdk.model.track.BatchTrackList;
import com.ximalaya.ting.android.opensdk.model.track.CommonTrackList;
import com.ximalaya.ting.android.opensdk.model.track.LastPlayTrackList;
import com.ximalaya.ting.android.opensdk.model.track.SearchTrackList;
import com.ximalaya.ting.android.opensdk.model.track.TrackHotList;
import com.ximalaya.ting.android.opensdk.model.track.TrackList;
import com.ximalaya.ting.android.opensdk.model.word.HotWordList;
import com.ximalaya.ting.android.opensdk.model.word.SuggestWords;
import com.ximalaya.ting.android.opensdk.player.XmPlayerManager;
import com.ximalaya.ting.android.opensdk.util.NetworkType;
import com.ximalaya.ting.android.opensdk.util.NetworkType.NetWorkType;
import java.util.HashMap;
import java.util.Map;

public class CommonRequest
{
  public static final String TAG = "XiMaLaYaSDK";
  private static ExecutorDelivery delivery;
  private static Context mContext = null;
  public static Handler mHandler = new Handler(Looper.getMainLooper());
  private static CommonRequest singleton;
  private String mAppid = "";
  private String mAppkey = "";
  private String mAppsecret;
  private String mDeviceid = "";
  private String mDisplay = "";
  private String mMac = "";
  private String mNetWorkType = "";
  private String mPackageName = "";
  private int mPagesize = 20;
  private String mSimName = "";

  static
  {
    delivery = new ExecutorDelivery(mHandler);
  }

  public static Map<String, String> CommonParams(Map<String, String> paramMap)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.putAll(getInstanse().assembleCommonParams());
    localHashMap.putAll(paramMap);
    localHashMap.put("otp", OtpManager.getInstanse().getOtp());
    return localHashMap;
  }

  // ERROR //
  public static void getAdvertis(Map<String, String> paramMap, IDataCallBack<com.ximalaya.ting.android.opensdk.model.advertis.AdvertisList> paramIDataCallBack)
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc 118
    //   3: ldc 120
    //   5: invokeinterface 108 3 0
    //   10: pop
    //   11: aload_0
    //   12: ldc 122
    //   14: ldc 124
    //   16: invokeinterface 108 3 0
    //   21: pop
    //   22: aload_0
    //   23: ldc 126
    //   25: ldc 128
    //   27: invokeinterface 108 3 0
    //   32: pop
    //   33: aload_0
    //   34: ldc 130
    //   36: ldc 132
    //   38: invokeinterface 108 3 0
    //   43: pop
    //   44: aload_0
    //   45: ldc 134
    //   47: invokestatic 83	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:getInstanse	()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;
    //   50: invokevirtual 137	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:getSimName	()Ljava/lang/String;
    //   53: invokeinterface 108 3 0
    //   58: pop
    //   59: aload_0
    //   60: ldc 139
    //   62: invokestatic 83	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:getInstanse	()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;
    //   65: invokevirtual 142	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:getNetWorkType	()Ljava/lang/String;
    //   68: invokeinterface 108 3 0
    //   73: pop
    //   74: aload_0
    //   75: ldc 144
    //   77: invokestatic 83	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:getInstanse	()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;
    //   80: invokevirtual 147	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:getDeviceId	()Ljava/lang/String;
    //   83: invokeinterface 108 3 0
    //   88: pop
    //   89: aload_0
    //   90: ldc 149
    //   92: invokestatic 83	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:getInstanse	()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;
    //   95: invokevirtual 152	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:getAppKey	()Ljava/lang/String;
    //   98: invokeinterface 108 3 0
    //   103: pop
    //   104: ldc 154
    //   106: aload_0
    //   107: invokestatic 160	com/ximalaya/ting/android/opensdk/httputil/BaseBuilder:urlGet	(Ljava/lang/String;Ljava/util/Map;)Lcom/squareup/okhttp/D;
    //   110: astore 11
    //   112: aload 11
    //   114: ldc 162
    //   116: new 164	java/lang/StringBuilder
    //   119: dup
    //   120: ldc 166
    //   122: invokespecial 169	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   125: getstatic 174	android/os/Build:MODEL	Ljava/lang/String;
    //   128: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   131: ldc 180
    //   133: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   136: getstatic 185	android/os/Build$VERSION:RELEASE	Ljava/lang/String;
    //   139: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   142: ldc 187
    //   144: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   147: invokevirtual 190	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   150: invokevirtual 196	com/squareup/okhttp/D:b	(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/D;
    //   153: pop
    //   154: new 164	java/lang/StringBuilder
    //   157: dup
    //   158: invokespecial 197	java/lang/StringBuilder:<init>	()V
    //   161: astore 13
    //   163: aload 13
    //   165: ldc 199
    //   167: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   170: new 164	java/lang/StringBuilder
    //   173: dup
    //   174: ldc 201
    //   176: invokespecial 169	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   179: invokestatic 83	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:getInstanse	()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;
    //   182: invokevirtual 147	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:getDeviceId	()Ljava/lang/String;
    //   185: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   188: invokevirtual 190	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   191: ldc 203
    //   193: invokestatic 209	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   196: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   199: ldc 211
    //   201: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   204: pop
    //   205: aload 13
    //   207: ldc 213
    //   209: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   212: invokestatic 83	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:getInstanse	()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;
    //   215: invokevirtual 216	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:getPackageName	()Ljava/lang/String;
    //   218: ldc 203
    //   220: invokestatic 209	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   223: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   226: ldc 211
    //   228: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   231: pop
    //   232: aload 13
    //   234: ldc 218
    //   236: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   239: invokestatic 83	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:getInstanse	()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;
    //   242: invokevirtual 221	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:getLocalMacAddress	()Ljava/lang/String;
    //   245: ldc 203
    //   247: invokestatic 209	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   250: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   253: ldc 211
    //   255: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   258: pop
    //   259: aload 13
    //   261: ldc 223
    //   263: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   266: invokestatic 83	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:getInstanse	()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;
    //   269: invokevirtual 137	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:getSimName	()Ljava/lang/String;
    //   272: ldc 203
    //   274: invokestatic 209	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   277: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   280: ldc 211
    //   282: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   285: pop
    //   286: aload 13
    //   288: ldc 225
    //   290: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   293: invokestatic 83	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:getInstanse	()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;
    //   296: invokevirtual 142	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:getNetWorkType	()Ljava/lang/String;
    //   299: ldc 203
    //   301: invokestatic 209	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   304: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   307: ldc 211
    //   309: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   312: pop
    //   313: aload 13
    //   315: ldc 227
    //   317: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   320: invokestatic 83	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:getInstanse	()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;
    //   323: invokevirtual 230	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:getDisplay	()Ljava/lang/String;
    //   326: ldc 203
    //   328: invokestatic 209	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   331: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   334: pop
    //   335: aload 11
    //   337: ldc 232
    //   339: aload 13
    //   341: invokevirtual 190	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   344: invokevirtual 196	com/squareup/okhttp/D:b	(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/D;
    //   347: pop
    //   348: aload 11
    //   350: invokevirtual 236	com/squareup/okhttp/D:a	()Lcom/squareup/okhttp/C;
    //   353: astore 23
    //   355: new 238	com/squareup/okhttp/A
    //   358: dup
    //   359: invokespecial 239	com/squareup/okhttp/A:<init>	()V
    //   362: astore 24
    //   364: aload 24
    //   366: ldc2_w 240
    //   369: getstatic 247	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   372: invokevirtual 250	com/squareup/okhttp/A:a	(JLjava/util/concurrent/TimeUnit;)V
    //   375: aload 24
    //   377: ldc2_w 240
    //   380: getstatic 247	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   383: invokevirtual 252	com/squareup/okhttp/A:b	(JLjava/util/concurrent/TimeUnit;)V
    //   386: aload 24
    //   388: aload 23
    //   390: new 254	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$36
    //   393: dup
    //   394: aload_1
    //   395: invokespecial 257	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$36:<init>	(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    //   398: invokestatic 263	com/ximalaya/ting/android/opensdk/httputil/BaseCall:doAsync	(Lcom/squareup/okhttp/A;Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;)V
    //   401: return
    //   402: astore_2
    //   403: aload_1
    //   404: aload_2
    //   405: invokevirtual 267	com/ximalaya/ting/android/opensdk/httputil/XimalayaException:getErrorCode	()I
    //   408: aload_2
    //   409: invokevirtual 270	com/ximalaya/ting/android/opensdk/httputil/XimalayaException:getMessage	()Ljava/lang/String;
    //   412: invokeinterface 276 3 0
    //   417: return
    //   418: astore 15
    //   420: aload_1
    //   421: sipush 600
    //   424: ldc_w 278
    //   427: invokeinterface 276 3 0
    //   432: return
    //   433: astore 14
    //   435: aload_1
    //   436: aload 14
    //   438: invokevirtual 267	com/ximalaya/ting/android/opensdk/httputil/XimalayaException:getErrorCode	()I
    //   441: aload 14
    //   443: invokevirtual 281	com/ximalaya/ting/android/opensdk/httputil/XimalayaException:getErrorMessage	()Ljava/lang/String;
    //   446: invokeinterface 276 3 0
    //   451: return
    //
    // Exception table:
    //   from	to	target	type
    //   0	112	402	com/ximalaya/ting/android/opensdk/httputil/XimalayaException
    //   163	348	418	java/io/UnsupportedEncodingException
    //   163	348	433	com/ximalaya/ting/android/opensdk/httputil/XimalayaException
  }

  public static void getAlbums(Map<String, String> paramMap, IDataCallBack<AlbumList> paramIDataCallBack)
  {
    getInstanse().setPageSize(paramMap);
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/openapi-gateway-app/albums/hot", CommonParams(paramMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.9(paramIDataCallBack), paramMap, getInstanse().getAppsecret(), "http://api.ximalaya.com/openapi-gateway-app/albums/hot");
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  public static void getAllAlbums(Map<String, String> paramMap, IDataCallBack<AlbumList> paramIDataCallBack)
  {
    getInstanse().setPageSize(paramMap);
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/openapi-gateway-app/albums/get_all", CommonParams(paramMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.19(paramIDataCallBack), paramMap, getInstanse().getAppsecret(), "http://api.ximalaya.com/openapi-gateway-app/albums/get_all");
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  private Context getAplication()
  {
    if (mContext == null)
      throw new XimalayaException(600, "you must call #XiMaLaYa.init");
    return mContext.getApplicationContext();
  }

  public static void getAppModel(Map<String, String> paramMap, IDataCallBack<AppModel> paramIDataCallBack)
  {
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/version/get_latest_version", paramMap).a();
      BaseCall.doAsync(localC, new CommonRequest.35(paramIDataCallBack));
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  public static void getBatch(Map<String, String> paramMap, IDataCallBack<BatchAlbumList> paramIDataCallBack)
  {
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/openapi-gateway-app/albums/get_batch", CommonParams(paramMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.6(paramIDataCallBack), paramMap, getInstanse().getAppsecret(), "http://api.ximalaya.com/openapi-gateway-app/albums/get_batch");
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  public static void getBatchTracks(Map<String, String> paramMap, IDataCallBack<BatchTrackList> paramIDataCallBack)
  {
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/openapi-gateway-app/tracks/get_batch", CommonParams(paramMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.7(paramIDataCallBack), paramMap, getInstanse().getAppsecret(), "http://api.ximalaya.com/openapi-gateway-app/tracks/get_batch");
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  public static void getCategories(Map<String, String> paramMap, IDataCallBack<CategoryList> paramIDataCallBack)
  {
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/openapi-gateway-app/categories/list", CommonParams(paramMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.1(paramIDataCallBack), paramMap, getInstanse().getAppsecret(), "http://api.ximalaya.com/openapi-gateway-app/categories/list");
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  public static void getCategoryBannerList(Map<String, String> paramMap, IDataCallBack<CategoryBannerList> paramIDataCallBack)
  {
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/openapi-gateway-app/banners/category_banners", CommonParams(paramMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.15(paramIDataCallBack), paramMap, getInstanse().getAppsecret(), "http://api.ximalaya.com/openapi-gateway-app/banners/category_banners");
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  public static void getColumnList(Map<String, String> paramMap, IDataCallBack<ColumnList> paramIDataCallBack)
  {
    getInstanse().setPageSize(paramMap);
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/openapi-gateway-app/column/quality_list", CommonParams(paramMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.20(paramIDataCallBack), paramMap, getInstanse().getAppsecret(), "http://api.ximalaya.com/openapi-gateway-app/column/quality_list");
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  public static void getComlumnDetail(Map<String, String> paramMap, IDataCallBack<ColumnDetail> paramIDataCallBack)
  {
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/openapi-gateway-app/column/detail", CommonParams(paramMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.21(paramIDataCallBack), paramMap, getInstanse().getAppsecret(), "http://api.ximalaya.com/openapi-gateway-app/column/detail");
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  public static void getDiscoveryBannerList(Map<String, String> paramMap, IDataCallBack<DiscoveryBannerList> paramIDataCallBack)
  {
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/openapi-gateway-app/banners/discovery_banners", CommonParams(paramMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.14(paramIDataCallBack), paramMap, getInstanse().getAppsecret(), "http://api.ximalaya.com/openapi-gateway-app/banners/discovery_banners");
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  public static Handler getHandler()
  {
    return mHandler;
  }

  public static void getHotAggregationList(Map<String, String> paramMap, IDataCallBack<HotAggregationList> paramIDataCallBack)
  {
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/openapi-gateway-app/albums/hot_aggregation", CommonParams(paramMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.29(paramIDataCallBack), paramMap, getInstanse().getAppsecret(), "http://api.ximalaya.com/openapi-gateway-app/albums/hot_aggregation");
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  public static void getHotTracks(Map<String, String> paramMap, IDataCallBack<TrackHotList> paramIDataCallBack)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("track_base_url", CommonRequest.UrlConstants.TRACKHOTLIST);
    localHashMap.putAll(paramMap);
    getInstanse().setPageSize(paramMap);
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/openapi-gateway-app/tracks/hot", CommonParams(paramMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.8(localHashMap, paramIDataCallBack), paramMap, getInstanse().getAppsecret(), "http://api.ximalaya.com/openapi-gateway-app/tracks/hot");
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  public static void getHotWords(Map<String, String> paramMap, IDataCallBack<HotWordList> paramIDataCallBack)
  {
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/openapi-gateway-app/search/hot_words", CommonParams(paramMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.12(paramIDataCallBack), paramMap, getInstanse().getAppsecret(), "http://api.ximalaya.com/openapi-gateway-app/search/hot_words");
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  public static CommonRequest getInstanse()
  {
    if (singleton == null)
      monitorenter;
    try
    {
      if (singleton == null)
        singleton = new CommonRequest();
      return singleton;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public static void getLastPlayTracks(Map<String, String> paramMap, IDataCallBack<LastPlayTrackList> paramIDataCallBack)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("track_base_url", CommonRequest.UrlConstants.TRACKLIST);
    localHashMap.putAll(paramMap);
    localHashMap.remove("pid");
    localHashMap.remove("track_id");
    getInstanse().setPageSize(paramMap);
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/openapi-gateway-app/tracks/get_last_play_tracks", CommonParams(paramMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.10(localHashMap, paramIDataCallBack), paramMap, getInstanse().getAppsecret(), "http://api.ximalaya.com/openapi-gateway-app/tracks/get_last_play_tracks");
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  public static void getProgram(Map<String, String> paramMap, IDataCallBack<ProgramList> paramIDataCallBack)
  {
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/openapi-gateway-app/live/get_playing_program", CommonParams(paramMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.34(paramIDataCallBack), paramMap, getInstanse().getAppsecret(), "http://api.ximalaya.com/openapi-gateway-app/live/get_playing_program");
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  public static void getProvinces(Map<String, String> paramMap, IDataCallBack<ProvinceList> paramIDataCallBack)
  {
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/openapi-gateway-app/live/provinces", CommonParams(paramMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.31(paramIDataCallBack), paramMap, getInstanse().getAppsecret(), "http://api.ximalaya.com/openapi-gateway-app/live/provinces");
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  public static void getRadios(Map<String, String> paramMap, IDataCallBack<RadioList> paramIDataCallBack)
  {
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/openapi-gateway-app/live/radios", CommonParams(paramMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.32(paramIDataCallBack), paramMap, getInstanse().getAppsecret(), "http://api.ximalaya.com/openapi-gateway-app/live/radios");
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  public static void getRankAlbumList(Map<String, String> paramMap, IDataCallBack<RankAlbumList> paramIDataCallBack)
  {
    getInstanse().setPageSize(paramMap);
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/openapi-gateway-app/ranks/albums", CommonParams(paramMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.23(paramIDataCallBack), paramMap, getInstanse().getAppsecret(), "http://api.ximalaya.com/openapi-gateway-app/ranks/albums");
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  public static void getRankBannerList(Map<String, String> paramMap, IDataCallBack<RankBannerList> paramIDataCallBack)
  {
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/openapi-gateway-app/banners/rank_banners", CommonParams(paramMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.16(paramIDataCallBack), paramMap, getInstanse().getAppsecret(), "http://api.ximalaya.com/openapi-gateway-app/banners/rank_banners");
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  public static void getRankList(Map<String, String> paramMap, IDataCallBack<RankList> paramIDataCallBack)
  {
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/openapi-gateway-app/ranks/index_list", CommonParams(paramMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.22(paramIDataCallBack), paramMap, getInstanse().getAppsecret(), "http://api.ximalaya.com/openapi-gateway-app/ranks/index_list");
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  public static void getRankRadios(Map<String, String> paramMap, IDataCallBack<RadioList> paramIDataCallBack)
  {
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/openapi-gateway-app/ranks/radios", CommonParams(paramMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.25(paramIDataCallBack), paramMap, getInstanse().getAppsecret(), "http://api.ximalaya.com/openapi-gateway-app/ranks/radios");
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  public static void getRankTrackList(Map<String, String> paramMap, IDataCallBack<RankTrackList> paramIDataCallBack)
  {
    getInstanse().setPageSize(paramMap);
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/openapi-gateway-app/ranks/tracks", CommonParams(paramMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.24(paramIDataCallBack), paramMap, getInstanse().getAppsecret(), "http://api.ximalaya.com/openapi-gateway-app/ranks/tracks");
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  public static void getRecommendAlbum(Map<String, String> paramMap, IDataCallBack<HumanRecommendAlbumList> paramIDataCallBack)
  {
    getInstanse().setPageSize(paramMap);
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/openapi-gateway-app/albums/human_recommend", CommonParams(paramMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.17(paramIDataCallBack), paramMap, getInstanse().getAppsecret(), "http://api.ximalaya.com/openapi-gateway-app/albums/human_recommend");
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  public static void getRecommendCategory(Map<String, String> paramMap, IDataCallBack<HumanRecommendCategoryList> paramIDataCallBack)
  {
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/openapi-gateway-app/categories/human_recommend", CommonParams(paramMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.18(paramIDataCallBack), paramMap, getInstanse().getAppsecret(), "http://api.ximalaya.com/openapi-gateway-app/categories/human_recommend");
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  public static void getRecommendDownloadList(Map<String, String> paramMap, IDataCallBack<RecommendDownload> paramIDataCallBack)
  {
    getInstanse().setPageSize(paramMap);
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/openapi-gateway-app/albums/recommend_download", CommonParams(paramMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.30(paramIDataCallBack), paramMap, getInstanse().getAppsecret(), "http://api.ximalaya.com/openapi-gateway-app/albums/recommend_download");
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  public static void getRelativeAlbums(Map<String, String> paramMap, IDataCallBack<RelativeAlbums> paramIDataCallBack)
  {
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/openapi-gateway-app/albums/relative_album", CommonParams(paramMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.27(paramIDataCallBack), paramMap, getInstanse().getAppsecret(), "http://api.ximalaya.com/openapi-gateway-app/albums/relative_album");
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  public static void getRelativeAlbumsUseTrackId(Map<String, String> paramMap, IDataCallBack<RelativeAlbums> paramIDataCallBack)
  {
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/openapi-gateway-app/tracks/relative_album", CommonParams(paramMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.26(paramIDataCallBack), paramMap, getInstanse().getAppsecret(), "http://api.ximalaya.com/openapi-gateway-app/tracks/relative_album");
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  public static void getSchedules(Map<String, String> paramMap, IDataCallBack<ScheduleList> paramIDataCallBack)
  {
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/openapi-gateway-app/live/schedules", CommonParams(paramMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.33(paramIDataCallBack), paramMap, getInstanse().getAppsecret(), "http://api.ximalaya.com/openapi-gateway-app/live/schedules");
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  public static void getSearchedAlbums(Map<String, String> paramMap, IDataCallBack<SearchAlbumList> paramIDataCallBack)
  {
    getInstanse().setPageSize(paramMap);
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/openapi-gateway-app/search/albums", CommonParams(paramMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.3(paramIDataCallBack), paramMap, getInstanse().getAppsecret(), "http://api.ximalaya.com/openapi-gateway-app/search/albums");
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  public static void getSearchedRadios(Map<String, String> paramMap, IDataCallBack<RadioList> paramIDataCallBack)
  {
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/openapi-gateway-app/search/radios", CommonParams(paramMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.5(paramIDataCallBack), paramMap, getInstanse().getAppsecret(), "http://api.ximalaya.com/openapi-gateway-app/search/radios");
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  public static void getSearchedTracks(Map<String, String> paramMap, IDataCallBack<SearchTrackList> paramIDataCallBack)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("track_base_url", CommonRequest.UrlConstants.SEARCHTRACKLIST);
    localHashMap.putAll(paramMap);
    getInstanse().setPageSize(paramMap);
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/openapi-gateway-app/search/tracks", CommonParams(paramMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.4(localHashMap, paramIDataCallBack), paramMap, getInstanse().getAppsecret(), "http://api.ximalaya.com/openapi-gateway-app/search/tracks");
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  public static void getSuggestWord(Map<String, String> paramMap, IDataCallBack<SuggestWords> paramIDataCallBack)
  {
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/openapi-gateway-app/search/suggest_words", CommonParams(paramMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.13(paramIDataCallBack), paramMap, getInstanse().getAppsecret(), "http://api.ximalaya.com/openapi-gateway-app/search/suggest_words");
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  public static void getTags(Map<String, String> paramMap, IDataCallBack<TagList> paramIDataCallBack)
  {
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/openapi-gateway-app/tags/list", CommonParams(paramMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.28(paramIDataCallBack), paramMap, getInstanse().getAppsecret(), "http://api.ximalaya.com/openapi-gateway-app/tags/list");
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  public static void getTrackList(Map<String, String> paramMap, IDataCallBack<CommonTrackList> paramIDataCallBack)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.putAll(paramMap);
    String str = (String)localHashMap.remove("track_base_url");
    localHashMap.remove("total_page");
    try
    {
      C localC = BaseBuilder.urlGet(str, CommonParams(localHashMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.37(paramIDataCallBack), localHashMap, getInstanse().getAppsecret(), str);
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getErrorMessage());
    }
  }

  public static void getTracks(Map<String, String> paramMap, IDataCallBack<TrackList> paramIDataCallBack)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("track_base_url", CommonRequest.UrlConstants.TRACKLIST);
    localHashMap.putAll(paramMap);
    getInstanse().setPageSize(paramMap);
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/openapi-gateway-app/albums/browse", CommonParams(paramMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.11(localHashMap, paramIDataCallBack), paramMap, getInstanse().getAppsecret(), "http://api.ximalaya.com/openapi-gateway-app/albums/browse");
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  public static void getUpdateBatch(Map<String, String> paramMap, IDataCallBack<UpdateBatchList> paramIDataCallBack)
  {
    try
    {
      C localC = BaseBuilder.urlGet("http://api.ximalaya.com/openapi-gateway-app/albums/get_update_batch", CommonParams(paramMap), getInstanse().getAppsecret()).a();
      OtpBaseCall.doAsync(localC, new CommonRequest.2(paramIDataCallBack), paramMap, getInstanse().getAppsecret(), "http://api.ximalaya.com/openapi-gateway-app/albums/get_update_batch");
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      paramIDataCallBack.onError(localXimalayaException.getErrorCode(), localXimalayaException.getMessage());
    }
  }

  public Map<String, String> assembleCommonParams()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("app_key", getInstanse().getAppKey());
    localHashMap.put("device_id", getDeviceId());
    localHashMap.put("pack_id", getInstanse().getPackId());
    localHashMap.put("sdk_version", getInstanse().getSdkVersion());
    localHashMap.put("client_os_type", String.valueOf(getInstanse().getClientOsType()));
    return localHashMap;
  }

  public void destroy()
  {
    singleton = null;
  }

  public String getAppKey()
  {
    if (this.mAppkey.equals(""));
    try
    {
      this.mAppkey = getAplication().getPackageManager().getApplicationInfo(getAplication().getPackageName(), 128).metaData.getString("app_key");
      return this.mAppkey;
    }
    catch (Exception localException)
    {
    }
    throw new XimalayaException(600, "get appkey error");
  }

  public String getAppsecret()
  {
    return this.mAppsecret;
  }

  public int getClientOsType()
  {
    return 2;
  }

  public int getDefaultPagesize()
  {
    return this.mPagesize;
  }

  public String getDeviceId()
  {
    if (this.mDeviceid.equals(""))
      this.mDeviceid = Settings.Secure.getString(getAplication().getContentResolver(), "android_id");
    if (TextUtils.isEmpty(this.mDeviceid))
      throw new XimalayaException(600, "get deviceid error");
    return this.mDeviceid;
  }

  public String getDisplay()
  {
    return this.mDisplay;
  }

  public String getLocalMacAddress()
  {
    if (this.mMac.equals(""))
      this.mMac = ((WifiManager)getAplication().getSystemService("wifi")).getConnectionInfo().getMacAddress();
    if (TextUtils.isEmpty(this.mMac))
      throw new XimalayaException(600, "get mac address error");
    return this.mMac;
  }

  public String getNetWorkType()
  {
    if (this.mNetWorkType.equals(""))
      this.mNetWorkType = NetworkType.getNetWorkType(mContext).getName();
    return this.mNetWorkType;
  }

  public String getPackId()
  {
    if (this.mAppid.equals(""));
    try
    {
      this.mAppid = getAplication().getPackageManager().getApplicationInfo(getAplication().getPackageName(), 128).metaData.getString("pack_id");
      return this.mAppid;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
    }
    throw new XimalayaException(600, "get packid error");
  }

  public String getPackageName()
  {
    if (this.mPackageName.equals(""))
      this.mPackageName = mContext.getPackageName();
    return this.mPackageName;
  }

  public String getSdkVersion()
  {
    return "v1.0";
  }

  public String getSimName()
  {
    if (this.mSimName.equals(""))
      this.mSimName = ((TelephonyManager)mContext.getSystemService("phone")).getSimOperatorName();
    return this.mSimName;
  }

  public void init(Context paramContext, String paramString)
  {
    mContext = paramContext.getApplicationContext();
    this.mAppsecret = paramString;
    OtpManager.getInstanse().init(paramContext);
  }

  public DataErrorCategory parseResponseHandler(BaseResponse paramBaseResponse)
  {
    Gson localGson = new Gson();
    try
    {
      DataErrorCategory localDataErrorCategory = (DataErrorCategory)localGson.fromJson(paramBaseResponse.getResponseBodyToString(), DataErrorCategory.class);
      return localDataErrorCategory;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public void setDefaultPagesize(int paramInt)
  {
    if (this.mPagesize == paramInt)
      return;
    this.mPagesize = paramInt;
    if (mContext == null)
      throw new XimalayaException(600, "you must call #XiMaLaYa.init");
    XmPlayerManager.getInstance(mContext).setAutoLoadPageSizeInner(paramInt);
  }

  public void setPageSize(Map<String, String> paramMap)
  {
    if (!paramMap.containsKey("count"))
      paramMap.put("count", String.valueOf(getDefaultPagesize()));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.datatrasfer.CommonRequest
 * JD-Core Version:    0.6.0
 */