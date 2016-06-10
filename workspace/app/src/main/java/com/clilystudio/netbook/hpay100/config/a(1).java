package com.clilystudio.netbook.hpay100.config;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.clilystudio.netbook.hpay100.c.b;
import com.clilystudio.netbook.hpay100.c.d;
import com.clilystudio.netbook.hpay100.c.j;
import com.clilystudio.netbook.hpay100.z;
import java.util.HashMap;
import java.util.Random;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class a
{
  public static SharedPreferences b;
  public int a;

  // ERROR //
  public static HPaySMS a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 23	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   4: ifeq +5 -> 9
    //   7: aconst_null
    //   8: areturn
    //   9: new 25	com/arcsoft/hpay100/config/HPaySMS
    //   12: dup
    //   13: invokespecial 26	com/arcsoft/hpay100/config/HPaySMS:<init>	()V
    //   16: astore_1
    //   17: new 28	org/json/JSONObject
    //   20: dup
    //   21: aload_0
    //   22: invokespecial 31	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   25: astore_2
    //   26: aload_2
    //   27: ldc 33
    //   29: ldc 35
    //   31: invokevirtual 39	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   34: astore 5
    //   36: aload_2
    //   37: ldc 41
    //   39: ldc 35
    //   41: invokevirtual 39	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   44: astore 6
    //   46: aload 5
    //   48: invokestatic 23	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   51: ifne +52 -> 103
    //   54: aload 6
    //   56: invokestatic 23	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   59: ifne +44 -> 103
    //   62: new 43	java/lang/String
    //   65: dup
    //   66: aload 6
    //   68: invokestatic 48	com/arcsoft/hpay100/c/d:a	(Ljava/lang/String;)[B
    //   71: ldc 50
    //   73: invokespecial 53	java/lang/String:<init>	([BLjava/lang/String;)V
    //   76: invokevirtual 57	java/lang/String:toString	()Ljava/lang/String;
    //   79: astore 19
    //   81: aload_1
    //   82: aload 5
    //   84: ldc 59
    //   86: invokevirtual 63	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   89: putfield 67	com/arcsoft/hpay100/config/HPaySMS:mSMSAddress	[Ljava/lang/String;
    //   92: aload_1
    //   93: aload 19
    //   95: ldc 59
    //   97: invokevirtual 63	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   100: putfield 70	com/arcsoft/hpay100/config/HPaySMS:mSMSContent	[Ljava/lang/String;
    //   103: aload_1
    //   104: aload_2
    //   105: ldc 72
    //   107: iconst_0
    //   108: invokevirtual 76	org/json/JSONObject:optInt	(Ljava/lang/String;I)I
    //   111: putfield 79	com/arcsoft/hpay100/config/HPaySMS:mCodeType	I
    //   114: aload_1
    //   115: aload_2
    //   116: ldc 81
    //   118: ldc 35
    //   120: invokevirtual 39	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   123: putfield 85	com/arcsoft/hpay100/config/HPaySMS:mChID	Ljava/lang/String;
    //   126: aload_1
    //   127: aload_2
    //   128: ldc 87
    //   130: ldc 35
    //   132: invokevirtual 39	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   135: putfield 90	com/arcsoft/hpay100/config/HPaySMS:mChType	Ljava/lang/String;
    //   138: aload_1
    //   139: aload_2
    //   140: ldc 92
    //   142: iconst_0
    //   143: invokevirtual 76	org/json/JSONObject:optInt	(Ljava/lang/String;I)I
    //   146: putfield 95	com/arcsoft/hpay100/config/HPaySMS:mAmount	I
    //   149: aload_1
    //   150: aload_2
    //   151: ldc 97
    //   153: iconst_0
    //   154: invokevirtual 76	org/json/JSONObject:optInt	(Ljava/lang/String;I)I
    //   157: putfield 100	com/arcsoft/hpay100/config/HPaySMS:mRealAmount	I
    //   160: aload_1
    //   161: aload_2
    //   162: ldc 102
    //   164: iconst_3
    //   165: invokevirtual 76	org/json/JSONObject:optInt	(Ljava/lang/String;I)I
    //   168: putfield 105	com/arcsoft/hpay100/config/HPaySMS:mScheme	I
    //   171: aload_1
    //   172: aload_2
    //   173: ldc 107
    //   175: ldc 35
    //   177: invokevirtual 39	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   180: putfield 110	com/arcsoft/hpay100/config/HPaySMS:mOrderidHR	Ljava/lang/String;
    //   183: aload_1
    //   184: aload_2
    //   185: ldc 112
    //   187: ldc 35
    //   189: invokevirtual 39	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   192: putfield 115	com/arcsoft/hpay100/config/HPaySMS:mReplyAdderss	Ljava/lang/String;
    //   195: aload_1
    //   196: aload_2
    //   197: ldc 117
    //   199: ldc 35
    //   201: invokevirtual 39	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   204: putfield 120	com/arcsoft/hpay100/config/HPaySMS:mReplyContent	Ljava/lang/String;
    //   207: aload_1
    //   208: aload_2
    //   209: ldc 122
    //   211: ldc 35
    //   213: invokevirtual 39	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   216: putfield 125	com/arcsoft/hpay100/config/HPaySMS:mDetail	Ljava/lang/String;
    //   219: aload_1
    //   220: aload_2
    //   221: ldc 127
    //   223: iconst_3
    //   224: invokevirtual 76	org/json/JSONObject:optInt	(Ljava/lang/String;I)I
    //   227: putfield 130	com/arcsoft/hpay100/config/HPaySMS:mIntervalTimes	I
    //   230: ldc 132
    //   232: new 134	java/lang/StringBuilder
    //   235: dup
    //   236: ldc 136
    //   238: invokespecial 137	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   241: aload_1
    //   242: getfield 130	com/arcsoft/hpay100/config/HPaySMS:mIntervalTimes	I
    //   245: invokevirtual 141	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   248: invokevirtual 142	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   251: invokestatic 147	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   254: aload_1
    //   255: getfield 130	com/arcsoft/hpay100/config/HPaySMS:mIntervalTimes	I
    //   258: bipush 30
    //   260: if_icmple +8 -> 268
    //   263: aload_1
    //   264: iconst_3
    //   265: putfield 130	com/arcsoft/hpay100/config/HPaySMS:mIntervalTimes	I
    //   268: aload_2
    //   269: ldc 149
    //   271: ldc 35
    //   273: invokevirtual 39	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   276: astore 8
    //   278: aload 8
    //   280: invokestatic 23	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   283: ifne +14 -> 297
    //   286: aload_1
    //   287: aload 8
    //   289: ldc 151
    //   291: invokevirtual 63	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   294: putfield 154	com/arcsoft/hpay100/config/HPaySMS:mReplyKeyword	[Ljava/lang/String;
    //   297: aload_1
    //   298: aload_2
    //   299: ldc 156
    //   301: iconst_0
    //   302: invokevirtual 76	org/json/JSONObject:optInt	(Ljava/lang/String;I)I
    //   305: putfield 159	com/arcsoft/hpay100/config/HPaySMS:mSdkFeeType	I
    //   308: aload_1
    //   309: aload_2
    //   310: ldc 161
    //   312: ldc 35
    //   314: invokevirtual 39	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   317: putfield 164	com/arcsoft/hpay100/config/HPaySMS:mPhone	Ljava/lang/String;
    //   320: aload_1
    //   321: aload_2
    //   322: ldc 166
    //   324: ldc 35
    //   326: invokevirtual 39	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   329: putfield 169	com/arcsoft/hpay100/config/HPaySMS:mCorpFeeCode	Ljava/lang/String;
    //   332: aload_1
    //   333: aload_2
    //   334: ldc 171
    //   336: ldc 35
    //   338: invokevirtual 39	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   341: putfield 174	com/arcsoft/hpay100/config/HPaySMS:mFeeUrl	Ljava/lang/String;
    //   344: aload_1
    //   345: aload_2
    //   346: ldc 176
    //   348: ldc 35
    //   350: invokevirtual 39	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   353: putfield 179	com/arcsoft/hpay100/config/HPaySMS:mOpenUrl	Ljava/lang/String;
    //   356: aload_1
    //   357: aload_2
    //   358: ldc 181
    //   360: iconst_0
    //   361: invokevirtual 76	org/json/JSONObject:optInt	(Ljava/lang/String;I)I
    //   364: putfield 184	com/arcsoft/hpay100/config/HPaySMS:mIsFullScreen	I
    //   367: aload_2
    //   368: ldc 186
    //   370: ldc 35
    //   372: invokevirtual 39	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   375: astore 9
    //   377: aload 9
    //   379: invokestatic 23	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   382: istore 10
    //   384: iload 10
    //   386: ifne +24 -> 410
    //   389: aload_1
    //   390: new 43	java/lang/String
    //   393: dup
    //   394: aload 9
    //   396: invokestatic 48	com/arcsoft/hpay100/c/d:a	(Ljava/lang/String;)[B
    //   399: ldc 50
    //   401: invokespecial 53	java/lang/String:<init>	([BLjava/lang/String;)V
    //   404: invokevirtual 57	java/lang/String:toString	()Ljava/lang/String;
    //   407: putfield 189	com/arcsoft/hpay100/config/HPaySMS:mYzmRegx	Ljava/lang/String;
    //   410: aload_2
    //   411: ldc 191
    //   413: invokevirtual 195	org/json/JSONObject:optJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   416: astore 12
    //   418: aload 12
    //   420: ifnull +40 -> 460
    //   423: aload_1
    //   424: new 197	java/util/HashMap
    //   427: dup
    //   428: invokespecial 198	java/util/HashMap:<init>	()V
    //   431: putfield 202	com/arcsoft/hpay100/config/HPaySMS:mJsUrlHashMap	Ljava/util/HashMap;
    //   434: aload 12
    //   436: invokevirtual 206	org/json/JSONObject:keys	()Ljava/util/Iterator;
    //   439: astore 13
    //   441: aload 13
    //   443: ifnull +17 -> 460
    //   446: aload 13
    //   448: invokeinterface 212 1 0
    //   453: istore 14
    //   455: iload 14
    //   457: ifne +42 -> 499
    //   460: aload_1
    //   461: areturn
    //   462: astore 7
    //   464: aload 7
    //   466: invokevirtual 215	java/lang/Exception:printStackTrace	()V
    //   469: goto -355 -> 114
    //   472: astore 4
    //   474: aload 4
    //   476: invokevirtual 216	org/json/JSONException:printStackTrace	()V
    //   479: aconst_null
    //   480: areturn
    //   481: astore 18
    //   483: aload 18
    //   485: invokevirtual 215	java/lang/Exception:printStackTrace	()V
    //   488: goto -78 -> 410
    //   491: astore_3
    //   492: aload_3
    //   493: invokevirtual 215	java/lang/Exception:printStackTrace	()V
    //   496: goto -17 -> 479
    //   499: aload 13
    //   501: invokeinterface 220 1 0
    //   506: invokestatic 224	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   509: astore 15
    //   511: ldc 132
    //   513: new 134	java/lang/StringBuilder
    //   516: dup
    //   517: ldc 226
    //   519: invokespecial 137	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   522: aload 15
    //   524: invokevirtual 229	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   527: invokevirtual 142	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   530: invokestatic 147	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   533: aload 12
    //   535: aload 15
    //   537: invokevirtual 233	org/json/JSONObject:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   540: checkcast 43	java/lang/String
    //   543: astore 16
    //   545: ldc 132
    //   547: new 134	java/lang/StringBuilder
    //   550: dup
    //   551: ldc 235
    //   553: invokespecial 137	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   556: aload 16
    //   558: invokevirtual 229	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   561: invokevirtual 142	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   564: invokestatic 147	com/arcsoft/hpay100/a/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   567: aload_1
    //   568: getfield 202	com/arcsoft/hpay100/config/HPaySMS:mJsUrlHashMap	Ljava/util/HashMap;
    //   571: aload 15
    //   573: aload 16
    //   575: invokevirtual 239	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   578: pop
    //   579: goto -138 -> 441
    //   582: astore 11
    //   584: aload 11
    //   586: invokevirtual 215	java/lang/Exception:printStackTrace	()V
    //   589: goto -129 -> 460
    //
    // Exception table:
    //   from	to	target	type
    //   103	114	462	java/lang/Exception
    //   9	103	472	org/json/JSONException
    //   103	114	472	org/json/JSONException
    //   114	268	472	org/json/JSONException
    //   268	297	472	org/json/JSONException
    //   297	384	472	org/json/JSONException
    //   389	410	472	org/json/JSONException
    //   410	418	472	org/json/JSONException
    //   423	441	472	org/json/JSONException
    //   446	455	472	org/json/JSONException
    //   464	469	472	org/json/JSONException
    //   483	488	472	org/json/JSONException
    //   499	579	472	org/json/JSONException
    //   584	589	472	org/json/JSONException
    //   389	410	481	java/lang/Exception
    //   9	103	491	java/lang/Exception
    //   114	268	491	java/lang/Exception
    //   268	297	491	java/lang/Exception
    //   297	384	491	java/lang/Exception
    //   464	469	491	java/lang/Exception
    //   483	488	491	java/lang/Exception
    //   584	589	491	java/lang/Exception
    //   410	418	582	java/lang/Exception
    //   423	441	582	java/lang/Exception
    //   446	455	582	java/lang/Exception
    //   499	579	582	java/lang/Exception
  }

  public static z a(int paramInt1, String paramString1, int paramInt2, String paramString2, String paramString3, int paramInt3, String paramString4)
  {
    z localz = new z();
    localz.d(paramInt1);
    localz.e(paramInt1);
    localz.c(paramString1);
    localz.e = paramInt2;
    localz.c = paramString2;
    localz.d = paramString3;
    localz.a(2);
    localz.b(paramInt3);
    localz.a(paramString4);
    return localz;
  }

  public static z a(HPaySMS paramHPaySMS)
  {
    z localz = new z();
    localz.a(1);
    localz.a = paramHPaySMS.mChID;
    localz.b = paramHPaySMS.mChType;
    localz.b(paramHPaySMS.mOrderidHR);
    localz.c(paramHPaySMS.mOrderidAPP);
    localz.c(paramHPaySMS.mScheme);
    localz.c = paramHPaySMS.mPayName;
    localz.d(paramHPaySMS.mAmount);
    localz.e(paramHPaySMS.mRealAmount);
    localz.d = paramHPaySMS.mPayId;
    localz.e = paramHPaySMS.mCodeType;
    localz.a(true);
    return localz;
  }

  public static z a(HPaySMS paramHPaySMS, int paramInt, String paramString)
  {
    z localz = new z();
    localz.a(2);
    localz.a = paramHPaySMS.mChID;
    localz.b = paramHPaySMS.mChType;
    localz.b(paramHPaySMS.mOrderidHR);
    localz.c(paramHPaySMS.mOrderidAPP);
    localz.c(paramHPaySMS.mScheme);
    localz.d = paramHPaySMS.mPayId;
    localz.c = paramHPaySMS.mPayName;
    localz.d(paramHPaySMS.mAmount);
    localz.e(paramHPaySMS.mRealAmount);
    localz.e = paramHPaySMS.mCodeType;
    if ((paramInt == 6104) || (paramInt == 104) || (paramInt == 129))
      localz.a(true);
    while (true)
    {
      localz.b(paramInt);
      localz.a(paramString);
      return localz;
      localz.a(false);
    }
  }

  public static String a(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return paramInt / 100 + "元";
    case 10:
      return "0.1元";
    case 20:
      return "0.2元";
    case 50:
    }
    return "0.5元";
  }

  // ERROR //
  public static java.util.ArrayList a()
  {
    // Byte code:
    //   0: getstatic 353	com/arcsoft/hpay100/config/l:f	Ljava/lang/String;
    //   3: invokestatic 23	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   6: ifeq +5 -> 11
    //   9: aconst_null
    //   10: areturn
    //   11: new 355	org/json/JSONArray
    //   14: dup
    //   15: getstatic 353	com/arcsoft/hpay100/config/l:f	Ljava/lang/String;
    //   18: invokespecial 356	org/json/JSONArray:<init>	(Ljava/lang/String;)V
    //   21: astore_0
    //   22: aload_0
    //   23: invokevirtual 360	org/json/JSONArray:length	()I
    //   26: ifle +226 -> 252
    //   29: new 362	java/util/ArrayList
    //   32: dup
    //   33: invokespecial 363	java/util/ArrayList:<init>	()V
    //   36: astore_2
    //   37: iconst_0
    //   38: istore 6
    //   40: iload 6
    //   42: aload_0
    //   43: invokevirtual 360	org/json/JSONArray:length	()I
    //   46: if_icmplt +6 -> 52
    //   49: goto +205 -> 254
    //   52: aload_0
    //   53: iload 6
    //   55: invokevirtual 366	org/json/JSONArray:optJSONObject	(I)Lorg/json/JSONObject;
    //   58: astore 7
    //   60: aload 7
    //   62: ldc_w 368
    //   65: ldc 35
    //   67: invokevirtual 39	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   70: astore 8
    //   72: aload 7
    //   74: ldc_w 370
    //   77: ldc 35
    //   79: invokevirtual 39	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   82: astore 9
    //   84: aload 8
    //   86: invokestatic 23	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   89: ifne +174 -> 263
    //   92: aload 9
    //   94: invokestatic 23	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   97: ifne +166 -> 263
    //   100: aload 8
    //   102: ldc 59
    //   104: invokevirtual 63	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   107: astore 10
    //   109: aload 9
    //   111: ldc 59
    //   113: invokevirtual 63	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   116: astore 11
    //   118: aload 10
    //   120: arraylength
    //   121: istore 12
    //   123: aload 11
    //   125: arraylength
    //   126: istore 13
    //   128: iload 12
    //   130: ifle +133 -> 263
    //   133: iload 13
    //   135: ifle +128 -> 263
    //   138: iload 12
    //   140: iload 13
    //   142: if_icmpne +121 -> 263
    //   145: iconst_0
    //   146: istore 14
    //   148: goto +108 -> 256
    //   151: new 372	com/arcsoft/hpay100/config/x
    //   154: dup
    //   155: invokespecial 373	com/arcsoft/hpay100/config/x:<init>	()V
    //   158: astore 15
    //   160: aload 15
    //   162: aload 10
    //   164: iload 14
    //   166: aaload
    //   167: putfield 374	com/arcsoft/hpay100/config/x:a	Ljava/lang/String;
    //   170: aload 15
    //   172: aload 11
    //   174: iload 14
    //   176: aaload
    //   177: putfield 375	com/arcsoft/hpay100/config/x:b	Ljava/lang/String;
    //   180: aload 15
    //   182: getfield 374	com/arcsoft/hpay100/config/x:a	Ljava/lang/String;
    //   185: invokestatic 23	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   188: ifne +21 -> 209
    //   191: aload 15
    //   193: getfield 375	com/arcsoft/hpay100/config/x:b	Ljava/lang/String;
    //   196: invokestatic 23	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   199: ifne +10 -> 209
    //   202: aload_2
    //   203: aload 15
    //   205: invokevirtual 379	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   208: pop
    //   209: iinc 14 1
    //   212: goto +44 -> 256
    //   215: astore 4
    //   217: aconst_null
    //   218: astore_2
    //   219: aload 4
    //   221: astore 5
    //   223: aload 5
    //   225: invokevirtual 216	org/json/JSONException:printStackTrace	()V
    //   228: goto +26 -> 254
    //   231: astore_1
    //   232: aconst_null
    //   233: astore_2
    //   234: aload_1
    //   235: astore_3
    //   236: aload_3
    //   237: invokevirtual 215	java/lang/Exception:printStackTrace	()V
    //   240: goto +14 -> 254
    //   243: astore_3
    //   244: goto -8 -> 236
    //   247: astore 5
    //   249: goto -26 -> 223
    //   252: aconst_null
    //   253: astore_2
    //   254: aload_2
    //   255: areturn
    //   256: iload 14
    //   258: iload 12
    //   260: if_icmplt -109 -> 151
    //   263: iinc 6 1
    //   266: goto -226 -> 40
    //
    // Exception table:
    //   from	to	target	type
    //   11	37	215	org/json/JSONException
    //   11	37	231	java/lang/Exception
    //   40	49	243	java/lang/Exception
    //   52	128	243	java/lang/Exception
    //   151	209	243	java/lang/Exception
    //   40	49	247	org/json/JSONException
    //   52	128	247	org/json/JSONException
    //   151	209	247	org/json/JSONException
  }

  public static void a(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return;
    while (true)
    {
      int i1;
      int i2;
      int m;
      int n;
      try
      {
        if (b != null)
          continue;
        b = paramContext.getSharedPreferences("hpay_game_config", 0);
        JSONObject localJSONObject = new JSONObject(paramString);
        l.g = localJSONObject.optInt("is_filter", 0);
        l.h = localJSONObject.optInt("is_confirm", 0);
        String str1 = localJSONObject.optString("white", "");
        String str2 = localJSONObject.optString("msisdn", "");
        l.i = localJSONObject.optLong("next_interval_sec", 86400L);
        String str3 = b.b(str2);
        if (!b.a(str3))
          continue;
        l.j = str3;
        String str9 = l.f(paramContext.getApplicationContext());
        b.edit().putString(str9, l.j).commit();
        l.a(paramContext, new y(paramContext));
        if (TextUtils.isEmpty(str1))
          continue;
        arrayOfString4 = str1.split("@@@");
        if (arrayOfString4 == null)
          continue;
        i1 = arrayOfString4.length;
        i2 = 0;
        break label711;
        l.f = "";
        JSONArray localJSONArray1 = localJSONObject.optJSONArray("filters");
        if ((localJSONArray1 == null) || (localJSONArray1.length() <= 0))
          continue;
        l.f = localJSONArray1.toString();
        JSONArray localJSONArray2 = localJSONObject.optJSONArray("fee_code_scheme");
        if ((localJSONArray2 == null) || (localJSONArray2.length() <= 0) || (TextUtils.isEmpty(localJSONArray2.toString())))
          continue;
        l.p = localJSONArray2.toString();
        String str5 = localJSONObject.optString("reserveurl", "");
        if (TextUtils.isEmpty(str5))
          continue;
        arrayOfString3 = str5.split("@@@");
        if (arrayOfString3 == null)
          continue;
        m = arrayOfString3.length;
        n = 0;
        break label721;
        b.edit().putInt("hpay_game_filter", l.g).commit();
        b.edit().putInt("hpay_game_confirm", l.h).commit();
        b.edit().putString("hpay_game_filter_content", l.f).commit();
        if (TextUtils.isEmpty(l.p))
          continue;
        b.edit().putString("hpay_game_scheme_content", l.p).commit();
        com.clilystudio.netbook.hpay100.a_Pack.a.b("dalongTest", "HPAY_NEXT_INITTIME 2:" + l.i);
        b.edit().putLong("hpay_game_next_inittime", l.i).commit();
        str6 = localJSONObject.optString("init_spnumber", "");
        str7 = localJSONObject.optString("init_msg", "");
        if (TextUtils.isEmpty(str6))
          break;
        boolean bool = TextUtils.isEmpty(str7);
        if (bool)
          break;
      }
      catch (JSONException localJSONException)
      {
        try
        {
          String[] arrayOfString4;
          String[] arrayOfString3;
          String str6;
          String str7;
          String str8 = new String(d.a(str7), "utf-8").toString();
          String[] arrayOfString1 = str6.split("@@@");
          String[] arrayOfString2 = str8.split("@@@");
          if ((arrayOfString1 == null) || (arrayOfString2 == null) || (arrayOfString1.length <= 0) || (arrayOfString2.length <= 0))
            break;
          int i = arrayOfString1.length;
          int j = arrayOfString2.length;
          int k = 0;
          if (i != j)
            break;
          if (k >= arrayOfString1.length)
            break;
          b.a(arrayOfString1[k], arrayOfString2[k]);
          k++;
          continue;
          String str4 = l.f(paramContext.getApplicationContext());
          b.edit().putString(str4, "").commit();
          continue;
          localJSONException = localJSONException;
          localJSONException.printStackTrace();
          return;
          l.b(paramContext, arrayOfString4[i2]);
          i2++;
          break label711;
          l.a(paramContext, arrayOfString3[n]);
          n++;
        }
        catch (Exception localException2)
        {
          localException2.printStackTrace();
          return;
        }
      }
      catch (Exception localException1)
      {
        localException1.printStackTrace();
        return;
      }
      label711: if (i2 < i1)
        continue;
      continue;
      label721: if (n < m)
        continue;
    }
  }

  public static void a(Context paramContext, String paramString1, int paramInt1, String paramString2, int paramInt2, String paramString3, String paramString4, int paramInt3)
  {
    try
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("action", "3");
      localHashMap.put("sid", l.l);
      localHashMap.put("aoid", paramString1);
      localHashMap.put("orderid", "");
      localHashMap.put("pid", paramString2);
      localHashMap.put("scheme", paramInt1);
      localHashMap.put("amount", paramInt2);
      localHashMap.put("chtype", "");
      localHashMap.put("chid", "");
      localHashMap.put("status", paramString3);
      localHashMap.put("errorcode", paramString4);
      localHashMap.put("page", paramInt3);
      com.clilystudio.netbook.hpay100.a_Pack.a.b("dalongTest", "statc3 data:" + localHashMap.toString());
      a(paramContext, localHashMap);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public static void a(Context paramContext, String paramString1, String paramString2, int paramInt)
  {
    try
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("action", "1");
      localHashMap.put("sid", l.l);
      localHashMap.put("aoid", "");
      localHashMap.put("orderid", "");
      localHashMap.put("pid", "");
      localHashMap.put("scheme", "");
      localHashMap.put("amount", "");
      localHashMap.put("chtype", "");
      localHashMap.put("chid", "");
      localHashMap.put("status", paramString1);
      localHashMap.put("errorcode", paramString2);
      localHashMap.put("page", "0");
      com.clilystudio.netbook.hpay100.a_Pack.a.b("dalongTest", "statc1 data:" + localHashMap.toString());
      int i = j.a();
      int j = l.d(paramContext);
      com.clilystudio.netbook.hpay100.a_Pack.a.b("dalongTest", "currentDay:" + i);
      com.clilystudio.netbook.hpay100.a_Pack.a.b("dalongTest", "initSdkDay:" + j);
      if (i != j)
      {
        com.clilystudio.netbook.hpay100.a_Pack.a.b("dalongTest", "statc1 upload");
        a(paramContext, localHashMap);
        l.b(paramContext, i);
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public static void a(Context paramContext, String paramString1, String paramString2, int paramInt1, int paramInt2, String paramString3, String paramString4, int paramInt3)
  {
    try
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("action", "2");
      localHashMap.put("sid", l.l);
      localHashMap.put("aoid", paramString1);
      localHashMap.put("orderid", "");
      localHashMap.put("pid", paramString2);
      localHashMap.put("scheme", paramInt2);
      localHashMap.put("amount", paramInt1);
      localHashMap.put("chtype", "");
      localHashMap.put("chid", "");
      localHashMap.put("status", paramString3);
      localHashMap.put("errorcode", paramString4);
      localHashMap.put("page", "0");
      com.clilystudio.netbook.hpay100.a_Pack.a.b("dalongTest", "statc2 data:" + localHashMap.toString());
      a(paramContext, localHashMap);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public static void a(Context paramContext, String paramString1, String paramString2, int paramInt1, String paramString3, String paramString4, String paramString5, int paramInt2, String paramString6, String paramString7, int paramInt3)
  {
    try
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("action", "4");
      localHashMap.put("sid", l.l);
      localHashMap.put("aoid", paramString1);
      localHashMap.put("orderid", paramString2);
      localHashMap.put("pid", paramString3);
      localHashMap.put("scheme", paramInt1);
      localHashMap.put("amount", paramInt2);
      localHashMap.put("chtype", paramString4);
      localHashMap.put("chid", paramString5);
      localHashMap.put("status", paramString6);
      localHashMap.put("errorcode", paramString7);
      localHashMap.put("page", paramInt3);
      com.clilystudio.netbook.hpay100.a_Pack.a.b("dalongTest", "statc4 data:" + localHashMap.toString());
      a(paramContext, localHashMap);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt1, String paramString5, int paramInt2, String paramString6, String paramString7, int paramInt3)
  {
    try
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("action", "7");
      localHashMap.put("sid", l.l);
      localHashMap.put("orderid", paramString2);
      localHashMap.put("aoid", paramString1);
      localHashMap.put("pid", paramString5);
      localHashMap.put("scheme", paramInt1);
      localHashMap.put("amount", paramInt2);
      localHashMap.put("chtype", paramString3);
      localHashMap.put("chid", paramString4);
      localHashMap.put("status", paramString6);
      localHashMap.put("errorcode", paramString7);
      localHashMap.put("page", paramInt3);
      com.clilystudio.netbook.hpay100.a_Pack.a.b("dalongTest", "statc7 data:" + localHashMap.toString());
      a(paramContext, localHashMap);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  private static void a(Context paramContext, HashMap paramHashMap)
  {
    if (!com.clilystudio.netbook.hpay100.a_Pack.a.j(paramContext.getApplicationContext()))
      return;
    Thread localThread = new Thread(new h(paramContext, paramHashMap));
    localThread.setName("thread_sms_dot");
    localThread.start();
  }

  public static g b(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return null;
    g localg;
    while (true)
    {
      int n;
      int i1;
      try
      {
        localg = new g();
        JSONObject localJSONObject = new JSONObject(paramString);
        localJSONObject.optString("payid", "");
        l.h = localJSONObject.optInt("is_confirm", 0);
        if (b != null)
          continue;
        b = paramContext.getSharedPreferences("hpay_game_config", 0);
        b.edit().putInt("hpay_game_confirm", l.h).commit();
        String str1 = localJSONObject.optString("reserveurl", "");
        if (TextUtils.isEmpty(str1))
          continue;
        String[] arrayOfString3 = str1.split("@@@");
        if (arrayOfString3 == null)
          continue;
        n = arrayOfString3.length;
        i1 = 0;
        break label368;
        String str2 = localJSONObject.optString("sms_number", "");
        String str3 = localJSONObject.optString("sms_content", "");
        if (TextUtils.isEmpty(str2))
          continue;
        boolean bool = TextUtils.isEmpty(str3);
        if (bool)
          continue;
        try
        {
          String str5 = new String(d.a(str3), "utf-8").toString();
          String[] arrayOfString1 = str2.split("@@@");
          String[] arrayOfString2 = str5.split("@@@");
          if ((arrayOfString1 == null) || (arrayOfString2 == null) || (arrayOfString1.length <= 0) || (arrayOfString2.length <= 0))
            continue;
          int i = arrayOfString1.length;
          int j = arrayOfString2.length;
          int k = 0;
          if (i != j)
            continue;
          int m = arrayOfString1.length;
          if (k < m)
            continue;
          localg.a = localJSONObject.optInt("scheme", 3);
          String str4 = b.b(localJSONObject.optString("phone", ""));
          if (!b.a(str4))
            break;
          l.j = str4;
          break;
          l.a(paramContext, arrayOfString3[i1]);
          i1++;
          break label368;
          b.a(arrayOfString1[k], arrayOfString2[k]);
          k++;
          continue;
        }
        catch (Exception localException2)
        {
          localException2.printStackTrace();
          continue;
        }
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        return null;
      }
      catch (Exception localException1)
      {
        localException1.printStackTrace();
        return null;
      }
      label368: if (i1 < n)
        continue;
    }
    return localg;
  }

  public static i b(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return null;
    try
    {
      JSONObject localJSONObject = new JSONObject(paramString);
      locali = new i();
      locali.a = localJSONObject.optInt("status", -1);
      locali.b = localJSONObject.optString("msg", "");
      if (locali.a == 0)
        locali.c = localJSONObject.optString("res", "");
      return locali;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        i locali = null;
      }
    }
  }

  public static String b()
  {
    String str1 = l.k;
    String str2;
    try
    {
      if (TextUtils.isEmpty(str1))
        str1 = UUID.randomUUID().toString().replaceAll("-", "");
      String str3 = str1.substring(8, 24);
      long l = System.currentTimeMillis() / 1000L;
      char[] arrayOfChar = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102, 65, 66, 67, 68, 69, 70 };
      int i = 0;
      StringBuffer localStringBuffer = new StringBuffer("");
      Random localRandom = new Random();
      while (true)
      {
        if (i >= 6)
        {
          String str4 = localStringBuffer.toString();
          com.clilystudio.netbook.hpay100.a_Pack.a.b("dalongTest", "currenttime:" + l);
          com.clilystudio.netbook.hpay100.a_Pack.a.b("dalongTest", "tmpUUID:" + str3);
          com.clilystudio.netbook.hpay100.a_Pack.a.b("dalongTest", "random:" + str4);
          String str5 = str3 + l + str4;
          com.clilystudio.netbook.hpay100.a_Pack.a.b("dalongTest", "orderid:" + str5);
          com.clilystudio.netbook.hpay100.a_Pack.a.b("dalongTest", "length:" + str5.length());
          return str5;
        }
        int j = Math.abs(localRandom.nextInt(22));
        if ((j < 0) || (j >= 22))
          continue;
        localStringBuffer.append(arrayOfChar[j]);
        i++;
      }
    }
    catch (Exception localException)
    {
      str2 = str1;
      localException.printStackTrace();
    }
    return str2;
  }

  public static void b(Context paramContext, String paramString1, String paramString2, int paramInt1, String paramString3, String paramString4, String paramString5, int paramInt2, String paramString6, String paramString7, int paramInt3)
  {
    try
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("action", "5");
      localHashMap.put("sid", l.l);
      localHashMap.put("orderid", paramString2);
      localHashMap.put("aoid", paramString1);
      localHashMap.put("pid", paramString3);
      localHashMap.put("scheme", paramInt1);
      localHashMap.put("amount", paramInt2);
      localHashMap.put("chtype", paramString4);
      localHashMap.put("chid", paramString5);
      localHashMap.put("status", paramString6);
      localHashMap.put("errorcode", paramString7);
      localHashMap.put("page", paramInt3);
      com.clilystudio.netbook.hpay100.a_Pack.a.b("dalongTest", "statc5 data:" + localHashMap.toString());
      a(paramContext, localHashMap);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public static void c(Context paramContext, String paramString1, String paramString2, int paramInt1, String paramString3, String paramString4, String paramString5, int paramInt2, String paramString6, String paramString7, int paramInt3)
  {
    try
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("action", "6");
      localHashMap.put("sid", l.l);
      localHashMap.put("orderid", paramString2);
      localHashMap.put("aoid", paramString1);
      localHashMap.put("pid", paramString3);
      localHashMap.put("scheme", paramInt1);
      localHashMap.put("amount", paramInt2);
      localHashMap.put("chtype", paramString4);
      localHashMap.put("chid", paramString5);
      localHashMap.put("status", paramString6);
      localHashMap.put("errorcode", paramString7);
      localHashMap.put("page", paramInt3);
      com.clilystudio.netbook.hpay100.a_Pack.a.b("dalongTest", "statc6 data:" + localHashMap.toString());
      a(paramContext, localHashMap);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.hpay100.config.a
 * JD-Core Version:    0.6.0
 */