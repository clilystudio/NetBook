package com.xiaomi.push.service;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.app.Notification;
import android.app.Notification.BigTextStyle;
import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.xiaomi.a.a.a.b;
import com.xiaomi.xmpush.thrift.c;
import com.xiaomi.xmpush.thrift.h;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Map;

public final class N
{
  private static long a = 0L;

  private static int a(Context paramContext, String paramString1, String paramString2)
  {
    if (paramString1.equals(paramContext.getPackageName()))
      return paramContext.getResources().getIdentifier(paramString2, "drawable", paramString1);
    return 0;
  }

  private static Notification a(Notification paramNotification, String paramString)
  {
    try
    {
      Field localField = Notification.class.getDeclaredField("extraNotification");
      localField.setAccessible(true);
      Object localObject = localField.get(paramNotification);
      Method localMethod = localObject.getClass().getDeclaredMethod("setTargetPkg", new Class[] { CharSequence.class });
      localMethod.setAccessible(true);
      localMethod.invoke(localObject, new Object[] { paramString });
      return paramNotification;
    }
    catch (Exception localException)
    {
      b.a(localException);
    }
    return paramNotification;
  }

  private static PendingIntent a(Context paramContext, h paramh, c paramc, byte[] paramArrayOfByte)
  {
    if ((paramc != null) && (!TextUtils.isEmpty(paramc.g)))
    {
      Intent localIntent2 = new Intent("android.intent.action.VIEW");
      localIntent2.setData(Uri.parse(paramc.g));
      localIntent2.addFlags(268435456);
      return PendingIntent.getActivity(paramContext, 0, localIntent2, 134217728);
    }
    Intent localIntent1 = new Intent("com.xiaomi.mipush.RECEIVE_MESSAGE");
    localIntent1.setComponent(new ComponentName(paramh.f, "com.xiaomi.mipush.sdk.PushMessageHandler"));
    localIntent1.putExtra("mipush_payload", paramArrayOfByte);
    localIntent1.putExtra("mipush_notified", true);
    localIntent1.addCategory(String.valueOf(paramc.p()));
    return PendingIntent.getService(paramContext, 0, localIntent1, 134217728);
  }

  static String a(h paramh)
  {
    if ("com.xiaomi.xmsf".equals(paramh.f))
    {
      c localc = paramh.m();
      if ((localc != null) && (localc.r() != null))
      {
        String str = (String)localc.r().get("miui_package_name");
        if (!TextUtils.isEmpty(str))
          return str;
      }
    }
    return paramh.f;
  }

  public static void a(Context paramContext, h paramh, byte[] paramArrayOfByte)
  {
    NotificationManager localNotificationManager = (NotificationManager)paramContext.getSystemService("notification");
    c localc1 = paramh.m();
    Notification.Builder localBuilder;
    Drawable localDrawable;
    Object localObject2;
    if (Build.VERSION.SDK_INT >= 11)
    {
      c localc2 = paramh.m();
      localBuilder = new Notification.Builder(paramContext);
      String[] arrayOfString2 = a(paramContext, localc2);
      localBuilder.setContentTitle(arrayOfString2[0]);
      localBuilder.setContentText(arrayOfString2[1]);
      if (Build.VERSION.SDK_INT >= 16)
        localBuilder.setStyle(new Notification.BigTextStyle().bigText(arrayOfString2[1]));
      localBuilder.setWhen(System.currentTimeMillis());
      localBuilder.setContentIntent(a(paramContext, paramh, localc2, paramArrayOfByte));
      int i = a(paramContext, a(paramh), "mipush_notification");
      int j = a(paramContext, a(paramh), "mipush_small_notification");
      if ((i > 0) && (j > 0))
      {
        localDrawable = paramContext.getResources().getDrawable(i);
        if ((localDrawable instanceof BitmapDrawable))
        {
          localObject2 = ((BitmapDrawable)localDrawable).getBitmap();
          localBuilder.setLargeIcon((Bitmap)localObject2);
          localBuilder.setSmallIcon(j);
          label198: localBuilder.setAutoCancel(true);
          long l2 = System.currentTimeMillis();
          if (l2 - a > 10000L)
          {
            a = l2;
            localBuilder.setDefaults(localc2.f);
            Map localMap2 = localc2.r();
            if ((localMap2 != null) && ((0x1 & localc2.f) != 0))
            {
              String str2 = (String)localMap2.get("sound_uri");
              if ((!TextUtils.isEmpty(str2)) && (str2.startsWith("android.resource://" + a(paramh))))
              {
                localBuilder.setDefaults(0x1 ^ localc2.f);
                localBuilder.setSound(Uri.parse(str2));
              }
            }
          }
        }
      }
    }
    label403: label475: Notification localNotification;
    for (Object localObject1 = localBuilder.getNotification(); ; localObject1 = localNotification)
    {
      if ("com.xiaomi.xmsf".equals(paramContext.getPackageName()))
        a((Notification)localObject1, a(paramh));
      localNotificationManager.notify(localc1.p() + 10 * (a(paramh).hashCode() / 10), (Notification)localObject1);
      return;
      int k = localDrawable.getIntrinsicWidth();
      int m;
      if (k > 0)
      {
        m = localDrawable.getIntrinsicHeight();
        if (m <= 0)
          break label475;
      }
      while (true)
      {
        Bitmap localBitmap = Bitmap.createBitmap(k, m, Bitmap.Config.ARGB_8888);
        Canvas localCanvas = new Canvas(localBitmap);
        localDrawable.setBounds(0, 0, localCanvas.getWidth(), localCanvas.getHeight());
        localDrawable.draw(localCanvas);
        localObject2 = localBitmap;
        break;
        k = 1;
        break label403;
        m = 1;
      }
      localBuilder.setSmallIcon(c(paramContext, a(paramh)));
      break label198;
      localNotification = new Notification(c(paramContext, a(paramh)), null, System.currentTimeMillis());
      String[] arrayOfString1 = a(paramContext, localc1);
      localNotification.setLatestEventInfo(paramContext, arrayOfString1[0], arrayOfString1[1], a(paramContext, paramh, localc1, paramArrayOfByte));
      long l1 = System.currentTimeMillis();
      if (l1 - a > 10000L)
      {
        a = l1;
        localNotification.defaults = localc1.f;
        Map localMap1 = localc1.r();
        if ((localMap1 != null) && ((0x1 & localc1.f) != 0))
        {
          String str1 = (String)localMap1.get("sound_uri");
          if ((!TextUtils.isEmpty(str1)) && (str1.startsWith("android.resource://" + a(paramh))))
          {
            localNotification.defaults = (0x1 ^ localc1.f);
            localNotification.sound = Uri.parse(str1);
          }
        }
      }
      localNotification.flags = (0x10 | localNotification.flags);
    }
  }

