package com.d.a.c;

import android.content.Context;
import android.provider.Settings.System;
import android.support.v7.app.k;
import com.alipay.sdk.b.b;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public final class d
{
  private static final Object b = new Object();
  private static d c = null;
  private static final String j = ".UTSystemConfig" + File.separator + "Global";
  private Context a = null;
  private String d = null;
  private e e = null;
  private String f = "xx_utdid_key";
  private String g = "xx_utdid_domain";
  private com.d.a.b.a.d h = null;
  private com.d.a.b.a.d i = null;
  private Pattern k = Pattern.compile("[^0-9a-zA-Z=/+]+");

  private d(Context paramContext)
  {
    this.a = paramContext;
    this.i = new com.d.a.b.a.d(paramContext, j, "Alvin2");
    this.h = new com.d.a.b.a.d(paramContext, ".DataStorage", "ContextData");
    this.e = new e();
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(k.b(this.f));
    this.f = String.format("K_%d", arrayOfObject1);
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = Integer.valueOf(k.b(this.g));
    this.g = String.format("D_%d", arrayOfObject2);
  }

  public static d a(Context paramContext)
  {
    if ((paramContext != null) && (c == null));
    synchronized (b)
    {
      if (c == null)
      {
        d locald = new d(paramContext);
        c = locald;
        if ((locald.i != null) && (k.a(locald.i.a("UTDID2"))))
        {
          String str = locald.i.a("UTDID");
          if (!k.a(str))
            locald.a(str);
        }
      }
      return c;
    }
  }

  private void a(String paramString)
  {
    if (e(paramString))
    {
      if (paramString.endsWith("\n"))
        paramString = paramString.substring(0, -1 + paramString.length());
      if ((paramString.length() == 24) && (this.i != null))
      {
        this.i.a("UTDID2", paramString);
        this.i.a("UTDID", paramString);
        this.i.a();
      }
    }
  }

  private void b(String paramString)
  {
    if ((paramString != null) && (this.h != null) && (!paramString.equals(this.h.a(this.f))))
    {
      this.h.a(this.f, paramString);
      this.h.a();
    }
  }

  private final byte[] b()
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    int m = (int)(System.currentTimeMillis() / 1000L);
    int n = new Random().nextInt();
    byte[] arrayOfByte1 = com.arcsoft.hpay100.a.a.a(m);
    byte[] arrayOfByte2 = com.arcsoft.hpay100.a.a.a(n);
    localByteArrayOutputStream.write(arrayOfByte1, 0, 4);
    localByteArrayOutputStream.write(arrayOfByte2, 0, 4);
    localByteArrayOutputStream.write(3);
    localByteArrayOutputStream.write(0);
    try
    {
      String str2 = b.b(this.a);
      str1 = str2;
      localByteArrayOutputStream.write(com.arcsoft.hpay100.a.a.a(k.b(str1)), 0, 4);
      byte[] arrayOfByte3 = localByteArrayOutputStream.toByteArray();
      Mac localMac = Mac.getInstance("HmacSHA1");
      localMac.init(new SecretKeySpec("d6fc3a4a06adbde89223bvefedc24fecde188aaa9161".getBytes(), localMac.getAlgorithm()));
      localByteArrayOutputStream.write(com.arcsoft.hpay100.a.a.a(k.b(com.d.a.a.a.a.a(localMac.doFinal(arrayOfByte3), 2))));
      return localByteArrayOutputStream.toByteArray();
    }
    catch (Exception localException)
    {
      while (true)
        String str1 = new Random().nextInt();
    }
  }

  private void c(String paramString)
  {
    if ((this.a.checkCallingOrSelfPermission("android.permission.WRITE_SETTINGS") == 0) && (e(paramString)))
    {
      if (paramString.endsWith("\n"))
        paramString = paramString.substring(0, -1 + paramString.length());
      if ((24 == paramString.length()) && (!e(Settings.System.getString(this.a.getContentResolver(), "mqBRboGZkQPcAkyk"))))
        Settings.System.putString(this.a.getContentResolver(), "mqBRboGZkQPcAkyk", paramString);
    }
  }

  private void d(String paramString)
  {
    if ((this.a.checkCallingOrSelfPermission("android.permission.WRITE_SETTINGS") == 0) && (paramString != null) && (!paramString.equals(Settings.System.getString(this.a.getContentResolver(), "dxCRMxhQkdGePGnp"))))
      Settings.System.putString(this.a.getContentResolver(), "dxCRMxhQkdGePGnp", paramString);
  }

  private boolean e(String paramString)
  {
    int m = 0;
    if (paramString != null)
    {
      if (paramString.endsWith("\n"))
        paramString = paramString.substring(0, -1 + paramString.length());
      int n = paramString.length();
      m = 0;
      if (24 == n)
      {
        boolean bool = this.k.matcher(paramString).find();
        m = 0;
        if (!bool)
          m = 1;
      }
    }
    return m;
  }

  // ERROR //
  public final String a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 60	com/d/a/c/d:d	Ljava/lang/String;
    //   6: ifnull +12 -> 18
    //   9: aload_0
    //   10: getfield 60	com/d/a/c/d:d	Ljava/lang/String;
    //   13: astore_3
    //   14: aload_0
    //   15: monitorexit
    //   16: aload_3
    //   17: areturn
    //   18: aload_0
    //   19: getfield 58	com/d/a/c/d:a	Landroid/content/Context;
    //   22: invokevirtual 251	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   25: ldc 253
    //   27: invokestatic 259	android/provider/Settings$System:getString	(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    //   30: astore 19
    //   32: aload 19
    //   34: astore_3
    //   35: aload_0
    //   36: aload_3
    //   37: invokespecial 136	com/d/a/c/d:e	(Ljava/lang/String;)Z
    //   40: ifne -26 -> 14
    //   43: new 276	com/d/a/c/f
    //   46: dup
    //   47: invokespecial 277	com/d/a/c/f:<init>	()V
    //   50: astore 4
    //   52: aload_0
    //   53: getfield 58	com/d/a/c/d:a	Landroid/content/Context;
    //   56: invokevirtual 251	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   59: ldc_w 265
    //   62: invokestatic 259	android/provider/Settings$System:getString	(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    //   65: astore 5
    //   67: aload 5
    //   69: invokestatic 130	android/support/v7/app/k:a	(Ljava/lang/String;)Z
    //   72: ifne +446 -> 518
    //   75: aload 4
    //   77: aload 5
    //   79: invokevirtual 279	com/d/a/c/f:b	(Ljava/lang/String;)Ljava/lang/String;
    //   82: astore_3
    //   83: aload_0
    //   84: aload_3
    //   85: invokespecial 136	com/d/a/c/d:e	(Ljava/lang/String;)Z
    //   88: ifeq +28 -> 116
    //   91: aload_0
    //   92: aload_3
    //   93: invokespecial 281	com/d/a/c/d:c	(Ljava/lang/String;)V
    //   96: goto -82 -> 14
    //   99: astore_1
    //   100: aload_0
    //   101: monitorexit
    //   102: aload_1
    //   103: athrow
    //   104: astore_2
    //   105: aload_2
    //   106: invokevirtual 284	java/lang/Exception:printStackTrace	()V
    //   109: ldc_w 286
    //   112: astore_3
    //   113: goto -78 -> 35
    //   116: aload 4
    //   118: aload 5
    //   120: invokevirtual 287	com/d/a/c/f:a	(Ljava/lang/String;)Ljava/lang/String;
    //   123: astore 14
    //   125: aload_0
    //   126: aload 14
    //   128: invokespecial 136	com/d/a/c/d:e	(Ljava/lang/String;)Z
    //   131: ifeq +380 -> 511
    //   134: aload_0
    //   135: getfield 62	com/d/a/c/d:e	Lcom/d/a/c/e;
    //   138: aload 14
    //   140: invokevirtual 288	com/d/a/c/e:a	(Ljava/lang/String;)Ljava/lang/String;
    //   143: astore 18
    //   145: aload 18
    //   147: invokestatic 130	android/support/v7/app/k:a	(Ljava/lang/String;)Z
    //   150: ifne +361 -> 511
    //   153: aload_0
    //   154: aload 18
    //   156: invokespecial 290	com/d/a/c/d:d	(Ljava/lang/String;)V
    //   159: aload_0
    //   160: getfield 58	com/d/a/c/d:a	Landroid/content/Context;
    //   163: invokevirtual 251	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   166: ldc_w 265
    //   169: invokestatic 259	android/provider/Settings$System:getString	(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    //   172: astore 15
    //   174: aload_0
    //   175: getfield 62	com/d/a/c/d:e	Lcom/d/a/c/e;
    //   178: aload 15
    //   180: invokevirtual 291	com/d/a/c/e:b	(Ljava/lang/String;)Ljava/lang/String;
    //   183: astore 16
    //   185: aload_0
    //   186: aload 16
    //   188: invokespecial 136	com/d/a/c/d:e	(Ljava/lang/String;)Z
    //   191: istore 17
    //   193: iconst_0
    //   194: istore 6
    //   196: iload 17
    //   198: ifeq +37 -> 235
    //   201: aload_0
    //   202: aload 16
    //   204: putfield 60	com/d/a/c/d:d	Ljava/lang/String;
    //   207: aload_0
    //   208: aload 16
    //   210: invokespecial 134	com/d/a/c/d:a	(Ljava/lang/String;)V
    //   213: aload_0
    //   214: aload 15
    //   216: invokespecial 293	com/d/a/c/d:b	(Ljava/lang/String;)V
    //   219: aload_0
    //   220: aload_0
    //   221: getfield 60	com/d/a/c/d:d	Ljava/lang/String;
    //   224: invokespecial 281	com/d/a/c/d:c	(Ljava/lang/String;)V
    //   227: aload_0
    //   228: getfield 60	com/d/a/c/d:d	Ljava/lang/String;
    //   231: astore_3
    //   232: goto -218 -> 14
    //   235: aload_0
    //   236: getfield 74	com/d/a/c/d:i	Lcom/d/a/b/a/d;
    //   239: ifnull +285 -> 524
    //   242: aload_0
    //   243: getfield 74	com/d/a/c/d:i	Lcom/d/a/b/a/d;
    //   246: ldc 124
    //   248: invokevirtual 127	com/d/a/b/a/d:a	(Ljava/lang/String;)Ljava/lang/String;
    //   251: astore_3
    //   252: aload_3
    //   253: invokestatic 130	android/support/v7/app/k:a	(Ljava/lang/String;)Z
    //   256: ifne +268 -> 524
    //   259: aload_0
    //   260: getfield 62	com/d/a/c/d:e	Lcom/d/a/c/e;
    //   263: aload_3
    //   264: invokevirtual 288	com/d/a/c/e:a	(Ljava/lang/String;)Ljava/lang/String;
    //   267: ifnull +257 -> 524
    //   270: aload_0
    //   271: aload_3
    //   272: invokespecial 136	com/d/a/c/d:e	(Ljava/lang/String;)Z
    //   275: ifeq +43 -> 318
    //   278: aload_0
    //   279: getfield 62	com/d/a/c/d:e	Lcom/d/a/c/e;
    //   282: aload_3
    //   283: invokevirtual 288	com/d/a/c/e:a	(Ljava/lang/String;)Ljava/lang/String;
    //   286: astore 13
    //   288: iload 6
    //   290: ifeq +9 -> 299
    //   293: aload_0
    //   294: aload 13
    //   296: invokespecial 290	com/d/a/c/d:d	(Ljava/lang/String;)V
    //   299: aload_0
    //   300: aload_3
    //   301: invokespecial 281	com/d/a/c/d:c	(Ljava/lang/String;)V
    //   304: aload_0
    //   305: aload 13
    //   307: invokespecial 293	com/d/a/c/d:b	(Ljava/lang/String;)V
    //   310: aload_0
    //   311: aload_3
    //   312: putfield 60	com/d/a/c/d:d	Ljava/lang/String;
    //   315: goto -301 -> 14
    //   318: aload_0
    //   319: getfield 72	com/d/a/c/d:h	Lcom/d/a/b/a/d;
    //   322: aload_0
    //   323: getfield 66	com/d/a/c/d:f	Ljava/lang/String;
    //   326: invokevirtual 127	com/d/a/b/a/d:a	(Ljava/lang/String;)Ljava/lang/String;
    //   329: astore 7
    //   331: aload 7
    //   333: invokestatic 130	android/support/v7/app/k:a	(Ljava/lang/String;)Z
    //   336: ifne +93 -> 429
    //   339: aload 4
    //   341: aload 7
    //   343: invokevirtual 287	com/d/a/c/f:a	(Ljava/lang/String;)Ljava/lang/String;
    //   346: astore 11
    //   348: aload_0
    //   349: aload 11
    //   351: invokespecial 136	com/d/a/c/d:e	(Ljava/lang/String;)Z
    //   354: ifne +14 -> 368
    //   357: aload_0
    //   358: getfield 62	com/d/a/c/d:e	Lcom/d/a/c/e;
    //   361: aload 7
    //   363: invokevirtual 291	com/d/a/c/e:b	(Ljava/lang/String;)Ljava/lang/String;
    //   366: astore 11
    //   368: aload_0
    //   369: aload 11
    //   371: invokespecial 136	com/d/a/c/d:e	(Ljava/lang/String;)Z
    //   374: ifeq +55 -> 429
    //   377: aload_0
    //   378: getfield 62	com/d/a/c/d:e	Lcom/d/a/c/e;
    //   381: aload 11
    //   383: invokevirtual 288	com/d/a/c/e:a	(Ljava/lang/String;)Ljava/lang/String;
    //   386: astore 12
    //   388: aload 11
    //   390: invokestatic 130	android/support/v7/app/k:a	(Ljava/lang/String;)Z
    //   393: ifne +36 -> 429
    //   396: aload_0
    //   397: aload 11
    //   399: putfield 60	com/d/a/c/d:d	Ljava/lang/String;
    //   402: iload 6
    //   404: ifeq +9 -> 413
    //   407: aload_0
    //   408: aload 12
    //   410: invokespecial 290	com/d/a/c/d:d	(Ljava/lang/String;)V
    //   413: aload_0
    //   414: aload_0
    //   415: getfield 60	com/d/a/c/d:d	Ljava/lang/String;
    //   418: invokespecial 134	com/d/a/c/d:a	(Ljava/lang/String;)V
    //   421: aload_0
    //   422: getfield 60	com/d/a/c/d:d	Ljava/lang/String;
    //   425: astore_3
    //   426: goto -412 -> 14
    //   429: aload_0
    //   430: invokespecial 295	com/d/a/c/d:b	()[B
    //   433: astore 9
    //   435: aload 9
    //   437: ifnull +69 -> 506
    //   440: aload_0
    //   441: aload 9
    //   443: iconst_2
    //   444: invokestatic 233	com/d/a/a/a/a:a	([BI)Ljava/lang/String;
    //   447: putfield 60	com/d/a/c/d:d	Ljava/lang/String;
    //   450: aload_0
    //   451: aload_0
    //   452: getfield 60	com/d/a/c/d:d	Ljava/lang/String;
    //   455: invokespecial 134	com/d/a/c/d:a	(Ljava/lang/String;)V
    //   458: aload_0
    //   459: getfield 62	com/d/a/c/d:e	Lcom/d/a/c/e;
    //   462: aload 9
    //   464: invokevirtual 298	com/d/a/c/e:a	([B)Ljava/lang/String;
    //   467: astore 10
    //   469: aload 10
    //   471: ifnull +20 -> 491
    //   474: iload 6
    //   476: ifeq +9 -> 485
    //   479: aload_0
    //   480: aload 10
    //   482: invokespecial 290	com/d/a/c/d:d	(Ljava/lang/String;)V
    //   485: aload_0
    //   486: aload 10
    //   488: invokespecial 293	com/d/a/c/d:b	(Ljava/lang/String;)V
    //   491: aload_0
    //   492: getfield 60	com/d/a/c/d:d	Ljava/lang/String;
    //   495: astore_3
    //   496: goto -482 -> 14
    //   499: astore 8
    //   501: aload 8
    //   503: invokevirtual 284	java/lang/Exception:printStackTrace	()V
    //   506: aconst_null
    //   507: astore_3
    //   508: goto -494 -> 14
    //   511: aload 5
    //   513: astore 15
    //   515: goto -341 -> 174
    //   518: iconst_1
    //   519: istore 6
    //   521: goto -286 -> 235
    //   524: aconst_null
    //   525: astore_3
    //   526: goto -256 -> 270
    //
    // Exception table:
    //   from	to	target	type
    //   2	14	99	finally
    //   18	32	99	finally
    //   35	96	99	finally
    //   105	109	99	finally
    //   116	174	99	finally
    //   174	193	99	finally
    //   201	232	99	finally
    //   235	270	99	finally
    //   270	288	99	finally
    //   293	299	99	finally
    //   299	315	99	finally
    //   318	368	99	finally
    //   368	402	99	finally
    //   407	413	99	finally
    //   413	426	99	finally
    //   429	435	99	finally
    //   440	469	99	finally
    //   479	485	99	finally
    //   485	491	99	finally
    //   491	496	99	finally
    //   501	506	99	finally
    //   18	32	104	java/lang/Exception
    //   429	435	499	java/lang/Exception
    //   440	469	499	java/lang/Exception
    //   479	485	499	java/lang/Exception
    //   485	491	499	java/lang/Exception
    //   491	496	499	java/lang/Exception
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.d.a.c.d
 * JD-Core Version:    0.6.0
 */