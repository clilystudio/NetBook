package com.ximalaya.ting.android.opensdk.datatrasfer;

import com.ximalaya.ting.android.opensdk.httputil.IHttpCallBack;
import java.util.Map;

class OtpBaseCall$1
  implements IHttpCallBack
{
  public void onFailure(int paramInt, String paramString)
  {
    this.val$callback.onFailure(paramInt, paramString);
  }

  // ERROR //
  public void onResponse(com.squareup.okhttp.I paramI)
  {
    // Byte code:
    //   0: new 38	com/ximalaya/ting/android/opensdk/httputil/BaseResponse
    //   3: dup
    //   4: aload_1
    //   5: invokespecial 40	com/ximalaya/ting/android/opensdk/httputil/BaseResponse:<init>	(Lcom/squareup/okhttp/I;)V
    //   8: astore_2
    //   9: aload_2
    //   10: invokevirtual 44	com/ximalaya/ting/android/opensdk/httputil/BaseResponse:getStatusCode	()I
    //   13: sipush 200
    //   16: if_icmpne +14 -> 30
    //   19: aload_0
    //   20: getfield 17	com/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1:val$callback	Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;
    //   23: aload_1
    //   24: invokeinterface 46 2 0
    //   29: return
    //   30: invokestatic 52	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:getInstanse	()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;
    //   33: aload_2
    //   34: invokevirtual 56	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:parseResponseHandler	(Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;)Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;
    //   37: astore_3
    //   38: aload_3
    //   39: ifnull +13 -> 52
    //   42: aload_3
    //   43: invokevirtual 62	com/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory:getErrorDesc	()Ljava/lang/String;
    //   46: invokestatic 68	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   49: ifeq +18 -> 67
    //   52: aload_0
    //   53: getfield 17	com/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1:val$callback	Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;
    //   56: sipush 603
    //   59: ldc 70
    //   61: invokeinterface 30 3 0
    //   66: return
    //   67: aload_3
    //   68: invokevirtual 73	com/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory:getErrorNo	()I
    //   71: sipush 300
    //   74: if_icmpne +378 -> 452
    //   77: ldc 75
    //   79: invokestatic 52	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:getInstanse	()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;
    //   82: invokevirtual 79	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:assembleCommonParams	()Ljava/util/Map;
    //   85: invokestatic 52	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:getInstanse	()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;
    //   88: invokevirtual 82	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:getAppsecret	()Ljava/lang/String;
    //   91: invokestatic 88	com/ximalaya/ting/android/opensdk/httputil/BaseBuilder:urlPost	(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;
    //   94: astore 5
    //   96: aload 5
    //   98: invokevirtual 94	com/squareup/okhttp/D:a	()Lcom/squareup/okhttp/C;
    //   101: invokestatic 100	com/ximalaya/ting/android/opensdk/httputil/BaseCall:doSync	(Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/I;
    //   104: astore 7
    //   106: new 38	com/ximalaya/ting/android/opensdk/httputil/BaseResponse
    //   109: dup
    //   110: aload 7
    //   112: invokespecial 40	com/ximalaya/ting/android/opensdk/httputil/BaseResponse:<init>	(Lcom/squareup/okhttp/I;)V
    //   115: astore 8
    //   117: aload 8
    //   119: invokevirtual 44	com/ximalaya/ting/android/opensdk/httputil/BaseResponse:getStatusCode	()I
    //   122: istore 9
    //   124: iload 9
    //   126: sipush 200
    //   129: if_icmpne +244 -> 373
    //   132: new 102	org/json/JSONObject
    //   135: dup
    //   136: aload 7
    //   138: invokevirtual 108	com/squareup/okhttp/I:g	()Lcom/squareup/okhttp/K;
    //   141: invokevirtual 113	com/squareup/okhttp/K:f	()Ljava/lang/String;
    //   144: invokespecial 116	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   147: astore 11
    //   149: invokestatic 121	com/ximalaya/ting/android/opensdk/datatrasfer/OtpManager:getInstanse	()Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;
    //   152: aload 11
    //   154: ldc 123
    //   156: invokevirtual 127	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   159: aload 11
    //   161: ldc 129
    //   163: invokevirtual 133	org/json/JSONObject:optLong	(Ljava/lang/String;)J
    //   166: invokevirtual 137	com/ximalaya/ting/android/opensdk/datatrasfer/OtpManager:setOtp	(Ljava/lang/String;J)V
    //   169: aload_0
    //   170: getfield 19	com/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1:val$url	Ljava/lang/String;
    //   173: aload_0
    //   174: getfield 21	com/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1:val$specificParams	Ljava/util/Map;
    //   177: invokestatic 141	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:CommonParams	(Ljava/util/Map;)Ljava/util/Map;
    //   180: aload_0
    //   181: getfield 23	com/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1:val$appsecret	Ljava/lang/String;
    //   184: invokestatic 144	com/ximalaya/ting/android/opensdk/httputil/BaseBuilder:urlGet	(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;
    //   187: invokevirtual 94	com/squareup/okhttp/D:a	()Lcom/squareup/okhttp/C;
    //   190: astore 14
    //   192: aload 14
    //   194: invokestatic 100	com/ximalaya/ting/android/opensdk/httputil/BaseCall:doSync	(Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/I;
    //   197: astore 15
    //   199: new 38	com/ximalaya/ting/android/opensdk/httputil/BaseResponse
    //   202: dup
    //   203: aload 15
    //   205: invokespecial 40	com/ximalaya/ting/android/opensdk/httputil/BaseResponse:<init>	(Lcom/squareup/okhttp/I;)V
    //   208: astore 16
    //   210: aload 16
    //   212: invokevirtual 44	com/ximalaya/ting/android/opensdk/httputil/BaseResponse:getStatusCode	()I
    //   215: sipush 200
    //   218: if_icmpne +94 -> 312
    //   221: aload_0
    //   222: getfield 17	com/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1:val$callback	Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;
    //   225: aload 15
    //   227: invokeinterface 46 2 0
    //   232: return
    //   233: astore 6
    //   235: aload 6
    //   237: invokevirtual 147	java/io/IOException:getMessage	()Ljava/lang/String;
    //   240: invokestatic 68	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   243: ifeq +191 -> 434
    //   246: aload_0
    //   247: getfield 17	com/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1:val$callback	Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;
    //   250: sipush 604
    //   253: ldc 149
    //   255: invokeinterface 30 3 0
    //   260: return
    //   261: astore 4
    //   263: aload_0
    //   264: getfield 17	com/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1:val$callback	Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;
    //   267: sipush 601
    //   270: ldc 151
    //   272: invokeinterface 30 3 0
    //   277: return
    //   278: astore 12
    //   280: aload_0
    //   281: getfield 17	com/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1:val$callback	Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;
    //   284: sipush 603
    //   287: ldc 70
    //   289: invokeinterface 30 3 0
    //   294: return
    //   295: astore 13
    //   297: aload_0
    //   298: getfield 17	com/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1:val$callback	Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;
    //   301: sipush 601
    //   304: ldc 151
    //   306: invokeinterface 30 3 0
    //   311: return
    //   312: invokestatic 52	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:getInstanse	()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;
    //   315: aload 16
    //   317: invokevirtual 56	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:parseResponseHandler	(Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;)Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;
    //   320: astore 17
    //   322: aload 17
    //   324: ifnull +14 -> 338
    //   327: aload 17
    //   329: invokevirtual 62	com/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory:getErrorDesc	()Ljava/lang/String;
    //   332: invokestatic 68	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   335: ifeq +18 -> 353
    //   338: aload_0
    //   339: getfield 17	com/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1:val$callback	Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;
    //   342: sipush 603
    //   345: ldc 70
    //   347: invokeinterface 30 3 0
    //   352: return
    //   353: aload_0
    //   354: getfield 17	com/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1:val$callback	Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;
    //   357: aload 17
    //   359: invokevirtual 73	com/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory:getErrorNo	()I
    //   362: aload 17
    //   364: invokevirtual 62	com/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory:getErrorDesc	()Ljava/lang/String;
    //   367: invokeinterface 30 3 0
    //   372: return
    //   373: invokestatic 52	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:getInstanse	()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;
    //   376: aload 8
    //   378: invokevirtual 56	com/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest:parseResponseHandler	(Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;)Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;
    //   381: astore 10
    //   383: aload 10
    //   385: ifnull +14 -> 399
    //   388: aload 10
    //   390: invokevirtual 62	com/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory:getErrorDesc	()Ljava/lang/String;
    //   393: invokestatic 68	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   396: ifeq +18 -> 414
    //   399: aload_0
    //   400: getfield 17	com/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1:val$callback	Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;
    //   403: sipush 603
    //   406: ldc 70
    //   408: invokeinterface 30 3 0
    //   413: return
    //   414: aload_0
    //   415: getfield 17	com/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1:val$callback	Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;
    //   418: aload 10
    //   420: invokevirtual 73	com/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory:getErrorNo	()I
    //   423: aload 10
    //   425: invokevirtual 62	com/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory:getErrorDesc	()Ljava/lang/String;
    //   428: invokeinterface 30 3 0
    //   433: return
    //   434: aload_0
    //   435: getfield 17	com/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1:val$callback	Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;
    //   438: sipush 604
    //   441: aload 6
    //   443: invokevirtual 147	java/io/IOException:getMessage	()Ljava/lang/String;
    //   446: invokeinterface 30 3 0
    //   451: return
    //   452: aload_0
    //   453: getfield 17	com/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall$1:val$callback	Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;
    //   456: aload_3
    //   457: invokevirtual 73	com/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory:getErrorNo	()I
    //   460: aload_3
    //   461: invokevirtual 62	com/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory:getErrorDesc	()Ljava/lang/String;
    //   464: invokeinterface 30 3 0
    //   469: return
    //
    // Exception table:
    //   from	to	target	type
    //   96	124	233	java/io/IOException
    //   132	169	233	java/io/IOException
    //   169	192	233	java/io/IOException
    //   192	232	233	java/io/IOException
    //   280	294	233	java/io/IOException
    //   297	311	233	java/io/IOException
    //   312	322	233	java/io/IOException
    //   327	338	233	java/io/IOException
    //   338	352	233	java/io/IOException
    //   353	372	233	java/io/IOException
    //   373	383	233	java/io/IOException
    //   388	399	233	java/io/IOException
    //   399	413	233	java/io/IOException
    //   414	433	233	java/io/IOException
    //   77	96	261	java/lang/Exception
    //   132	169	278	java/lang/Exception
    //   169	192	295	java/lang/Exception
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.datatrasfer.OtpBaseCall.1
 * JD-Core Version:    0.6.0
 */