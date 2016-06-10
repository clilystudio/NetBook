package com.clilystudio.netbook.umeng.update.net;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Messenger;
import android.support.design.widget.am;
import android.util.SparseArray;
import android.widget.RemoteViews;
import com.clilystudio.netbook.umeng.update.util.a;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import u.a.c;

class p
{
  private static final String a = p.class.getName();
  private SparseArray<s> b;
  private Map<k, Messenger> c;
  private v d;

  public p(SparseArray<s> paramSparseArray, Map<k, Messenger> paramMap, v paramv)
  {
    this.b = paramSparseArray;
    this.c = paramMap;
    this.d = paramv;
  }

  static int a(k paramk)
  {
    return Math.abs((int)((paramk.b.hashCode() >> 2) + (paramk.c.hashCode() >> 3) + System.currentTimeMillis()));
  }

  private static void a(Context paramContext, r paramr, int paramInt1, int paramInt2)
  {
    PendingIntent localPendingIntent1;
    PendingIntent localPendingIntent2;
    if (Build.VERSION.SDK_INT >= 16)
    {
      localPendingIntent1 = b.a(paramContext, b.b(paramInt1, "continue"));
      localPendingIntent2 = b.a(paramContext, b.b(paramInt1, "cancel"));
      switch (paramInt2)
      {
      default:
      case 1:
      case 2:
      }
    }
    while (true)
    {
      paramr.a(17301560, paramContext.getResources().getString(c.a(paramContext).d("umeng_common_action_cancel")), localPendingIntent2);
      return;
      paramr.a(17301540, paramContext.getResources().getString(com.alipay.sdk.b.b.g(paramContext)), localPendingIntent1);
      continue;
      paramr.a(17301539, paramContext.getResources().getString(com.alipay.sdk.b.b.f(paramContext)), localPendingIntent1);
    }
  }

