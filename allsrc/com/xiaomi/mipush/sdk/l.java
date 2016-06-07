package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.xiaomi.xmpush.thrift.c;
import com.xiaomi.xmpush.thrift.h;
import java.util.LinkedList;
import java.util.Queue;

public final class l
{
  private static l a = null;
  private static Queue<String> c;
  private static String d = "1";
  private static String e = "2";
  private static String f = "3";
  private static Object g = new Object();
  private Context b;

  private l(Context paramContext)
  {
    this.b = paramContext.getApplicationContext();
    if (this.b == null)
      this.b = paramContext;
  }

  // ERROR //
  private PushMessageHandler.a a(h paramh, boolean paramBoolean, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: getfield 47	com/xiaomi/mipush/sdk/l:b	Landroid/content/Context;
    //   7: aload_1
    //   8: invokestatic 61	com/xiaomi/mipush/sdk/j:a	(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/h;)Lorg/apache/thrift/b;
    //   11: astore 6
    //   13: aload 6
    //   15: ifnonnull +27 -> 42
    //   18: new 63	java/lang/StringBuilder
    //   21: dup
    //   22: ldc 65
    //   24: invokespecial 68	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   27: aload_1
    //   28: getfield 73	com/xiaomi/xmpush/thrift/h:a	Lcom/xiaomi/xmpush/thrift/a;
    //   31: invokevirtual 77	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   34: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   37: invokestatic 85	com/xiaomi/a/a/a/b:c	(Ljava/lang/String;)V
    //   40: aconst_null
    //   41: areturn
    //   42: new 63	java/lang/StringBuilder
    //   45: dup
    //   46: ldc 87
    //   48: invokespecial 68	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   51: aload 6
    //   53: invokevirtual 77	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   56: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   59: invokestatic 89	com/xiaomi/a/a/a/b:b	(Ljava/lang/String;)V
    //   62: aload_1
    //   63: invokevirtual 92	com/xiaomi/xmpush/thrift/h:a	()Lcom/xiaomi/xmpush/thrift/a;
    //   66: astore 7
    //   68: new 63	java/lang/StringBuilder
    //   71: dup
    //   72: ldc 94
    //   74: invokespecial 68	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   77: aload 7
    //   79: invokevirtual 77	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   82: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   85: invokestatic 96	com/xiaomi/a/a/a/b:a	(Ljava/lang/String;)V
    //   88: getstatic 101	com/xiaomi/mipush/sdk/m:a	[I
    //   91: aload 7
    //   93: invokevirtual 107	com/xiaomi/xmpush/thrift/a:ordinal	()I
    //   96: iaload
    //   97: tableswitch	default:+43 -> 140, 1:+45->142, 2:+162->259, 3:+197->294, 4:+1131->1228, 5:+1217->1314, 6:+1303->1400, 7:+1566->1663
    //   141: areturn
    //   142: aload 6
    //   144: checkcast 109	com/xiaomi/xmpush/thrift/k
    //   147: astore 52
    //   149: aload 52
    //   151: getfield 112	com/xiaomi/xmpush/thrift/k:f	J
    //   154: lconst_0
    //   155: lcmp
    //   156: ifne +23 -> 179
    //   159: aload_0
    //   160: getfield 47	com/xiaomi/mipush/sdk/l:b	Landroid/content/Context;
    //   163: invokestatic 117	com/xiaomi/mipush/sdk/g:a	(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/g;
    //   166: aload 52
    //   168: getfield 120	com/xiaomi/xmpush/thrift/k:h	Ljava/lang/String;
    //   171: aload 52
    //   173: getfield 123	com/xiaomi/xmpush/thrift/k:i	Ljava/lang/String;
    //   176: invokevirtual 126	com/xiaomi/mipush/sdk/g:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   179: aload 52
    //   181: getfield 120	com/xiaomi/xmpush/thrift/k:h	Ljava/lang/String;
    //   184: invokestatic 132	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   187: ifne +1580 -> 1767
    //   190: new 134	java/util/ArrayList
    //   193: dup
    //   194: invokespecial 135	java/util/ArrayList:<init>	()V
    //   197: astore 53
    //   199: aload 53
    //   201: aload 52
    //   203: getfield 120	com/xiaomi/xmpush/thrift/k:h	Ljava/lang/String;
    //   206: invokeinterface 141 2 0
    //   211: pop
    //   212: ldc 143
    //   214: aload 53
    //   216: aload 52
    //   218: getfield 112	com/xiaomi/xmpush/thrift/k:f	J
    //   221: aload 52
    //   223: getfield 145	com/xiaomi/xmpush/thrift/k:g	Ljava/lang/String;
    //   226: aconst_null
    //   227: invokestatic 150	com/xiaomi/mipush/sdk/f:a	(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;
    //   230: astore 55
    //   232: aload_0
    //   233: getfield 47	com/xiaomi/mipush/sdk/l:b	Landroid/content/Context;
    //   236: invokestatic 155	com/xiaomi/mipush/sdk/n:a	(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;
    //   239: invokevirtual 157	com/xiaomi/mipush/sdk/n:d	()V
    //   242: aload 55
    //   244: areturn
    //   245: astore 5
    //   247: aload 5
    //   249: invokestatic 160	com/xiaomi/a/a/a/b:a	(Ljava/lang/Throwable;)V
    //   252: ldc 162
    //   254: invokestatic 85	com/xiaomi/a/a/a/b:c	(Ljava/lang/String;)V
    //   257: aconst_null
    //   258: areturn
    //   259: aload 6
    //   261: checkcast 164	com/xiaomi/xmpush/thrift/r
    //   264: getfield 165	com/xiaomi/xmpush/thrift/r:f	J
    //   267: lconst_0
    //   268: lcmp
    //   269: ifne +20 -> 289
    //   272: aload_0
    //   273: getfield 47	com/xiaomi/mipush/sdk/l:b	Landroid/content/Context;
    //   276: invokestatic 117	com/xiaomi/mipush/sdk/g:a	(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/g;
    //   279: invokevirtual 167	com/xiaomi/mipush/sdk/g:f	()V
    //   282: aload_0
    //   283: getfield 47	com/xiaomi/mipush/sdk/l:b	Landroid/content/Context;
    //   286: invokestatic 171	com/xiaomi/mipush/sdk/d:c	(Landroid/content/Context;)V
    //   289: invokestatic 175	com/xiaomi/mipush/sdk/PushMessageHandler:a	()V
    //   292: aconst_null
    //   293: areturn
    //   294: aload_0
    //   295: getfield 47	com/xiaomi/mipush/sdk/l:b	Landroid/content/Context;
    //   298: invokestatic 117	com/xiaomi/mipush/sdk/g:a	(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/g;
    //   301: invokevirtual 179	com/xiaomi/mipush/sdk/g:j	()Z
    //   304: ifeq +10 -> 314
    //   307: ldc 181
    //   309: invokestatic 96	com/xiaomi/a/a/a/b:a	(Ljava/lang/String;)V
    //   312: aconst_null
    //   313: areturn
    //   314: aload 6
    //   316: checkcast 183	com/xiaomi/xmpush/thrift/n
    //   319: astore 18
    //   321: aload 18
    //   323: invokevirtual 187	com/xiaomi/xmpush/thrift/n:l	()Lcom/xiaomi/xmpush/thrift/b;
    //   326: astore 19
    //   328: aload 19
    //   330: ifnonnull +10 -> 340
    //   333: ldc 189
    //   335: invokestatic 85	com/xiaomi/a/a/a/b:c	(Ljava/lang/String;)V
    //   338: aconst_null
    //   339: areturn
    //   340: iload_2
    //   341: ifeq +15 -> 356
    //   344: aload_0
    //   345: getfield 47	com/xiaomi/mipush/sdk/l:b	Landroid/content/Context;
    //   348: aload 19
    //   350: invokevirtual 193	com/xiaomi/xmpush/thrift/b:b	()Ljava/lang/String;
    //   353: invokestatic 196	com/xiaomi/mipush/sdk/d:a	(Landroid/content/Context;Ljava/lang/String;)V
    //   356: aload 18
    //   358: invokevirtual 198	com/xiaomi/xmpush/thrift/n:j	()Ljava/lang/String;
    //   361: invokestatic 132	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   364: ifne +192 -> 556
    //   367: aload_0
    //   368: getfield 47	com/xiaomi/mipush/sdk/l:b	Landroid/content/Context;
    //   371: aload 18
    //   373: invokevirtual 198	com/xiaomi/xmpush/thrift/n:j	()Ljava/lang/String;
    //   376: invokestatic 201	com/xiaomi/mipush/sdk/d:g	(Landroid/content/Context;Ljava/lang/String;)J
    //   379: lconst_0
    //   380: lcmp
    //   381: ifge +175 -> 556
    //   384: aload_0
    //   385: getfield 47	com/xiaomi/mipush/sdk/l:b	Landroid/content/Context;
    //   388: aload 18
    //   390: invokevirtual 198	com/xiaomi/xmpush/thrift/n:j	()Ljava/lang/String;
    //   393: invokestatic 203	com/xiaomi/mipush/sdk/d:b	(Landroid/content/Context;Ljava/lang/String;)V
    //   396: iload_2
    //   397: ifne +202 -> 599
    //   400: aload_0
    //   401: getfield 47	com/xiaomi/mipush/sdk/l:b	Landroid/content/Context;
    //   404: aload 19
    //   406: invokevirtual 193	com/xiaomi/xmpush/thrift/b:b	()Ljava/lang/String;
    //   409: invokestatic 206	com/xiaomi/mipush/sdk/l:a	(Landroid/content/Context;Ljava/lang/String;)Z
    //   412: ifeq +187 -> 599
    //   415: new 63	java/lang/StringBuilder
    //   418: dup
    //   419: ldc 208
    //   421: invokespecial 68	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   424: aload 19
    //   426: invokevirtual 193	com/xiaomi/xmpush/thrift/b:b	()Ljava/lang/String;
    //   429: invokevirtual 211	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   432: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   435: invokestatic 96	com/xiaomi/a/a/a/b:a	(Ljava/lang/String;)V
    //   438: aload_1
    //   439: invokevirtual 215	com/xiaomi/xmpush/thrift/h:m	()Lcom/xiaomi/xmpush/thrift/c;
    //   442: ifnonnull +1331 -> 1773
    //   445: iload_2
    //   446: ifne +1327 -> 1773
    //   449: new 217	com/xiaomi/xmpush/thrift/e
    //   452: dup
    //   453: invokespecial 218	com/xiaomi/xmpush/thrift/e:<init>	()V
    //   456: astore 21
    //   458: aload 21
    //   460: aload 18
    //   462: invokevirtual 220	com/xiaomi/xmpush/thrift/n:e	()Ljava/lang/String;
    //   465: invokevirtual 223	com/xiaomi/xmpush/thrift/e:b	(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;
    //   468: pop
    //   469: aload 21
    //   471: aload 18
    //   473: invokevirtual 225	com/xiaomi/xmpush/thrift/n:c	()Ljava/lang/String;
    //   476: invokevirtual 227	com/xiaomi/xmpush/thrift/e:a	(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;
    //   479: pop
    //   480: aload 21
    //   482: aload 18
    //   484: invokevirtual 187	com/xiaomi/xmpush/thrift/n:l	()Lcom/xiaomi/xmpush/thrift/b;
    //   487: invokevirtual 230	com/xiaomi/xmpush/thrift/b:g	()J
    //   490: invokevirtual 233	com/xiaomi/xmpush/thrift/e:a	(J)Lcom/xiaomi/xmpush/thrift/e;
    //   493: pop
    //   494: aload 18
    //   496: invokevirtual 235	com/xiaomi/xmpush/thrift/n:h	()Ljava/lang/String;
    //   499: invokestatic 132	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   502: ifne +14 -> 516
    //   505: aload 21
    //   507: aload 18
    //   509: invokevirtual 235	com/xiaomi/xmpush/thrift/n:h	()Ljava/lang/String;
    //   512: invokevirtual 237	com/xiaomi/xmpush/thrift/e:c	(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;
    //   515: pop
    //   516: aload 18
    //   518: invokevirtual 198	com/xiaomi/xmpush/thrift/n:j	()Ljava/lang/String;
    //   521: invokestatic 132	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   524: ifne +14 -> 538
    //   527: aload 21
    //   529: aload 18
    //   531: invokevirtual 198	com/xiaomi/xmpush/thrift/n:j	()Ljava/lang/String;
    //   534: invokevirtual 239	com/xiaomi/xmpush/thrift/e:d	(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/e;
    //   537: pop
    //   538: aload_0
    //   539: getfield 47	com/xiaomi/mipush/sdk/l:b	Landroid/content/Context;
    //   542: invokestatic 155	com/xiaomi/mipush/sdk/n:a	(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;
    //   545: aload 21
    //   547: getstatic 241	com/xiaomi/xmpush/thrift/a:f	Lcom/xiaomi/xmpush/thrift/a;
    //   550: invokevirtual 244	com/xiaomi/mipush/sdk/n:a	(Lorg/apache/thrift/b;Lcom/xiaomi/xmpush/thrift/a;)V
    //   553: aload 4
    //   555: areturn
    //   556: aload 18
    //   558: invokevirtual 235	com/xiaomi/xmpush/thrift/n:h	()Ljava/lang/String;
    //   561: invokestatic 132	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   564: ifne -168 -> 396
    //   567: aload_0
    //   568: getfield 47	com/xiaomi/mipush/sdk/l:b	Landroid/content/Context;
    //   571: aload 18
    //   573: invokevirtual 235	com/xiaomi/xmpush/thrift/n:h	()Ljava/lang/String;
    //   576: invokestatic 246	com/xiaomi/mipush/sdk/d:f	(Landroid/content/Context;Ljava/lang/String;)J
    //   579: lconst_0
    //   580: lcmp
    //   581: ifge -185 -> 396
    //   584: aload_0
    //   585: getfield 47	com/xiaomi/mipush/sdk/l:b	Landroid/content/Context;
    //   588: aload 18
    //   590: invokevirtual 235	com/xiaomi/xmpush/thrift/n:h	()Ljava/lang/String;
    //   593: invokestatic 248	com/xiaomi/mipush/sdk/d:d	(Landroid/content/Context;Ljava/lang/String;)V
    //   596: goto -200 -> 396
    //   599: aload 18
    //   601: aload_1
    //   602: invokevirtual 215	com/xiaomi/xmpush/thrift/h:m	()Lcom/xiaomi/xmpush/thrift/c;
    //   605: iload_2
    //   606: invokestatic 251	com/xiaomi/mipush/sdk/f:a	(Lcom/xiaomi/xmpush/thrift/n;Lcom/xiaomi/xmpush/thrift/c;Z)Lcom/xiaomi/mipush/sdk/MiPushMessage;
    //   609: astore 20
    //   611: aload 20
    //   613: invokevirtual 256	com/xiaomi/mipush/sdk/MiPushMessage:getPassThrough	()I
    //   616: ifne +29 -> 645
    //   619: iload_2
    //   620: ifne +25 -> 645
    //   623: aload 20
    //   625: invokevirtual 260	com/xiaomi/mipush/sdk/MiPushMessage:getExtra	()Ljava/util/Map;
    //   628: invokestatic 265	com/xiaomi/push/service/H:a	(Ljava/util/Map;)Z
    //   631: ifeq +14 -> 645
    //   634: aload_0
    //   635: getfield 47	com/xiaomi/mipush/sdk/l:b	Landroid/content/Context;
    //   638: aload_1
    //   639: aload_3
    //   640: invokestatic 270	com/xiaomi/push/service/N:a	(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/h;[B)V
    //   643: aconst_null
    //   644: areturn
    //   645: new 63	java/lang/StringBuilder
    //   648: dup
    //   649: ldc_w 272
    //   652: invokespecial 68	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   655: aload 19
    //   657: invokevirtual 193	com/xiaomi/xmpush/thrift/b:b	()Ljava/lang/String;
    //   660: invokevirtual 211	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   663: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   666: invokestatic 96	com/xiaomi/a/a/a/b:a	(Ljava/lang/String;)V
    //   669: iload_2
    //   670: ifeq +1090 -> 1760
    //   673: aload 20
    //   675: invokevirtual 260	com/xiaomi/mipush/sdk/MiPushMessage:getExtra	()Ljava/util/Map;
    //   678: ifnull +1082 -> 1760
    //   681: aload 20
    //   683: invokevirtual 260	com/xiaomi/mipush/sdk/MiPushMessage:getExtra	()Ljava/util/Map;
    //   686: ldc_w 274
    //   689: invokeinterface 279 2 0
    //   694: ifeq +1066 -> 1760
    //   697: aload 20
    //   699: invokevirtual 260	com/xiaomi/mipush/sdk/MiPushMessage:getExtra	()Ljava/util/Map;
    //   702: astore 27
    //   704: aload 27
    //   706: ldc_w 274
    //   709: invokeinterface 283 2 0
    //   714: checkcast 285	java/lang/String
    //   717: astore 28
    //   719: ldc_w 287
    //   722: aload_0
    //   723: getfield 47	com/xiaomi/mipush/sdk/l:b	Landroid/content/Context;
    //   726: invokevirtual 290	android/content/Context:getPackageName	()Ljava/lang/String;
    //   729: invokevirtual 293	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   732: ifeq +1022 -> 1754
    //   735: aload 27
    //   737: ldc_w 295
    //   740: invokeinterface 283 2 0
    //   745: checkcast 285	java/lang/String
    //   748: astore 29
    //   750: getstatic 25	com/xiaomi/mipush/sdk/l:d	Ljava/lang/String;
    //   753: aload 28
    //   755: invokevirtual 293	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   758: ifeq +177 -> 935
    //   761: aload_0
    //   762: getfield 47	com/xiaomi/mipush/sdk/l:b	Landroid/content/Context;
    //   765: invokevirtual 299	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   768: astore 50
    //   770: aload 29
    //   772: invokestatic 132	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   775: ifeq +12 -> 787
    //   778: aload_0
    //   779: getfield 47	com/xiaomi/mipush/sdk/l:b	Landroid/content/Context;
    //   782: invokevirtual 290	android/content/Context:getPackageName	()Ljava/lang/String;
    //   785: astore 29
    //   787: aload 50
    //   789: aload 29
    //   791: invokevirtual 305	android/content/pm/PackageManager:getLaunchIntentForPackage	(Ljava/lang/String;)Landroid/content/Intent;
    //   794: astore 51
    //   796: aload 51
    //   798: astore 30
    //   800: aconst_null
    //   801: astore 4
    //   803: aload 30
    //   805: ifnull +968 -> 1773
    //   808: aload 28
    //   810: getstatic 33	com/xiaomi/mipush/sdk/l:f	Ljava/lang/String;
    //   813: invokevirtual 293	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   816: ifne +14 -> 830
    //   819: aload 30
    //   821: ldc_w 307
    //   824: aload 20
    //   826: invokevirtual 313	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    //   829: pop
    //   830: aload 30
    //   832: ldc_w 314
    //   835: invokevirtual 318	android/content/Intent:addFlags	(I)Landroid/content/Intent;
    //   838: pop
    //   839: aload_0
    //   840: getfield 47	com/xiaomi/mipush/sdk/l:b	Landroid/content/Context;
    //   843: invokevirtual 299	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   846: aload 30
    //   848: ldc_w 319
    //   851: invokevirtual 323	android/content/pm/PackageManager:resolveActivity	(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    //   854: astore 33
    //   856: aconst_null
    //   857: astore 4
    //   859: aload 33
    //   861: ifnull +912 -> 1773
    //   864: aload_0
    //   865: getfield 47	com/xiaomi/mipush/sdk/l:b	Landroid/content/Context;
    //   868: aload 30
    //   870: invokevirtual 327	android/content/Context:startActivity	(Landroid/content/Intent;)V
    //   873: aconst_null
    //   874: areturn
    //   875: astore 32
    //   877: new 63	java/lang/StringBuilder
    //   880: dup
    //   881: ldc_w 329
    //   884: invokespecial 68	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   887: aload 32
    //   889: invokevirtual 332	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   892: invokevirtual 211	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   895: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   898: invokestatic 85	com/xiaomi/a/a/a/b:c	(Ljava/lang/String;)V
    //   901: aconst_null
    //   902: areturn
    //   903: astore 49
    //   905: new 63	java/lang/StringBuilder
    //   908: dup
    //   909: ldc_w 329
    //   912: invokespecial 68	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   915: aload 49
    //   917: invokevirtual 332	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   920: invokevirtual 211	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   923: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   926: invokestatic 85	com/xiaomi/a/a/a/b:c	(Ljava/lang/String;)V
    //   929: aconst_null
    //   930: astore 30
    //   932: goto -132 -> 800
    //   935: getstatic 29	com/xiaomi/mipush/sdk/l:e	Ljava/lang/String;
    //   938: aload 28
    //   940: invokevirtual 293	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   943: ifeq +99 -> 1042
    //   946: aload 27
    //   948: ldc_w 334
    //   951: invokeinterface 283 2 0
    //   956: checkcast 285	java/lang/String
    //   959: astore 43
    //   961: aload 43
    //   963: ifnull +785 -> 1748
    //   966: aload 43
    //   968: iconst_1
    //   969: invokestatic 338	android/content/Intent:parseUri	(Ljava/lang/String;I)Landroid/content/Intent;
    //   972: astore 46
    //   974: aload 29
    //   976: invokestatic 132	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   979: ifeq +12 -> 991
    //   982: aload_0
    //   983: getfield 47	com/xiaomi/mipush/sdk/l:b	Landroid/content/Context;
    //   986: invokevirtual 290	android/content/Context:getPackageName	()Ljava/lang/String;
    //   989: astore 29
    //   991: aload 46
    //   993: aload 29
    //   995: invokevirtual 341	android/content/Intent:setPackage	(Ljava/lang/String;)Landroid/content/Intent;
    //   998: pop
    //   999: aload 46
    //   1001: astore 30
    //   1003: goto -203 -> 800
    //   1006: astore 44
    //   1008: aload 44
    //   1010: astore 45
    //   1012: aconst_null
    //   1013: astore 30
    //   1015: new 63	java/lang/StringBuilder
    //   1018: dup
    //   1019: ldc_w 329
    //   1022: invokespecial 68	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1025: aload 45
    //   1027: invokevirtual 342	java/net/URISyntaxException:getMessage	()Ljava/lang/String;
    //   1030: invokevirtual 211	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1033: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1036: invokestatic 85	com/xiaomi/a/a/a/b:c	(Ljava/lang/String;)V
    //   1039: goto -239 -> 800
    //   1042: getstatic 33	com/xiaomi/mipush/sdk/l:f	Ljava/lang/String;
    //   1045: aload 28
    //   1047: invokevirtual 293	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1050: ifeq +692 -> 1742
    //   1053: aload 27
    //   1055: ldc_w 344
    //   1058: invokeinterface 283 2 0
    //   1063: checkcast 285	java/lang/String
    //   1066: astore 35
    //   1068: aload 35
    //   1070: ifnull +672 -> 1742
    //   1073: aload 35
    //   1075: invokevirtual 347	java/lang/String:trim	()Ljava/lang/String;
    //   1078: invokevirtual 350	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   1081: astore 36
    //   1083: aload 36
    //   1085: ldc_w 352
    //   1088: invokevirtual 356	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   1091: ifne +644 -> 1735
    //   1094: aload 36
    //   1096: ldc_w 358
    //   1099: invokevirtual 356	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   1102: ifne +633 -> 1735
    //   1105: new 63	java/lang/StringBuilder
    //   1108: dup
    //   1109: ldc_w 352
    //   1112: invokespecial 68	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1115: aload 36
    //   1117: invokevirtual 211	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1120: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1123: astore 37
    //   1125: new 360	java/net/URL
    //   1128: dup
    //   1129: aload 37
    //   1131: invokespecial 361	java/net/URL:<init>	(Ljava/lang/String;)V
    //   1134: invokevirtual 364	java/net/URL:getProtocol	()Ljava/lang/String;
    //   1137: astore 40
    //   1139: ldc_w 366
    //   1142: aload 40
    //   1144: invokevirtual 293	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1147: ifne +14 -> 1161
    //   1150: ldc_w 368
    //   1153: aload 40
    //   1155: invokevirtual 293	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1158: ifeq +571 -> 1729
    //   1161: new 309	android/content/Intent
    //   1164: dup
    //   1165: ldc_w 370
    //   1168: invokespecial 371	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   1171: astore 30
    //   1173: aload 30
    //   1175: aload 37
    //   1177: invokestatic 377	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   1180: invokevirtual 381	android/content/Intent:setData	(Landroid/net/Uri;)Landroid/content/Intent;
    //   1183: pop
    //   1184: goto -384 -> 800
    //   1187: astore 41
    //   1189: aload 30
    //   1191: astore 39
    //   1193: aload 41
    //   1195: astore 38
    //   1197: new 63	java/lang/StringBuilder
    //   1200: dup
    //   1201: ldc_w 329
    //   1204: invokespecial 68	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1207: aload 38
    //   1209: invokevirtual 382	java/net/MalformedURLException:getMessage	()Ljava/lang/String;
    //   1212: invokevirtual 211	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1215: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1218: invokestatic 85	com/xiaomi/a/a/a/b:c	(Ljava/lang/String;)V
    //   1221: aload 39
    //   1223: astore 30
    //   1225: goto -425 -> 800
    //   1228: aload 6
    //   1230: checkcast 384	com/xiaomi/xmpush/thrift/p
    //   1233: astore 15
    //   1235: aload 15
    //   1237: getfield 385	com/xiaomi/xmpush/thrift/p:f	J
    //   1240: lconst_0
    //   1241: lcmp
    //   1242: ifne +15 -> 1257
    //   1245: aload_0
    //   1246: getfield 47	com/xiaomi/mipush/sdk/l:b	Landroid/content/Context;
    //   1249: aload 15
    //   1251: invokevirtual 386	com/xiaomi/xmpush/thrift/p:h	()Ljava/lang/String;
    //   1254: invokestatic 248	com/xiaomi/mipush/sdk/d:d	(Landroid/content/Context;Ljava/lang/String;)V
    //   1257: aload 15
    //   1259: invokevirtual 386	com/xiaomi/xmpush/thrift/p:h	()Ljava/lang/String;
    //   1262: invokestatic 132	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1265: ifne +458 -> 1723
    //   1268: new 134	java/util/ArrayList
    //   1271: dup
    //   1272: invokespecial 135	java/util/ArrayList:<init>	()V
    //   1275: astore 16
    //   1277: aload 16
    //   1279: aload 15
    //   1281: invokevirtual 386	com/xiaomi/xmpush/thrift/p:h	()Ljava/lang/String;
    //   1284: invokeinterface 141 2 0
    //   1289: pop
    //   1290: getstatic 388	com/xiaomi/mipush/sdk/d:a	Ljava/lang/String;
    //   1293: aload 16
    //   1295: aload 15
    //   1297: getfield 385	com/xiaomi/xmpush/thrift/p:f	J
    //   1300: aload 15
    //   1302: getfield 389	com/xiaomi/xmpush/thrift/p:g	Ljava/lang/String;
    //   1305: aload 15
    //   1307: invokevirtual 392	com/xiaomi/xmpush/thrift/p:k	()Ljava/lang/String;
    //   1310: invokestatic 150	com/xiaomi/mipush/sdk/f:a	(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;
    //   1313: areturn
    //   1314: aload 6
    //   1316: checkcast 394	com/xiaomi/xmpush/thrift/t
    //   1319: astore 12
    //   1321: aload 12
    //   1323: getfield 395	com/xiaomi/xmpush/thrift/t:f	J
    //   1326: lconst_0
    //   1327: lcmp
    //   1328: ifne +15 -> 1343
    //   1331: aload_0
    //   1332: getfield 47	com/xiaomi/mipush/sdk/l:b	Landroid/content/Context;
    //   1335: aload 12
    //   1337: invokevirtual 396	com/xiaomi/xmpush/thrift/t:h	()Ljava/lang/String;
    //   1340: invokestatic 398	com/xiaomi/mipush/sdk/d:e	(Landroid/content/Context;Ljava/lang/String;)V
    //   1343: aload 12
    //   1345: invokevirtual 396	com/xiaomi/xmpush/thrift/t:h	()Ljava/lang/String;
    //   1348: invokestatic 132	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1351: ifne +366 -> 1717
    //   1354: new 134	java/util/ArrayList
    //   1357: dup
    //   1358: invokespecial 135	java/util/ArrayList:<init>	()V
    //   1361: astore 13
    //   1363: aload 13
    //   1365: aload 12
    //   1367: invokevirtual 396	com/xiaomi/xmpush/thrift/t:h	()Ljava/lang/String;
    //   1370: invokeinterface 141 2 0
    //   1375: pop
    //   1376: getstatic 400	com/xiaomi/mipush/sdk/d:b	Ljava/lang/String;
    //   1379: aload 13
    //   1381: aload 12
    //   1383: getfield 395	com/xiaomi/xmpush/thrift/t:f	J
    //   1386: aload 12
    //   1388: getfield 401	com/xiaomi/xmpush/thrift/t:g	Ljava/lang/String;
    //   1391: aload 12
    //   1393: invokevirtual 402	com/xiaomi/xmpush/thrift/t:k	()Ljava/lang/String;
    //   1396: invokestatic 150	com/xiaomi/mipush/sdk/f:a	(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;
    //   1399: areturn
    //   1400: aload 6
    //   1402: checkcast 404	com/xiaomi/xmpush/thrift/g
    //   1405: astore 9
    //   1407: aload 9
    //   1409: invokevirtual 405	com/xiaomi/xmpush/thrift/g:e	()Ljava/lang/String;
    //   1412: astore 10
    //   1414: aload 9
    //   1416: invokevirtual 408	com/xiaomi/xmpush/thrift/g:k	()Ljava/util/List;
    //   1419: astore 11
    //   1421: aload 9
    //   1423: getfield 410	com/xiaomi/xmpush/thrift/g:g	J
    //   1426: lconst_0
    //   1427: lcmp
    //   1428: ifne +104 -> 1532
    //   1431: aload 10
    //   1433: ldc_w 412
    //   1436: invokestatic 415	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   1439: ifeq +130 -> 1569
    //   1442: aload 11
    //   1444: ifnull +125 -> 1569
    //   1447: aload 11
    //   1449: invokeinterface 418 1 0
    //   1454: iconst_1
    //   1455: if_icmple +114 -> 1569
    //   1458: aload_0
    //   1459: getfield 47	com/xiaomi/mipush/sdk/l:b	Landroid/content/Context;
    //   1462: aload 11
    //   1464: iconst_0
    //   1465: invokeinterface 421 2 0
    //   1470: checkcast 285	java/lang/String
    //   1473: aload 11
    //   1475: iconst_1
    //   1476: invokeinterface 421 2 0
    //   1481: checkcast 285	java/lang/String
    //   1484: invokestatic 424	com/xiaomi/mipush/sdk/d:d	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   1487: ldc_w 426
    //   1490: aload 11
    //   1492: iconst_0
    //   1493: invokeinterface 421 2 0
    //   1498: invokevirtual 293	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1501: ifeq +54 -> 1555
    //   1504: ldc_w 426
    //   1507: aload 11
    //   1509: iconst_1
    //   1510: invokeinterface 421 2 0
    //   1515: invokevirtual 293	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1518: ifeq +37 -> 1555
    //   1521: aload_0
    //   1522: getfield 47	com/xiaomi/mipush/sdk/l:b	Landroid/content/Context;
    //   1525: invokestatic 117	com/xiaomi/mipush/sdk/g:a	(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/g;
    //   1528: iconst_1
    //   1529: invokevirtual 429	com/xiaomi/mipush/sdk/g:a	(Z)V
    //   1532: aload 10
    //   1534: aload 11
    //   1536: aload 9
    //   1538: getfield 410	com/xiaomi/xmpush/thrift/g:g	J
    //   1541: aload 9
    //   1543: getfield 430	com/xiaomi/xmpush/thrift/g:h	Ljava/lang/String;
    //   1546: aload 9
    //   1548: invokevirtual 432	com/xiaomi/xmpush/thrift/g:m	()Ljava/lang/String;
    //   1551: invokestatic 150	com/xiaomi/mipush/sdk/f:a	(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;
    //   1554: areturn
    //   1555: aload_0
    //   1556: getfield 47	com/xiaomi/mipush/sdk/l:b	Landroid/content/Context;
    //   1559: invokestatic 117	com/xiaomi/mipush/sdk/g:a	(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/g;
    //   1562: iconst_0
    //   1563: invokevirtual 429	com/xiaomi/mipush/sdk/g:a	(Z)V
    //   1566: goto -34 -> 1532
    //   1569: aload 10
    //   1571: ldc_w 434
    //   1574: invokestatic 415	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   1577: ifeq +39 -> 1616
    //   1580: aload 11
    //   1582: ifnull +34 -> 1616
    //   1585: aload 11
    //   1587: invokeinterface 418 1 0
    //   1592: ifle +24 -> 1616
    //   1595: aload_0
    //   1596: getfield 47	com/xiaomi/mipush/sdk/l:b	Landroid/content/Context;
    //   1599: aload 11
    //   1601: iconst_0
    //   1602: invokeinterface 421 2 0
    //   1607: checkcast 285	java/lang/String
    //   1610: invokestatic 203	com/xiaomi/mipush/sdk/d:b	(Landroid/content/Context;Ljava/lang/String;)V
    //   1613: goto -81 -> 1532
    //   1616: aload 10
    //   1618: ldc_w 436
    //   1621: invokestatic 415	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   1624: ifeq -92 -> 1532
    //   1627: aload 11
    //   1629: ifnull -97 -> 1532
    //   1632: aload 11
    //   1634: invokeinterface 418 1 0
    //   1639: ifle -107 -> 1532
    //   1642: aload_0
    //   1643: getfield 47	com/xiaomi/mipush/sdk/l:b	Landroid/content/Context;
    //   1646: aload 11
    //   1648: iconst_0
    //   1649: invokeinterface 421 2 0
    //   1654: checkcast 285	java/lang/String
    //   1657: invokestatic 438	com/xiaomi/mipush/sdk/d:c	(Landroid/content/Context;Ljava/lang/String;)V
    //   1660: goto -128 -> 1532
    //   1663: ldc_w 440
    //   1666: aload 6
    //   1668: checkcast 442	com/xiaomi/xmpush/thrift/i
    //   1671: getfield 443	com/xiaomi/xmpush/thrift/i:e	Ljava/lang/String;
    //   1674: invokevirtual 446	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   1677: istore 8
    //   1679: aconst_null
    //   1680: astore 4
    //   1682: iload 8
    //   1684: ifeq +89 -> 1773
    //   1687: aload_0
    //   1688: getfield 47	com/xiaomi/mipush/sdk/l:b	Landroid/content/Context;
    //   1691: invokestatic 448	com/xiaomi/mipush/sdk/d:d	(Landroid/content/Context;)V
    //   1694: aconst_null
    //   1695: areturn
    //   1696: astore 38
    //   1698: aconst_null
    //   1699: astore 39
    //   1701: goto -504 -> 1197
    //   1704: astore 47
    //   1706: aload 47
    //   1708: astore 45
    //   1710: aload 46
    //   1712: astore 30
    //   1714: goto -699 -> 1015
    //   1717: aconst_null
    //   1718: astore 13
    //   1720: goto -344 -> 1376
    //   1723: aconst_null
    //   1724: astore 16
    //   1726: goto -436 -> 1290
    //   1729: aconst_null
    //   1730: astore 30
    //   1732: goto -932 -> 800
    //   1735: aload 36
    //   1737: astore 37
    //   1739: goto -614 -> 1125
    //   1742: aconst_null
    //   1743: astore 30
    //   1745: goto -945 -> 800
    //   1748: aconst_null
    //   1749: astore 30
    //   1751: goto -951 -> 800
    //   1754: aconst_null
    //   1755: astore 29
    //   1757: goto -1007 -> 750
    //   1760: aload 20
    //   1762: astore 4
    //   1764: goto -1326 -> 438
    //   1767: aconst_null
    //   1768: astore 53
    //   1770: goto -1558 -> 212
    //   1773: aload 4
    //   1775: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   3	13	245	org/apache/thrift/e
    //   18	40	245	org/apache/thrift/e
    //   42	62	245	org/apache/thrift/e
    //   839	856	875	java/lang/Exception
    //   864	873	875	java/lang/Exception
    //   761	787	903	java/lang/Exception
    //   787	796	903	java/lang/Exception
    //   966	974	1006	java/net/URISyntaxException
    //   1173	1184	1187	java/net/MalformedURLException
    //   1125	1161	1696	java/net/MalformedURLException
    //   1161	1173	1696	java/net/MalformedURLException
    //   974	991	1704	java/net/URISyntaxException
    //   991	999	1704	java/net/URISyntaxException
  }

