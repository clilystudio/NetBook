package com.alipay.sdk.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.text.TextUtils;
import com.alipay.android.app.IAlixPay;
import com.alipay.android.app.IRemoteServiceCallback;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;

public class d
{
  private WeakReference<Activity> a;
  private IAlixPay b;
  private final Object c = IAlixPay.class;
  private boolean d = false;
  private boolean e;
  private String f;
  private String g;
  private String h = null;
  private ServiceConnection i = new e(this);
  private IRemoteServiceCallback j = new f(this);

  public d(Activity paramActivity)
  {
    this.a = new WeakReference(paramActivity);
  }

  // ERROR //
  private String a(String paramString, Intent paramIntent)
  {
    // Byte code:
    //   0: aload_0
    //   1: aconst_null
    //   2: putfield 35	com/alipay/sdk/util/d:h	Ljava/lang/String;
    //   5: aload_0
    //   6: getfield 33	com/alipay/sdk/util/d:d	Z
    //   9: ifeq +6 -> 15
    //   12: ldc 67
    //   14: areturn
    //   15: aload_0
    //   16: iconst_1
    //   17: putfield 33	com/alipay/sdk/util/d:d	Z
    //   20: aload_0
    //   21: aload_0
    //   22: getfield 54	com/alipay/sdk/util/d:a	Ljava/lang/ref/WeakReference;
    //   25: invokevirtual 71	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   28: checkcast 73	android/content/Context
    //   31: invokestatic 78	android/support/v7/app/f:f	(Landroid/content/Context;)Ljava/lang/String;
    //   34: putfield 80	com/alipay/sdk/util/d:f	Ljava/lang/String;
    //   37: aload_0
    //   38: getfield 54	com/alipay/sdk/util/d:a	Ljava/lang/ref/WeakReference;
    //   41: invokevirtual 71	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   44: checkcast 82	android/app/Activity
    //   47: invokevirtual 86	android/app/Activity:getApplicationContext	()Landroid/content/Context;
    //   50: aload_2
    //   51: aload_0
    //   52: getfield 42	com/alipay/sdk/util/d:i	Landroid/content/ServiceConnection;
    //   55: iconst_1
    //   56: invokevirtual 90	android/content/Context:bindService	(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    //   59: pop
    //   60: aload_0
    //   61: getfield 31	com/alipay/sdk/util/d:c	Ljava/lang/Object;
    //   64: astore 4
    //   66: aload 4
    //   68: monitorenter
    //   69: aload_0
    //   70: getfield 57	com/alipay/sdk/util/d:b	Lcom/alipay/android/app/IAlixPay;
    //   73: astore 6
    //   75: aload 6
    //   77: ifnonnull +13 -> 90
    //   80: aload_0
    //   81: getfield 31	com/alipay/sdk/util/d:c	Ljava/lang/Object;
    //   84: ldc2_w 91
    //   87: invokevirtual 96	java/lang/Object:wait	(J)V
    //   90: aload 4
    //   92: monitorexit
    //   93: aload_0
    //   94: getfield 57	com/alipay/sdk/util/d:b	Lcom/alipay/android/app/IAlixPay;
    //   97: ifnonnull +278 -> 375
    //   100: aload_0
    //   101: aload_0
    //   102: getfield 54	com/alipay/sdk/util/d:a	Ljava/lang/ref/WeakReference;
    //   105: invokevirtual 71	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   108: checkcast 73	android/content/Context
    //   111: invokestatic 78	android/support/v7/app/f:f	(Landroid/content/Context;)Ljava/lang/String;
    //   114: putfield 98	com/alipay/sdk/util/d:g	Ljava/lang/String;
    //   117: aload_0
    //   118: new 100	java/lang/StringBuilder
    //   121: dup
    //   122: ldc 102
    //   124: invokespecial 105	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   127: aload_0
    //   128: getfield 80	com/alipay/sdk/util/d:f	Ljava/lang/String;
    //   131: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: ldc 111
    //   136: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   139: aload_0
    //   140: getfield 98	com/alipay/sdk/util/d:g	Ljava/lang/String;
    //   143: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: ldc 113
    //   148: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: getstatic 118	android/os/Build:MANUFACTURER	Ljava/lang/String;
    //   154: ldc 120
    //   156: ldc 122
    //   158: invokevirtual 128	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   161: ldc 130
    //   163: ldc 132
    //   165: invokevirtual 128	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   168: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   171: ldc 113
    //   173: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   176: getstatic 135	android/os/Build:MODEL	Ljava/lang/String;
    //   179: ldc 120
    //   181: ldc 122
    //   183: invokevirtual 128	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   186: ldc 130
    //   188: ldc 122
    //   190: invokevirtual 128	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   193: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   196: ldc 113
    //   198: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   201: aload_0
    //   202: getfield 54	com/alipay/sdk/util/d:a	Ljava/lang/ref/WeakReference;
    //   205: invokevirtual 71	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   208: checkcast 73	android/content/Context
    //   211: invokestatic 140	com/alipay/sdk/util/a:a	(Landroid/content/Context;)Lcom/alipay/sdk/util/a;
    //   214: invokevirtual 143	com/alipay/sdk/util/a:b	()Ljava/lang/String;
    //   217: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   220: invokevirtual 146	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   223: putfield 35	com/alipay/sdk/util/d:h	Ljava/lang/String;
    //   226: aload_0
    //   227: getfield 80	com/alipay/sdk/util/d:f	Ljava/lang/String;
    //   230: ifnonnull +10 -> 240
    //   233: aload_0
    //   234: getfield 98	com/alipay/sdk/util/d:g	Ljava/lang/String;
    //   237: ifnonnull +45 -> 282
    //   240: aload_0
    //   241: new 100	java/lang/StringBuilder
    //   244: dup
    //   245: invokespecial 147	java/lang/StringBuilder:<init>	()V
    //   248: aload_0
    //   249: getfield 35	com/alipay/sdk/util/d:h	Ljava/lang/String;
    //   252: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   255: ldc 113
    //   257: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   260: aload_0
    //   261: getfield 54	com/alipay/sdk/util/d:a	Ljava/lang/ref/WeakReference;
    //   264: invokevirtual 71	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   267: checkcast 73	android/content/Context
    //   270: invokestatic 149	android/support/v7/app/f:g	(Landroid/content/Context;)Ljava/lang/String;
    //   273: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   276: invokevirtual 146	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   279: putfield 35	com/alipay/sdk/util/d:h	Ljava/lang/String;
    //   282: aload_0
    //   283: getfield 35	com/alipay/sdk/util/d:h	Ljava/lang/String;
    //   286: astore 13
    //   288: aload_0
    //   289: getfield 54	com/alipay/sdk/util/d:a	Ljava/lang/ref/WeakReference;
    //   292: invokevirtual 71	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   295: pop
    //   296: aload 13
    //   298: invokestatic 153	com/alipay/sdk/util/b:a	(Ljava/lang/String;)V
    //   301: aload_0
    //   302: getfield 54	com/alipay/sdk/util/d:a	Ljava/lang/ref/WeakReference;
    //   305: invokevirtual 71	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   308: checkcast 82	android/app/Activity
    //   311: aload_0
    //   312: getfield 42	com/alipay/sdk/util/d:i	Landroid/content/ServiceConnection;
    //   315: invokevirtual 157	android/app/Activity:unbindService	(Landroid/content/ServiceConnection;)V
    //   318: aload_0
    //   319: aconst_null
    //   320: putfield 47	com/alipay/sdk/util/d:j	Lcom/alipay/android/app/IRemoteServiceCallback;
    //   323: aload_0
    //   324: aconst_null
    //   325: putfield 42	com/alipay/sdk/util/d:i	Landroid/content/ServiceConnection;
    //   328: aload_0
    //   329: aconst_null
    //   330: putfield 57	com/alipay/sdk/util/d:b	Lcom/alipay/android/app/IAlixPay;
    //   333: aload_0
    //   334: iconst_0
    //   335: putfield 33	com/alipay/sdk/util/d:d	Z
    //   338: aload_0
    //   339: getfield 159	com/alipay/sdk/util/d:e	Z
    //   342: ifeq +22 -> 364
    //   345: aload_0
    //   346: getfield 54	com/alipay/sdk/util/d:a	Ljava/lang/ref/WeakReference;
    //   349: invokevirtual 71	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   352: checkcast 82	android/app/Activity
    //   355: iconst_0
    //   356: invokevirtual 163	android/app/Activity:setRequestedOrientation	(I)V
    //   359: aload_0
    //   360: iconst_0
    //   361: putfield 159	com/alipay/sdk/util/d:e	Z
    //   364: ldc 165
    //   366: areturn
    //   367: astore 5
    //   369: aload 4
    //   371: monitorexit
    //   372: aload 5
    //   374: athrow
    //   375: aload_0
    //   376: getfield 54	com/alipay/sdk/util/d:a	Ljava/lang/ref/WeakReference;
    //   379: invokevirtual 71	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   382: checkcast 82	android/app/Activity
    //   385: invokevirtual 169	android/app/Activity:getRequestedOrientation	()I
    //   388: ifne +22 -> 410
    //   391: aload_0
    //   392: getfield 54	com/alipay/sdk/util/d:a	Ljava/lang/ref/WeakReference;
    //   395: invokevirtual 71	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   398: checkcast 82	android/app/Activity
    //   401: iconst_1
    //   402: invokevirtual 163	android/app/Activity:setRequestedOrientation	(I)V
    //   405: aload_0
    //   406: iconst_1
    //   407: putfield 159	com/alipay/sdk/util/d:e	Z
    //   410: aload_0
    //   411: getfield 57	com/alipay/sdk/util/d:b	Lcom/alipay/android/app/IAlixPay;
    //   414: aload_0
    //   415: getfield 47	com/alipay/sdk/util/d:j	Lcom/alipay/android/app/IRemoteServiceCallback;
    //   418: invokeinterface 173 2 0
    //   423: aload_0
    //   424: getfield 57	com/alipay/sdk/util/d:b	Lcom/alipay/android/app/IAlixPay;
    //   427: aload_1
    //   428: invokeinterface 177 2 0
    //   433: astore 11
    //   435: aload_0
    //   436: getfield 57	com/alipay/sdk/util/d:b	Lcom/alipay/android/app/IAlixPay;
    //   439: aload_0
    //   440: getfield 47	com/alipay/sdk/util/d:j	Lcom/alipay/android/app/IRemoteServiceCallback;
    //   443: invokeinterface 180 2 0
    //   448: aload_0
    //   449: getfield 54	com/alipay/sdk/util/d:a	Ljava/lang/ref/WeakReference;
    //   452: invokevirtual 71	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   455: checkcast 82	android/app/Activity
    //   458: aload_0
    //   459: getfield 42	com/alipay/sdk/util/d:i	Landroid/content/ServiceConnection;
    //   462: invokevirtual 157	android/app/Activity:unbindService	(Landroid/content/ServiceConnection;)V
    //   465: aload_0
    //   466: aconst_null
    //   467: putfield 47	com/alipay/sdk/util/d:j	Lcom/alipay/android/app/IRemoteServiceCallback;
    //   470: aload_0
    //   471: aconst_null
    //   472: putfield 42	com/alipay/sdk/util/d:i	Landroid/content/ServiceConnection;
    //   475: aload_0
    //   476: aconst_null
    //   477: putfield 57	com/alipay/sdk/util/d:b	Lcom/alipay/android/app/IAlixPay;
    //   480: aload_0
    //   481: iconst_0
    //   482: putfield 33	com/alipay/sdk/util/d:d	Z
    //   485: aload_0
    //   486: getfield 159	com/alipay/sdk/util/d:e	Z
    //   489: ifeq +22 -> 511
    //   492: aload_0
    //   493: getfield 54	com/alipay/sdk/util/d:a	Ljava/lang/ref/WeakReference;
    //   496: invokevirtual 71	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   499: checkcast 82	android/app/Activity
    //   502: iconst_0
    //   503: invokevirtual 163	android/app/Activity:setRequestedOrientation	(I)V
    //   506: aload_0
    //   507: iconst_0
    //   508: putfield 159	com/alipay/sdk/util/d:e	Z
    //   511: aload 11
    //   513: areturn
    //   514: astore 9
    //   516: aload_0
    //   517: new 100	java/lang/StringBuilder
    //   520: dup
    //   521: invokespecial 147	java/lang/StringBuilder:<init>	()V
    //   524: aload_0
    //   525: getfield 35	com/alipay/sdk/util/d:h	Ljava/lang/String;
    //   528: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   531: ldc 182
    //   533: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   536: aload 9
    //   538: invokevirtual 185	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   541: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   544: invokevirtual 146	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   547: putfield 35	com/alipay/sdk/util/d:h	Ljava/lang/String;
    //   550: aload_0
    //   551: getfield 54	com/alipay/sdk/util/d:a	Ljava/lang/ref/WeakReference;
    //   554: invokevirtual 71	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   557: checkcast 82	android/app/Activity
    //   560: aload_0
    //   561: getfield 42	com/alipay/sdk/util/d:i	Landroid/content/ServiceConnection;
    //   564: invokevirtual 157	android/app/Activity:unbindService	(Landroid/content/ServiceConnection;)V
    //   567: aload_0
    //   568: aconst_null
    //   569: putfield 47	com/alipay/sdk/util/d:j	Lcom/alipay/android/app/IRemoteServiceCallback;
    //   572: aload_0
    //   573: aconst_null
    //   574: putfield 42	com/alipay/sdk/util/d:i	Landroid/content/ServiceConnection;
    //   577: aload_0
    //   578: aconst_null
    //   579: putfield 57	com/alipay/sdk/util/d:b	Lcom/alipay/android/app/IAlixPay;
    //   582: aload_0
    //   583: iconst_0
    //   584: putfield 33	com/alipay/sdk/util/d:d	Z
    //   587: aload_0
    //   588: getfield 159	com/alipay/sdk/util/d:e	Z
    //   591: ifeq +22 -> 613
    //   594: aload_0
    //   595: getfield 54	com/alipay/sdk/util/d:a	Ljava/lang/ref/WeakReference;
    //   598: invokevirtual 71	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   601: checkcast 82	android/app/Activity
    //   604: iconst_0
    //   605: invokevirtual 163	android/app/Activity:setRequestedOrientation	(I)V
    //   608: aload_0
    //   609: iconst_0
    //   610: putfield 159	com/alipay/sdk/util/d:e	Z
    //   613: ldc 165
    //   615: areturn
    //   616: astore 7
    //   618: aload_0
    //   619: getfield 54	com/alipay/sdk/util/d:a	Ljava/lang/ref/WeakReference;
    //   622: invokevirtual 71	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   625: checkcast 82	android/app/Activity
    //   628: aload_0
    //   629: getfield 42	com/alipay/sdk/util/d:i	Landroid/content/ServiceConnection;
    //   632: invokevirtual 157	android/app/Activity:unbindService	(Landroid/content/ServiceConnection;)V
    //   635: aload_0
    //   636: aconst_null
    //   637: putfield 47	com/alipay/sdk/util/d:j	Lcom/alipay/android/app/IRemoteServiceCallback;
    //   640: aload_0
    //   641: aconst_null
    //   642: putfield 42	com/alipay/sdk/util/d:i	Landroid/content/ServiceConnection;
    //   645: aload_0
    //   646: aconst_null
    //   647: putfield 57	com/alipay/sdk/util/d:b	Lcom/alipay/android/app/IAlixPay;
    //   650: aload_0
    //   651: iconst_0
    //   652: putfield 33	com/alipay/sdk/util/d:d	Z
    //   655: aload_0
    //   656: getfield 159	com/alipay/sdk/util/d:e	Z
    //   659: ifeq +22 -> 681
    //   662: aload_0
    //   663: getfield 54	com/alipay/sdk/util/d:a	Ljava/lang/ref/WeakReference;
    //   666: invokevirtual 71	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   669: checkcast 82	android/app/Activity
    //   672: iconst_0
    //   673: invokevirtual 163	android/app/Activity:setRequestedOrientation	(I)V
    //   676: aload_0
    //   677: iconst_0
    //   678: putfield 159	com/alipay/sdk/util/d:e	Z
    //   681: aload 7
    //   683: athrow
    //   684: astore 8
    //   686: goto -51 -> 635
    //   689: astore 10
    //   691: goto -124 -> 567
    //   694: astore 12
    //   696: goto -231 -> 465
    //   699: astore 15
    //   701: goto -383 -> 318
    //   704: astore 16
    //   706: goto -616 -> 90
    //
    // Exception table:
    //   from	to	target	type
    //   69	75	367	finally
    //   80	90	367	finally
    //   90	93	367	finally
    //   93	240	514	java/lang/Exception
    //   240	282	514	java/lang/Exception
    //   282	301	514	java/lang/Exception
    //   375	410	514	java/lang/Exception
    //   410	448	514	java/lang/Exception
    //   93	240	616	finally
    //   240	282	616	finally
    //   282	301	616	finally
    //   375	410	616	finally
    //   410	448	616	finally
    //   516	550	616	finally
    //   618	635	684	java/lang/Throwable
    //   550	567	689	java/lang/Throwable
    //   448	465	694	java/lang/Throwable
    //   301	318	699	java/lang/Throwable
    //   80	90	704	java/lang/InterruptedException
  }

