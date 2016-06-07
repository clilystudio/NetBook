package com.ximalaya.ting.android.opensdk.datatrasfer;

import com.squareup.okhttp.C;
import com.ximalaya.ting.android.opensdk.httputil.BaseCall;
import com.ximalaya.ting.android.opensdk.httputil.IHttpCallBack;
import java.util.Map;

public class OtpBaseCall
{
  public static void doAsync(C paramC, IHttpCallBack paramIHttpCallBack, Map<String, String> paramMap, String paramString1, String paramString2)
  {
    BaseCall.doAsync(paramC, new OtpBaseCall.1(paramIHttpCallBack, paramString2, paramMap, paramString1));
  }

  // ERROR //
  public static String doSync(C paramC, Map<String, String> paramMap, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 29	com/ximalaya/ting/android/opensdk/httputil/BaseCall:doSync	(Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/I;
    //   4: astore 5
    //   6: new 31	com/ximalaya/ting/android/opensdk/httputil/BaseResponse
    //   9: dup
    //   10: aload 5
    //   12: invokespecial 34	com/ximalaya/ting/android/opensdk/httputil/BaseResponse:<init>	(Lcom/squareup/okhttp/I;)V
    //   15: astore 6
    //   17: aload 5
    //   19: invokevirtual 40	com/squareup/okhttp/I:c	()I
    //   22: sipush 200
    //   25: if_icmpne +12 -> 37
    //   28: aload 5
    //   30: invokevirtual 44	com/squareup/okhttp/I:g	()Lcom/squareup/okhttp/K;
    //   33: invokevirtual 50	com/squareup/okhttp/K:f	()Ljava/lang/String;
    //   36: areturn
    //   37: invokestatic 56	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:getInstanse	()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;
    //   40: aload 6
    //   42: invokevirtual 60	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:parseResponseHandler	(Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;)Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;
    //   45: astore 7
    //   47: aload 7
    //   49: ifnull +14 -> 63
    //   52: aload 7
    //   54: invokevirtual 65	com/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory:getErrorDesc	()Ljava/lang/String;
    //   57: invokestatic 71	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   60: ifeq +42 -> 102
    //   63: new 73	com/ximalaya/ting/android/opensdk/httputil/XimalayaException
    //   66: dup
    //   67: sipush 603
    //   70: ldc 75
    //   72: invokespecial 78	com/ximalaya/ting/android/opensdk/httputil/XimalayaException:<init>	(ILjava/lang/String;)V
    //   75: athrow
    //   76: astore 4
    //   78: aload 4
    //   80: invokevirtual 81	java/io/IOException:getMessage	()Ljava/lang/String;
    //   83: invokestatic 71	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   86: ifeq +327 -> 413
    //   89: new 73	com/ximalaya/ting/android/opensdk/httputil/XimalayaException
    //   92: dup
    //   93: sipush 604
    //   96: ldc 83
    //   98: invokespecial 78	com/ximalaya/ting/android/opensdk/httputil/XimalayaException:<init>	(ILjava/lang/String;)V
    //   101: athrow
    //   102: aload 7
    //   104: invokevirtual 86	com/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory:getErrorNo	()I
    //   107: istore 8
    //   109: iload 8
    //   111: sipush 300
    //   114: if_icmpne +315 -> 429
    //   117: ldc 88
    //   119: invokestatic 56	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:getInstanse	()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;
    //   122: invokevirtual 92	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:assembleCommonParams	()Ljava/util/Map;
    //   125: invokestatic 56	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:getInstanse	()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;
    //   128: invokevirtual 95	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:getAppsecret	()Ljava/lang/String;
    //   131: invokestatic 101	com/ximalaya/ting/android/opensdk/httputil/BaseBuilder:urlPost	(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;
    //   134: astore 10
    //   136: aload 10
    //   138: invokevirtual 107	com/squareup/okhttp/D:a	()Lcom/squareup/okhttp/C;
    //   141: invokestatic 29	com/ximalaya/ting/android/opensdk/httputil/BaseCall:doSync	(Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/I;
    //   144: astore 11
    //   146: new 31	com/ximalaya/ting/android/opensdk/httputil/BaseResponse
    //   149: dup
    //   150: aload 11
    //   152: invokespecial 34	com/ximalaya/ting/android/opensdk/httputil/BaseResponse:<init>	(Lcom/squareup/okhttp/I;)V
    //   155: astore 12
    //   157: aload 12
    //   159: invokevirtual 110	com/ximalaya/ting/android/opensdk/httputil/BaseResponse:getStatusCode	()I
    //   162: istore 13
    //   164: iload 13
    //   166: sipush 200
    //   169: if_icmpne +187 -> 356
    //   172: new 112	org/json/JSONObject
    //   175: dup
    //   176: aload 11
    //   178: invokevirtual 44	com/squareup/okhttp/I:g	()Lcom/squareup/okhttp/K;
    //   181: invokevirtual 50	com/squareup/okhttp/K:f	()Ljava/lang/String;
    //   184: invokespecial 115	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   187: astore 15
    //   189: invokestatic 120	com/ximalaya/ting/android/opensdk/datatrasfer/OtpManager:getInstanse	()Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;
    //   192: aload 15
    //   194: ldc 122
    //   196: invokevirtual 126	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   199: aload 15
    //   201: ldc 128
    //   203: invokevirtual 132	org/json/JSONObject:optLong	(Ljava/lang/String;)J
    //   206: invokevirtual 136	com/ximalaya/ting/android/opensdk/datatrasfer/OtpManager:setOtp	(Ljava/lang/String;J)V
    //   209: aload_3
    //   210: aload_1
    //   211: invokestatic 140	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:CommonParams	(Ljava/util/Map;)Ljava/util/Map;
    //   214: aload_2
    //   215: invokestatic 143	com/ximalaya/ting/android/opensdk/httputil/BaseBuilder:urlGet	(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;
    //   218: invokevirtual 107	com/squareup/okhttp/D:a	()Lcom/squareup/okhttp/C;
    //   221: astore 18
    //   223: new 31	com/ximalaya/ting/android/opensdk/httputil/BaseResponse
    //   226: dup
    //   227: aload 18
    //   229: invokestatic 29	com/ximalaya/ting/android/opensdk/httputil/BaseCall:doSync	(Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/I;
    //   232: invokespecial 34	com/ximalaya/ting/android/opensdk/httputil/BaseResponse:<init>	(Lcom/squareup/okhttp/I;)V
    //   235: astore 19
    //   237: aload 19
    //   239: invokevirtual 110	com/ximalaya/ting/android/opensdk/httputil/BaseResponse:getStatusCode	()I
    //   242: sipush 200
    //   245: if_icmpne +54 -> 299
    //   248: aload 19
    //   250: invokevirtual 146	com/ximalaya/ting/android/opensdk/httputil/BaseResponse:getResponseBodyToString	()Ljava/lang/String;
    //   253: areturn
    //   254: astore 9
    //   256: new 73	com/ximalaya/ting/android/opensdk/httputil/XimalayaException
    //   259: dup
    //   260: sipush 601
    //   263: ldc 148
    //   265: invokespecial 78	com/ximalaya/ting/android/opensdk/httputil/XimalayaException:<init>	(ILjava/lang/String;)V
    //   268: athrow
    //   269: astore 16
    //   271: new 73	com/ximalaya/ting/android/opensdk/httputil/XimalayaException
    //   274: dup
    //   275: sipush 603
    //   278: ldc 75
    //   280: invokespecial 78	com/ximalaya/ting/android/opensdk/httputil/XimalayaException:<init>	(ILjava/lang/String;)V
    //   283: athrow
    //   284: astore 17
    //   286: new 73	com/ximalaya/ting/android/opensdk/httputil/XimalayaException
    //   289: dup
    //   290: sipush 603
    //   293: ldc 75
    //   295: invokespecial 78	com/ximalaya/ting/android/opensdk/httputil/XimalayaException:<init>	(ILjava/lang/String;)V
    //   298: athrow
    //   299: invokestatic 56	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:getInstanse	()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;
    //   302: aload 19
    //   304: invokevirtual 60	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:parseResponseHandler	(Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;)Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;
    //   307: astore 20
    //   309: aload 20
    //   311: ifnull +14 -> 325
    //   314: aload 20
    //   316: invokevirtual 65	com/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory:getErrorDesc	()Ljava/lang/String;
    //   319: invokestatic 71	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   322: ifeq +16 -> 338
    //   325: new 73	com/ximalaya/ting/android/opensdk/httputil/XimalayaException
    //   328: dup
    //   329: sipush 603
    //   332: ldc 75
    //   334: invokespecial 78	com/ximalaya/ting/android/opensdk/httputil/XimalayaException:<init>	(ILjava/lang/String;)V
    //   337: athrow
    //   338: new 73	com/ximalaya/ting/android/opensdk/httputil/XimalayaException
    //   341: dup
    //   342: aload 20
    //   344: invokevirtual 86	com/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory:getErrorNo	()I
    //   347: aload 20
    //   349: invokevirtual 65	com/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory:getErrorDesc	()Ljava/lang/String;
    //   352: invokespecial 78	com/ximalaya/ting/android/opensdk/httputil/XimalayaException:<init>	(ILjava/lang/String;)V
    //   355: athrow
    //   356: invokestatic 56	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:getInstanse	()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;
    //   359: aload 12
    //   361: invokevirtual 60	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:parseResponseHandler	(Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;)Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;
    //   364: astore 14
    //   366: aload 14
    //   368: ifnull +14 -> 382
    //   371: aload 14
    //   373: invokevirtual 65	com/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory:getErrorDesc	()Ljava/lang/String;
    //   376: invokestatic 71	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   379: ifeq +16 -> 395
    //   382: new 73	com/ximalaya/ting/android/opensdk/httputil/XimalayaException
    //   385: dup
    //   386: sipush 603
    //   389: ldc 75
    //   391: invokespecial 78	com/ximalaya/ting/android/opensdk/httputil/XimalayaException:<init>	(ILjava/lang/String;)V
    //   394: athrow
    //   395: new 73	com/ximalaya/ting/android/opensdk/httputil/XimalayaException
    //   398: dup
    //   399: aload 14
    //   401: invokevirtual 86	com/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory:getErrorNo	()I
    //   404: aload 14
    //   406: invokevirtual 65	com/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory:getErrorDesc	()Ljava/lang/String;
    //   409: invokespecial 78	com/ximalaya/ting/android/opensdk/httputil/XimalayaException:<init>	(ILjava/lang/String;)V
    //   412: athrow
    //   413: new 73	com/ximalaya/ting/android/opensdk/httputil/XimalayaException
    //   416: dup
    //   417: sipush 604
    //   420: aload 4
    //   422: invokevirtual 81	java/io/IOException:getMessage	()Ljava/lang/String;
    //   425: invokespecial 78	com/ximalaya/ting/android/opensdk/httputil/XimalayaException:<init>	(ILjava/lang/String;)V
    //   428: athrow
    //   429: aconst_null
    //   430: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   0	37	76	java/io/IOException
    //   37	47	76	java/io/IOException
    //   52	63	76	java/io/IOException
    //   63	76	76	java/io/IOException
    //   102	109	76	java/io/IOException
    //   117	136	76	java/io/IOException
    //   136	164	76	java/io/IOException
    //   172	209	76	java/io/IOException
    //   209	223	76	java/io/IOException
    //   223	254	76	java/io/IOException
    //   256	269	76	java/io/IOException
    //   271	284	76	java/io/IOException
    //   286	299	76	java/io/IOException
    //   299	309	76	java/io/IOException
    //   314	325	76	java/io/IOException
    //   325	338	76	java/io/IOException
    //   338	356	76	java/io/IOException
    //   356	366	76	java/io/IOException
    //   371	382	76	java/io/IOException
    //   382	395	76	java/io/IOException
    //   395	413	76	java/io/IOException
    //   117	136	254	java/lang/Exception
    //   172	209	269	java/lang/Exception
    //   209	223	284	java/lang/Exception
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.datatrasfer.OtpBaseCall
 * JD-Core Version:    0.6.0
 */