  public static l a(Context paramContext)
  {
    if (a == null)
      a = new l(paramContext);
    return a;
  }

  private static boolean a(Context paramContext, String paramString)
  {
    synchronized (g)
    {
      SharedPreferences localSharedPreferences = g.a(paramContext).h();
      if (c == null)
      {
        String[] arrayOfString = localSharedPreferences.getString("pref_msg_ids", "").split(",");
        c = new LinkedList();
        int i = arrayOfString.length;
        for (int j = 0; j < i; j++)
        {
          String str2 = arrayOfString[j];
          c.add(str2);
        }
      }
      if (c.contains(paramString))
        return true;
      c.add(paramString);
      if (c.size() > 10)
        c.poll();
      String str1 = com.alipay.sdk.b.b.a(c, ",");
      SharedPreferences.Editor localEditor = localSharedPreferences.edit();
      localEditor.putString("pref_msg_ids", str1);
      localEditor.commit();
      return false;
    }
  }

  public final PushMessageHandler.a a(Intent paramIntent)
  {
    String str = paramIntent.getAction();
    com.xiaomi.a.a.a.b.a("receive an intent from server, action=" + str);
    byte[] arrayOfByte2;
    boolean bool;
    if ("com.xiaomi.mipush.RECEIVE_MESSAGE".equals(str))
    {
      arrayOfByte2 = paramIntent.getByteArrayExtra("mipush_payload");
      bool = paramIntent.getBooleanExtra("mipush_notified", false);
      if (arrayOfByte2 == null)
        com.xiaomi.a.a.a.b.c("receiving an empty message, drop");
    }
    label309: 
    do
    {
      return null;
      h localh2 = new h();
      try
      {
        com.arcsoft.hpay100.a.a.a(localh2, arrayOfByte2);
        localg = g.a(this.b);
        if ((localh2.a() == com.xiaomi.xmpush.thrift.a.e) && (localh2.m() != null) && (!localg.j()) && (!bool))
        {
          c localc = localh2.m();
          com.xiaomi.xmpush.thrift.e locale = new com.xiaomi.xmpush.thrift.e();
          locale.b(localh2.h());
          locale.a(localc.a());
          locale.a(localc.c());
          if (!TextUtils.isEmpty(localc.e()))
            locale.c(localc.e());
          n.a(this.b).a(locale, com.xiaomi.xmpush.thrift.a.f, false);
        }
        if ((!localg.g()) && (localh2.a != com.xiaomi.xmpush.thrift.a.a))
        {
          com.xiaomi.a.a.a.b.c("receive message without registration. need unregister or re-register!");
          return null;
        }
      }
      catch (org.apache.thrift.e locale2)
      {
        g localg;
        com.xiaomi.a.a.a.b.a(locale2);
        return null;
        if ((!localg.g()) || (!localg.l()))
          break label309;
        if (localh2.a == com.xiaomi.xmpush.thrift.a.b)
        {
          localg.f();
          d.c(this.b);
          PushMessageHandler.a();
          return null;
        }
      }
      catch (Exception localException)
      {
        com.xiaomi.a.a.a.b.a(localException);
        return null;
      }
      d.e(this.b);
      return null;
      PushMessageHandler.a locala = a(localh2, bool, arrayOfByte2);
      return locala;
    }
    while (!"com.xiaomi.mipush.ERROR".equals(str));
    MiPushCommandMessage localMiPushCommandMessage = new MiPushCommandMessage();
    h localh1 = new h();
    try
    {
      byte[] arrayOfByte1 = paramIntent.getByteArrayExtra("mipush_payload");
      if (arrayOfByte1 != null)
        com.arcsoft.hpay100.a.a.a(localh1, arrayOfByte1);
      label372: localMiPushCommandMessage.setCommand(String.valueOf(localh1.a()));
      localMiPushCommandMessage.setResultCode(paramIntent.getIntExtra("mipush_error_code", 0));
      localMiPushCommandMessage.setReason(paramIntent.getStringExtra("mipush_error_msg"));
      com.xiaomi.a.a.a.b.c("receive a error message. code = " + paramIntent.getIntExtra("mipush_error_code", 0) + ", msg= " + paramIntent.getStringExtra("mipush_error_msg"));
      return localMiPushCommandMessage;
    }
    catch (org.apache.thrift.e locale1)
    {
      break label372;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mipush.sdk.l
 * JD-Core Version:    0.6.0
 */