  static boolean a(Context paramContext)
  {
    List localList = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses();
    if (localList == null)
      return false;
    String str = paramContext.getPackageName();
    Iterator localIterator = localList.iterator();
    ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo;
    do
    {
      if (!localIterator.hasNext())
        return false;
      localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)localIterator.next();
    }
    while ((localRunningAppProcessInfo.importance != 100) || (!localRunningAppProcessInfo.processName.equals(str)));
    return true;
  }

  final r a(Context paramContext, k paramk, int paramInt1, int paramInt2)
  {
    Context localContext = paramContext.getApplicationContext();
    r localr = new r(localContext);
    PendingIntent localPendingIntent1 = PendingIntent.getActivity(localContext, 0, new Intent(), 134217728);
    localr.d(localContext.getString(c.a(localContext).d("umeng_common_start_download_notification"))).a(17301633).a(localPendingIntent1).a(System.currentTimeMillis());
    RemoteViews localRemoteViews = new RemoteViews(localContext.getPackageName(), android.support.v7.app.f.i(localContext));
    if (Build.VERSION.SDK_INT >= 14)
    {
      int i1 = localContext.getResources().getDimensionPixelSize(17104901);
      int i2 = localContext.getResources().getDimensionPixelSize(17104902);
      localRemoteViews.setInt(am.v(localContext), "setWidth", i1);
      localRemoteViews.setInt(am.v(localContext), "setHeight", i2);
    }
    while (true)
    {
      try
      {
        Field localField4 = Class.forName("com.android.internal.R$drawable").getDeclaredField("notify_panel_notification_icon_bg_tile");
        localField4.setAccessible(true);
        int i3 = localField4.getInt(null);
        localRemoteViews.setInt(am.v(localContext), "setBackgroundResource", i3);
        localr.a(localRemoteViews);
        localr.b(localContext.getResources().getString(c.a(localContext).d("umeng_common_download_notification_prefix")) + paramk.b).a(paramInt2 + "%").a(100, paramInt2, false);
        if (!paramk.g)
          break;
        localr.b(localRemoteViews);
        localr.e();
        PendingIntent localPendingIntent2 = b.a(localContext, b.b(paramInt1, "continue"));
        PendingIntent localPendingIntent3 = b.a(localContext, b.b(paramInt1, "cancel"));
        a(localContext, localr, paramInt1, 2);
        localr.a(localPendingIntent2, localPendingIntent3).c().a(true).b(false);
        return localr;
      }
      catch (Exception localException3)
      {
        u.a.b.a(a, "No notification icon background found:", localException3);
        continue;
      }
      try
      {
        Field localField3 = Class.forName("com.android.internal.R$drawable").getDeclaredField("status_bar_notification_icon_bg");
        localField3.setAccessible(true);
        int n = localField3.getInt(null);
        localRemoteViews.setInt(am.v(localContext), "setBackgroundResource", n);
      }
      catch (Exception localException1)
      {
        try
        {
          Class localClass = Class.forName("com.android.internal.R$dimen");
          Field localField1 = localClass.getDeclaredField("status_bar_edge_ignore");
          localField1.setAccessible(true);
          int i = localField1.getInt(null);
          int j = 0 + localContext.getResources().getDimensionPixelSize(i);
          Field localField2 = localClass.getDeclaredField("status_bar_height");
          localField2.setAccessible(true);
          int k = localField2.getInt(null);
          int m = j + localContext.getResources().getDimensionPixelSize(k) + localContext.getResources().getDimensionPixelSize(k);
          localRemoteViews.setInt(am.v(localContext), "setWidth", m);
        }
        catch (Exception localException2)
        {
          u.a.b.a(a, "No notification size found:", localException2);
        }
      }
    }
    localr.a().a(true).b(false);
    return localr;
  }

  final void a(Context paramContext, int paramInt)
  {
    NotificationManager localNotificationManager = (NotificationManager)paramContext.getApplicationContext().getSystemService("notification");
    s locals = (s)this.b.get(paramInt);
    if (locals != null)
    {
      u.a.b.c(a, "download service clear cache " + locals.d.b);
      if (locals.a != null)
        locals.a.a(2);
      localNotificationManager.cancel(locals.c);
      if (this.c.containsKey(locals.d))
        this.c.remove(locals.d);
      SparseArray localSparseArray = this.b;
      if (localSparseArray.indexOfKey(locals.c) >= 0)
        localSparseArray.remove(locals.c);
      this.d.b(paramInt);
    }
  }

  final void a(k paramk, long paramLong1, long paramLong2, long paramLong3)
  {
    if (paramk.f != null)
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("dsize", String.valueOf(paramLong1));
      localHashMap.put("dtime", u.a.g.a().split(" ")[1]);
      boolean bool = paramLong2 < 0L;
      float f = 0.0F;
      if (bool)
        f = (float)paramLong1 / (float)paramLong2;
      localHashMap.put("dpcent", String.valueOf((int)(f * 100.0F)));
      localHashMap.put("ptimes", String.valueOf(paramLong3));
      a(localHashMap, false, paramk.f);
    }
  }

  final void a(Map<String, String> paramMap, boolean paramBoolean, String[] paramArrayOfString)
  {
    new Thread(new q(this, paramArrayOfString, paramBoolean, paramMap)).start();
  }

  // ERROR //
  final boolean a(DownloadingService paramDownloadingService, Intent paramIntent)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 432	com/umeng/update/net/DownloadingService:getApplicationContext	()Landroid/content/Context;
    //   4: astore 4
    //   6: aload_2
    //   7: invokevirtual 436	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   10: ldc_w 438
    //   13: invokevirtual 443	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   16: ldc_w 445
    //   19: invokevirtual 405	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   22: astore 5
    //   24: aload 5
    //   26: iconst_0
    //   27: aaload
    //   28: invokestatic 450	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   31: istore 6
    //   33: aload 5
    //   35: iconst_1
    //   36: aaload
    //   37: invokevirtual 453	java/lang/String:trim	()Ljava/lang/String;
    //   40: astore 7
    //   42: iload 6
    //   44: ifeq +242 -> 286
    //   47: aload 7
    //   49: invokestatic 459	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   52: ifne +234 -> 286
    //   55: aload_0
    //   56: getfield 30	com/umeng/update/net/p:b	Landroid/util/SparseArray;
    //   59: iload 6
    //   61: invokevirtual 371	android/util/SparseArray:indexOfKey	(I)I
    //   64: iflt +222 -> 286
    //   67: aload_0
    //   68: getfield 30	com/umeng/update/net/p:b	Landroid/util/SparseArray;
    //   71: iload 6
    //   73: invokevirtual 337	android/util/SparseArray:get	(I)Ljava/lang/Object;
    //   76: checkcast 339	com/umeng/update/net/s
    //   79: astore 8
    //   81: aload 8
    //   83: getfield 350	com/umeng/update/net/s:a	Lcom/umeng/update/net/f;
    //   86: astore 9
    //   88: ldc 69
    //   90: aload 7
    //   92: invokevirtual 162	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   95: ifeq +429 -> 524
    //   98: aload 9
    //   100: ifnonnull +188 -> 288
    //   103: getstatic 24	com/umeng/update/net/p:a	Ljava/lang/String;
    //   106: ldc_w 461
    //   109: invokestatic 347	u/a/b:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   112: aload 4
    //   114: ldc_w 463
    //   117: invokestatic 468	u/a/a:a	(Landroid/content/Context;Ljava/lang/String;)Z
    //   120: ifeq +38 -> 158
    //   123: aload 4
    //   125: invokestatic 470	u/a/a:d	(Landroid/content/Context;)Z
    //   128: ifne +30 -> 158
    //   131: aload 4
    //   133: aload 4
    //   135: invokevirtual 86	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   138: aload 4
    //   140: invokevirtual 169	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   143: invokestatic 472	com/alipay/sdk/b/b:d	(Landroid/content/Context;)I
    //   146: invokevirtual 102	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   149: iconst_1
    //   150: invokestatic 478	android/widget/Toast:makeText	(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    //   153: invokevirtual 481	android/widget/Toast:show	()V
    //   156: iconst_0
    //   157: ireturn
    //   158: aload_1
    //   159: invokevirtual 485	java/lang/Object:getClass	()Ljava/lang/Class;
    //   162: pop
    //   163: new 352	com/umeng/update/net/f
    //   166: dup
    //   167: aload_1
    //   168: aload 4
    //   170: aload 8
    //   172: getfield 344	com/umeng/update/net/s:d	Lcom/umeng/update/net/k;
    //   175: iload 6
    //   177: iconst_0
    //   178: aload_1
    //   179: getfield 488	com/umeng/update/net/DownloadingService:a	Lcom/umeng/update/net/e;
    //   182: invokespecial 491	com/umeng/update/net/f:<init>	(Lcom/umeng/update/net/DownloadingService;Landroid/content/Context;Lcom/umeng/update/net/k;IILcom/umeng/update/net/e;)V
    //   185: astore 11
    //   187: aload 8
    //   189: aload 11
    //   191: putfield 350	com/umeng/update/net/s:a	Lcom/umeng/update/net/f;
    //   194: aload 11
    //   196: invokevirtual 492	com/umeng/update/net/f:start	()V
    //   199: invokestatic 498	android/os/Message:obtain	()Landroid/os/Message;
    //   202: astore 12
    //   204: aload 12
    //   206: iconst_2
    //   207: putfield 501	android/os/Message:what	I
    //   210: aload 12
    //   212: bipush 7
    //   214: putfield 504	android/os/Message:arg1	I
    //   217: aload 12
    //   219: iload 6
    //   221: putfield 507	android/os/Message:arg2	I
    //   224: aload_0
    //   225: getfield 32	com/umeng/update/net/p:c	Ljava/util/Map;
    //   228: aload 8
    //   230: getfield 344	com/umeng/update/net/s:d	Lcom/umeng/update/net/k;
    //   233: invokeinterface 509 2 0
    //   238: ifnull +25 -> 263
    //   241: aload_0
    //   242: getfield 32	com/umeng/update/net/p:c	Ljava/util/Map;
    //   245: aload 8
    //   247: getfield 344	com/umeng/update/net/s:d	Lcom/umeng/update/net/k;
    //   250: invokeinterface 509 2 0
    //   255: checkcast 511	android/os/Messenger
    //   258: aload 12
    //   260: invokevirtual 515	android/os/Messenger:send	(Landroid/os/Message;)V
    //   263: iconst_1
    //   264: ireturn
    //   265: astore 13
    //   267: getstatic 24	com/umeng/update/net/p:a	Ljava/lang/String;
    //   270: ldc_w 517
    //   273: aload 13
    //   275: invokestatic 519	u/a/b:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    //   278: goto -15 -> 263
    //   281: astore_3
    //   282: aload_3
    //   283: invokevirtual 522	java/lang/Exception:printStackTrace	()V
    //   286: iconst_0
    //   287: ireturn
    //   288: getstatic 24	com/umeng/update/net/p:a	Ljava/lang/String;
    //   291: ldc_w 461
    //   294: invokestatic 347	u/a/b:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   297: aload 9
    //   299: iconst_1
    //   300: invokevirtual 355	com/umeng/update/net/f:a	(I)V
    //   303: aload 8
    //   305: aconst_null
    //   306: putfield 350	com/umeng/update/net/s:a	Lcom/umeng/update/net/f;
    //   309: aload 4
    //   311: invokevirtual 169	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   314: astore 14
    //   316: aload 14
    //   318: ldc_w 329
    //   321: invokevirtual 125	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   324: checkcast 331	android/app/NotificationManager
    //   327: astore 15
    //   329: aload_0
    //   330: getfield 30	com/umeng/update/net/p:b	Landroid/util/SparseArray;
    //   333: iload 6
    //   335: invokevirtual 337	android/util/SparseArray:get	(I)Ljava/lang/Object;
    //   338: checkcast 339	com/umeng/update/net/s
    //   341: astore 16
    //   343: aload 16
    //   345: getfield 525	com/umeng/update/net/s:b	Lcom/umeng/update/net/r;
    //   348: invokevirtual 294	com/umeng/update/net/r:e	()V
    //   351: aload 14
    //   353: aload 16
    //   355: getfield 525	com/umeng/update/net/s:b	Lcom/umeng/update/net/r;
    //   358: iload 6
    //   360: iconst_1
    //   361: invokestatic 296	com/umeng/update/net/p:a	(Landroid/content/Context;Lcom/umeng/update/net/r;II)V
    //   364: aload 16
    //   366: getfield 525	com/umeng/update/net/s:b	Lcom/umeng/update/net/r;
    //   369: new 257	java/lang/StringBuilder
    //   372: dup
    //   373: aload 14
    //   375: invokevirtual 86	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   378: aload 14
    //   380: invokestatic 91	u/a/c:a	(Landroid/content/Context;)Lu/a/c;
    //   383: ldc_w 527
    //   386: invokevirtual 96	u/a/c:d	(Ljava/lang/String;)I
    //   389: invokevirtual 102	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   392: invokestatic 263	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   395: invokespecial 266	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   398: aload 16
    //   400: getfield 344	com/umeng/update/net/s:d	Lcom/umeng/update/net/k;
    //   403: getfield 39	com/umeng/update/net/k:b	Ljava/lang/String;
    //   406: invokevirtual 270	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   409: invokevirtual 273	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   412: invokevirtual 276	com/umeng/update/net/r:b	(Ljava/lang/CharSequence;)Lcom/umeng/update/net/r;
    //   415: invokevirtual 529	com/umeng/update/net/r:b	()Lcom/umeng/update/net/r;
    //   418: iconst_0
    //   419: invokevirtual 305	com/umeng/update/net/r:a	(Z)Lcom/umeng/update/util/a;
    //   422: iconst_1
    //   423: invokevirtual 307	com/umeng/update/util/a:b	(Z)Lcom/umeng/update/util/a;
    //   426: pop
    //   427: aload 15
    //   429: iload 6
    //   431: aload 16
    //   433: getfield 525	com/umeng/update/net/s:b	Lcom/umeng/update/net/r;
    //   436: invokevirtual 532	com/umeng/update/net/r:d	()Landroid/app/Notification;
    //   439: invokevirtual 536	android/app/NotificationManager:notify	(ILandroid/app/Notification;)V
    //   442: invokestatic 498	android/os/Message:obtain	()Landroid/os/Message;
    //   445: astore 18
    //   447: aload 18
    //   449: iconst_2
    //   450: putfield 501	android/os/Message:what	I
    //   453: aload 18
    //   455: bipush 6
    //   457: putfield 504	android/os/Message:arg1	I
    //   460: aload 18
    //   462: iload 6
    //   464: putfield 507	android/os/Message:arg2	I
    //   467: aload_0
    //   468: getfield 32	com/umeng/update/net/p:c	Ljava/util/Map;
    //   471: aload 8
    //   473: getfield 344	com/umeng/update/net/s:d	Lcom/umeng/update/net/k;
    //   476: invokeinterface 509 2 0
    //   481: ifnull +25 -> 506
    //   484: aload_0
    //   485: getfield 32	com/umeng/update/net/p:c	Ljava/util/Map;
    //   488: aload 8
    //   490: getfield 344	com/umeng/update/net/s:d	Lcom/umeng/update/net/k;
    //   493: invokeinterface 509 2 0
    //   498: checkcast 511	android/os/Messenger
    //   501: aload 18
    //   503: invokevirtual 515	android/os/Messenger:send	(Landroid/os/Message;)V
    //   506: iconst_1
    //   507: ireturn
    //   508: astore 19
    //   510: getstatic 24	com/umeng/update/net/p:a	Ljava/lang/String;
    //   513: ldc_w 517
    //   516: aload 19
    //   518: invokestatic 519	u/a/b:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    //   521: goto -15 -> 506
    //   524: ldc 79
    //   526: aload 7
    //   528: invokevirtual 162	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   531: ifeq -245 -> 286
    //   534: getstatic 24	com/umeng/update/net/p:a	Ljava/lang/String;
    //   537: ldc_w 538
    //   540: invokestatic 347	u/a/b:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   543: aload 9
    //   545: ifnull +82 -> 627
    //   548: aload 9
    //   550: iconst_2
    //   551: invokevirtual 355	com/umeng/update/net/f:a	(I)V
    //   554: invokestatic 498	android/os/Message:obtain	()Landroid/os/Message;
    //   557: astore 32
    //   559: aload 32
    //   561: iconst_5
    //   562: putfield 501	android/os/Message:what	I
    //   565: aload 32
    //   567: iconst_5
    //   568: putfield 504	android/os/Message:arg1	I
    //   571: aload 32
    //   573: iload 6
    //   575: putfield 507	android/os/Message:arg2	I
    //   578: aload_0
    //   579: getfield 32	com/umeng/update/net/p:c	Ljava/util/Map;
    //   582: aload 8
    //   584: getfield 344	com/umeng/update/net/s:d	Lcom/umeng/update/net/k;
    //   587: invokeinterface 509 2 0
    //   592: ifnull +25 -> 617
    //   595: aload_0
    //   596: getfield 32	com/umeng/update/net/p:c	Ljava/util/Map;
    //   599: aload 8
    //   601: getfield 344	com/umeng/update/net/s:d	Lcom/umeng/update/net/k;
    //   604: invokeinterface 509 2 0
    //   609: checkcast 511	android/os/Messenger
    //   612: aload 32
    //   614: invokevirtual 515	android/os/Messenger:send	(Landroid/os/Message;)V
    //   617: aload_0
    //   618: aload 4
    //   620: iload 6
    //   622: invokevirtual 540	com/umeng/update/net/p:a	(Landroid/content/Context;I)V
    //   625: iconst_1
    //   626: ireturn
    //   627: aload 8
    //   629: getfield 543	com/umeng/update/net/s:e	[J
    //   632: iconst_0
    //   633: laload
    //   634: lstore 26
    //   636: aload 8
    //   638: getfield 543	com/umeng/update/net/s:e	[J
    //   641: iconst_1
    //   642: laload
    //   643: lstore 28
    //   645: aload 8
    //   647: getfield 543	com/umeng/update/net/s:e	[J
    //   650: iconst_2
    //   651: laload
    //   652: lstore 30
    //   654: aload_0
    //   655: aload 8
    //   657: getfield 344	com/umeng/update/net/s:d	Lcom/umeng/update/net/k;
    //   660: lload 26
    //   662: lload 28
    //   664: lload 30
    //   666: invokevirtual 545	com/umeng/update/net/p:a	(Lcom/umeng/update/net/k;JJJ)V
    //   669: goto -115 -> 554
    //   672: astore 23
    //   674: invokestatic 498	android/os/Message:obtain	()Landroid/os/Message;
    //   677: astore 24
    //   679: aload 24
    //   681: iconst_5
    //   682: putfield 501	android/os/Message:what	I
    //   685: aload 24
    //   687: iconst_5
    //   688: putfield 504	android/os/Message:arg1	I
    //   691: aload 24
    //   693: iload 6
    //   695: putfield 507	android/os/Message:arg2	I
    //   698: aload_0
    //   699: getfield 32	com/umeng/update/net/p:c	Ljava/util/Map;
    //   702: aload 8
    //   704: getfield 344	com/umeng/update/net/s:d	Lcom/umeng/update/net/k;
    //   707: invokeinterface 509 2 0
    //   712: ifnull +25 -> 737
    //   715: aload_0
    //   716: getfield 32	com/umeng/update/net/p:c	Ljava/util/Map;
    //   719: aload 8
    //   721: getfield 344	com/umeng/update/net/s:d	Lcom/umeng/update/net/k;
    //   724: invokeinterface 509 2 0
    //   729: checkcast 511	android/os/Messenger
    //   732: aload 24
    //   734: invokevirtual 515	android/os/Messenger:send	(Landroid/os/Message;)V
    //   737: aload_0
    //   738: aload 4
    //   740: iload 6
    //   742: invokevirtual 540	com/umeng/update/net/p:a	(Landroid/content/Context;I)V
    //   745: goto -120 -> 625
    //   748: astore 25
    //   750: aload_0
    //   751: aload 4
    //   753: iload 6
    //   755: invokevirtual 540	com/umeng/update/net/p:a	(Landroid/content/Context;I)V
    //   758: goto -133 -> 625
    //   761: astore 20
    //   763: invokestatic 498	android/os/Message:obtain	()Landroid/os/Message;
    //   766: astore 21
    //   768: aload 21
    //   770: iconst_5
    //   771: putfield 501	android/os/Message:what	I
    //   774: aload 21
    //   776: iconst_5
    //   777: putfield 504	android/os/Message:arg1	I
    //   780: aload 21
    //   782: iload 6
    //   784: putfield 507	android/os/Message:arg2	I
    //   787: aload_0
    //   788: getfield 32	com/umeng/update/net/p:c	Ljava/util/Map;
    //   791: aload 8
    //   793: getfield 344	com/umeng/update/net/s:d	Lcom/umeng/update/net/k;
    //   796: invokeinterface 509 2 0
    //   801: ifnull +25 -> 826
    //   804: aload_0
    //   805: getfield 32	com/umeng/update/net/p:c	Ljava/util/Map;
    //   808: aload 8
    //   810: getfield 344	com/umeng/update/net/s:d	Lcom/umeng/update/net/k;
    //   813: invokeinterface 509 2 0
    //   818: checkcast 511	android/os/Messenger
    //   821: aload 21
    //   823: invokevirtual 515	android/os/Messenger:send	(Landroid/os/Message;)V
    //   826: aload_0
    //   827: aload 4
    //   829: iload 6
    //   831: invokevirtual 540	com/umeng/update/net/p:a	(Landroid/content/Context;I)V
    //   834: aload 20
    //   836: athrow
    //   837: astore 22
    //   839: aload_0
    //   840: aload 4
    //   842: iload 6
    //   844: invokevirtual 540	com/umeng/update/net/p:a	(Landroid/content/Context;I)V
    //   847: goto -13 -> 834
    //   850: astore 33
    //   852: aload_0
    //   853: aload 4
    //   855: iload 6
    //   857: invokevirtual 540	com/umeng/update/net/p:a	(Landroid/content/Context;I)V
    //   860: goto -235 -> 625
    //
    // Exception table:
    //   from	to	target	type
    //   224	263	265	android/os/RemoteException
    //   0	42	281	java/lang/Exception
    //   47	98	281	java/lang/Exception
    //   103	156	281	java/lang/Exception
    //   158	224	281	java/lang/Exception
    //   224	263	281	java/lang/Exception
    //   267	278	281	java/lang/Exception
    //   288	467	281	java/lang/Exception
    //   467	506	281	java/lang/Exception
    //   510	521	281	java/lang/Exception
    //   524	543	281	java/lang/Exception
    //   554	578	281	java/lang/Exception
    //   578	617	281	java/lang/Exception
    //   617	625	281	java/lang/Exception
    //   674	698	281	java/lang/Exception
    //   698	737	281	java/lang/Exception
    //   737	745	281	java/lang/Exception
    //   750	758	281	java/lang/Exception
    //   763	787	281	java/lang/Exception
    //   787	826	281	java/lang/Exception
    //   826	834	281	java/lang/Exception
    //   834	837	281	java/lang/Exception
    //   839	847	281	java/lang/Exception
    //   852	860	281	java/lang/Exception
    //   467	506	508	android/os/RemoteException
    //   548	554	672	java/lang/Exception
    //   627	669	672	java/lang/Exception
    //   698	737	748	android/os/RemoteException
    //   737	745	748	android/os/RemoteException
    //   548	554	761	finally
    //   627	669	761	finally
    //   787	826	837	android/os/RemoteException
    //   826	834	837	android/os/RemoteException
    //   578	617	850	android/os/RemoteException
    //   617	625	850	android/os/RemoteException
  }

  final boolean a(k paramk, boolean paramBoolean, Messenger paramMessenger)
  {
    int i;
    Iterator localIterator2;
    if (paramBoolean)
    {
      i = new Random().nextInt(1000);
      if (this.c == null)
        break label128;
      localIterator2 = this.c.keySet().iterator();
      if (localIterator2.hasNext())
        break label61;
    }
    while (true)
    {
      if (this.c != null)
        break label161;
      return false;
      label61: k localk2 = (k)localIterator2.next();
      u.a.b.c(a, "_" + i + " downling  " + localk2.b + "   " + localk2.c);
      break;
      label128: u.a.b.c(a, "_" + i + "downling  null");
    }
    label161: Iterator localIterator1 = this.c.keySet().iterator();
    k localk1;
    do
    {
      if (!localIterator1.hasNext())
        return false;
      localk1 = (k)localIterator1.next();
      if ((paramk.e == null) || (!paramk.e.equals(localk1.e)))
        continue;
      this.c.put(localk1, paramMessenger);
      return true;
    }
    while (!localk1.c.equals(paramk.c));
    this.c.put(localk1, paramMessenger);
    return true;
  }

  final int b(k paramk)
  {
    for (int i = 0; ; i++)
    {
      if (i >= this.b.size())
        return -1;
      int j = this.b.keyAt(i);
      if ((paramk.e != null) && (paramk.e.equals(((s)this.b.get(j)).d.e)))
        return ((s)this.b.get(j)).c;
      if (((s)this.b.get(j)).d.c.equals(paramk.c))
        return ((s)this.b.get(j)).c;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.umeng.update.net.p
 * JD-Core Version:    0.6.0
 */