  public static void a(Context paramContext, String paramString, int paramInt)
  {
    ((NotificationManager)paramContext.getSystemService("notification")).cancel(paramInt + 10 * (paramString.hashCode() / 10));
  }

  public static boolean a(Context paramContext, String paramString)
  {
    ActivityManager localActivityManager = (ActivityManager)paramContext.getSystemService("activity");
    List localList;
    try
    {
      localList = localActivityManager.getRunningTasks(1);
      if ((localList == null) || (localList.isEmpty()))
        return false;
    }
    catch (Exception localException)
    {
      b.a(localException);
      return false;
    }
    return ((ActivityManager.RunningTaskInfo)localList.get(0)).topActivity.getPackageName().equals(paramString);
  }

  private static String[] a(Context paramContext, c paramc)
  {
    Object localObject1 = paramc.g();
    Object localObject2 = paramc.i();
    Map localMap = paramc.r();
    int j;
    Object localObject3;
    if (localMap != null)
    {
      int i = paramContext.getResources().getDisplayMetrics().widthPixels;
      float f = paramContext.getResources().getDisplayMetrics().density;
      j = Float.valueOf(0.5F + i / f).intValue();
      if (j > 320)
        break label136;
      String str3 = (String)localMap.get("title_short");
      if (!TextUtils.isEmpty(str3))
        localObject1 = str3;
      localObject3 = (String)localMap.get("description_short");
      if (TextUtils.isEmpty((CharSequence)localObject3))
        break label199;
    }
    while (true)
    {
      localObject2 = localObject3;
      while (true)
      {
        return new String[] { localObject1, localObject2 };
        label136: if (j <= 360)
          continue;
        String str1 = (String)localMap.get("title_long");
        if (!TextUtils.isEmpty(str1))
          localObject1 = str1;
        String str2 = (String)localMap.get("description_long");
        if (TextUtils.isEmpty(str2))
          continue;
        localObject2 = str2;
      }
      label199: localObject3 = localObject2;
    }
  }

  public static void b(Context paramContext, String paramString)
  {
    NotificationManager localNotificationManager = (NotificationManager)paramContext.getSystemService("notification");
    for (int i = 0; i <= 4; i++)
      localNotificationManager.cancel(i + 10 * (paramString.hashCode() / 10));
  }

  private static int c(Context paramContext, String paramString)
  {
    int i = a(paramContext, paramString, "mipush_notification");
    int j = a(paramContext, paramString, "mipush_small_notification");
    if (i > 0);
    while (true)
    {
      if ((i == 0) && (Build.VERSION.SDK_INT >= 9))
        i = paramContext.getApplicationInfo().logo;
      return i;
      if (j > 0)
      {
        i = j;
        continue;
      }
      i = paramContext.getApplicationInfo().icon;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.N
 * JD-Core Version:    0.6.0
 */