  public final String a(String paramString)
  {
    Iterator localIterator = ((Context)this.a.get()).getPackageManager().getInstalledPackages(64).iterator();
    h localh2;
    while (localIterator.hasNext())
    {
      PackageInfo localPackageInfo = (PackageInfo)localIterator.next();
      if (!localPackageInfo.packageName.equals("com.eg.android.AlipayGphone"))
        continue;
      localh2 = new h();
      localh2.a = localPackageInfo.signatures[0].toByteArray();
      localh2.b = localPackageInfo.versionCode;
    }
    for (h localh1 = localh2; localh1 != null; localh1 = null)
    {
      String str1 = android.support.v7.app.f.a(localh1.a);
      if ((str1 == null) || (TextUtils.equals(str1, "b6cbad6cbd5ed0d209afc69ad3b7a617efaae9b3c47eabe0be42d924936fa78c8001b1fd74b079e5ff9690061dacfa4768e981a526b9ca77156ca36251cf2f906d105481374998a7e6e6e18f75ca98b8ed2eaf86ff402c874cca0a263053f22237858206867d210020daa38c48b20cc9dfd82b44a51aeb5db459b22794e2d649")))
        break;
      String str2 = "fake#" + a.a((Context)this.a.get()).b();
      this.a.get();
      b.a(str2);
      return "failed";
    }
    if (localh1.b > 78);
    try
    {
      Intent localIntent2 = new Intent();
      localIntent2.setClassName("com.eg.android.AlipayGphone", "com.alipay.android.app.TransProcessPayActivity");
      ((Activity)this.a.get()).startActivity(localIntent2);
      Thread.sleep(150L);
      label227: Intent localIntent1 = new Intent();
      localIntent1.setPackage("com.eg.android.AlipayGphone");
      localIntent1.setAction("com.eg.android.AlipayGphone.IAlixPay");
      return a(paramString, localIntent1);
    }
    catch (Throwable localThrowable)
    {
      break label227;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.util.d
 * JD-Core Version:    0.6.0
 */