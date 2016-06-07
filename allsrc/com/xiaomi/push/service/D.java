package com.xiaomi.push.service;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONObject;

public final class D
{
  private static C a;
  private static String b = null;
  private static String c = null;

  public static C a(Context paramContext)
  {
    monitorenter;
    while (true)
    {
      String str1;
      String str2;
      String str3;
      String str4;
      String str5;
      String str6;
      int i;
      try
      {
        if (a == null)
          continue;
        localC = a;
        return localC;
        SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("mipush_account", 0);
        str1 = localSharedPreferences.getString("uuid", null);
        str2 = localSharedPreferences.getString("token", null);
        str3 = localSharedPreferences.getString("security", null);
        str4 = localSharedPreferences.getString("app_id", null);
        str5 = localSharedPreferences.getString("app_token", null);
        str6 = localSharedPreferences.getString("package_name", null);
        String str7 = localSharedPreferences.getString("device_id", null);
        i = localSharedPreferences.getInt("env_type", 1);
        if ((TextUtils.isEmpty(str7)) || (!str7.startsWith("a-")))
          continue;
        str7 = c(paramContext);
        localSharedPreferences.edit().putString("device_id", str7).commit();
        boolean bool1 = TextUtils.isEmpty(str1);
        localC = null;
        if (bool1)
          continue;
        boolean bool2 = TextUtils.isEmpty(str2);
        localC = null;
        if (bool2)
          continue;
        boolean bool3 = TextUtils.isEmpty(str3);
        localC = null;
        if (bool3)
          continue;
        String str8 = c(paramContext);
        if ((!"com.xiaomi.xmsf".equals(paramContext.getPackageName())) && (!TextUtils.isEmpty(str8)) && (!TextUtils.isEmpty(str7)) && (!str7.equals(str8)))
        {
          com.xiaomi.a.a.a.b.c("erase the old account.");
          d(paramContext);
          localC = null;
          continue;
        }
      }
      finally
      {
        monitorexit;
      }
      C localC = new C(str1, str2, str3, str4, str5, str6, i);
      a = localC;
    }
  }

  public static C a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    monitorenter;
    while (true)
    {
      try
      {
        ArrayList localArrayList = new ArrayList();
        localArrayList.add(new BasicNameValuePair("devid", b(paramContext)));
        if (!e(paramContext))
          continue;
        String str1 = "1000271";
        if (!e(paramContext))
          continue;
        String str2 = "420100086271";
        if (!e(paramContext))
          continue;
        String str3 = "com.xiaomi.xmsf";
        localArrayList.add(new BasicNameValuePair("appid", str1));
        localArrayList.add(new BasicNameValuePair("apptoken", str2));
        String str6;
        JSONObject localJSONObject1;
        StringBuilder localStringBuilder;
        try
        {
          PackageInfo localPackageInfo2 = paramContext.getPackageManager().getPackageInfo(str3, 16384);
          localPackageInfo1 = localPackageInfo2;
          if (localPackageInfo1 == null)
            break label686;
          str4 = String.valueOf(localPackageInfo1.versionCode);
          localArrayList.add(new BasicNameValuePair("appversion", str4));
          localArrayList.add(new BasicNameValuePair("sdkversion", "2"));
          localArrayList.add(new BasicNameValuePair("packagename", str3));
          localArrayList.add(new BasicNameValuePair("model", Build.MODEL));
          localArrayList.add(new BasicNameValuePair("imei", f(paramContext)));
          localArrayList.add(new BasicNameValuePair("os", Build.VERSION.RELEASE + "-" + Build.VERSION.INCREMENTAL));
          if (!com.xiaomi.a.a.b.a.b())
            continue;
          str5 = "http://10.237.12.17:9085/pass/register";
          str6 = com.xiaomi.a.a.c.a.a(paramContext, str5, localArrayList);
          boolean bool = TextUtils.isEmpty(str6);
          localC = null;
          if (bool)
            continue;
          localJSONObject1 = new JSONObject(str6);
          if (localJSONObject1.getInt("code") != 0)
            continue;
          JSONObject localJSONObject2 = localJSONObject1.getJSONObject("data");
          String str7 = localJSONObject2.getString("ssecurity");
          String str8 = localJSONObject2.getString("token");
          String str9 = localJSONObject2.getString("userId");
          localC = new C(str9 + "@xiaomi.com/an" + com.alipay.sdk.b.b.a(6), str8, str7, str1, str2, str3, com.xiaomi.a.a.b.a.c());
          SharedPreferences.Editor localEditor = paramContext.getSharedPreferences("mipush_account", 0).edit();
          localEditor.putString("uuid", localC.a);
          localEditor.putString("security", localC.c);
          localEditor.putString("token", localC.b);
          localEditor.putString("app_id", localC.d);
          localEditor.putString("package_name", localC.f);
          localEditor.putString("app_token", localC.e);
          localEditor.putString("device_id", c(paramContext));
          localEditor.putInt("env_type", localC.g);
          localEditor.commit();
          a = localC;
          monitorexit;
          return localC;
          str1 = paramString2;
          continue;
          str2 = paramString3;
          continue;
          str3 = paramString1;
        }
        catch (Exception localException)
        {
          com.xiaomi.a.a.a.b.a(localException);
          PackageInfo localPackageInfo1 = null;
          continue;
          localStringBuilder = new StringBuilder("https://");
          if (!com.xiaomi.a.a.b.a.a())
            break label694;
        }
        str10 = "sandbox.xmpush.xiaomi.com";
        String str5 = str10 + "/pass/register";
        continue;
        G.a(paramContext, localJSONObject1.getInt("code"), localJSONObject1.optString("description"));
        com.xiaomi.a.a.a.b.a(str6);
        C localC = null;
        continue;
      }
      finally
      {
        monitorexit;
      }
      label686: String str4 = "0";
      continue;
      label694: String str10 = "register.xmpush.xiaomi.com";
    }
  }

  protected static String b(Context paramContext)
  {
    String str1;
    if (b == null)
      str1 = f(paramContext);
    try
    {
      String str4 = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
      str2 = str4;
      int i = Build.VERSION.SDK_INT;
      String str3 = null;
      if (i > 8)
        str3 = Build.SERIAL;
      b = "a-" + com.alipay.sdk.b.b.a(new StringBuilder().append(str1).append(str2).append(str3).toString());
      return b;
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        com.xiaomi.a.a.a.b.a(localThrowable);
        String str2 = null;
      }
    }
  }

  // ERROR //
  public static String c(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 15	com/xiaomi/push/service/D:c	Ljava/lang/String;
    //   6: ifnull +14 -> 20
    //   9: getstatic 15	com/xiaomi/push/service/D:c	Ljava/lang/String;
    //   12: astore 5
    //   14: ldc 2
    //   16: monitorexit
    //   17: aload 5
    //   19: areturn
    //   20: aload_0
    //   21: invokevirtual 298	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   24: ldc_w 300
    //   27: invokestatic 305	android/provider/Settings$Secure:getString	(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    //   30: astore 6
    //   32: aload 6
    //   34: astore_3
    //   35: getstatic 308	android/os/Build$VERSION:SDK_INT	I
    //   38: bipush 8
    //   40: if_icmple +56 -> 96
    //   43: getstatic 311	android/os/Build:SERIAL	Ljava/lang/String;
    //   46: astore 4
    //   48: new 187	java/lang/StringBuilder
    //   51: dup
    //   52: invokespecial 188	java/lang/StringBuilder:<init>	()V
    //   55: aload_3
    //   56: invokevirtual 197	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: aload 4
    //   61: invokevirtual 197	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: invokevirtual 205	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   67: invokestatic 313	com/alipay/sdk/b/b:a	(Ljava/lang/String;)Ljava/lang/String;
    //   70: astore 5
    //   72: aload 5
    //   74: putstatic 15	com/xiaomi/push/service/D:c	Ljava/lang/String;
    //   77: goto -63 -> 14
    //   80: astore_1
    //   81: ldc 2
    //   83: monitorexit
    //   84: aload_1
    //   85: athrow
    //   86: astore_2
    //   87: aload_2
    //   88: invokestatic 267	com/xiaomi/a/a/a/b:a	(Ljava/lang/Throwable;)V
    //   91: aconst_null
    //   92: astore_3
    //   93: goto -58 -> 35
    //   96: aconst_null
    //   97: astore 4
    //   99: goto -51 -> 48
    //
    // Exception table:
    //   from	to	target	type
    //   3	14	80	finally
    //   20	32	80	finally
    //   35	48	80	finally
    //   48	77	80	finally
    //   87	91	80	finally
    //   20	32	86	java/lang/Throwable
  }

  public static void d(Context paramContext)
  {
    paramContext.getSharedPreferences("mipush_account", 0).edit().clear().commit();
    a = null;
  }

  private static boolean e(Context paramContext)
  {
    return paramContext.getPackageName().equals("com.xiaomi.xmsf");
  }

  // ERROR //
  private static String f(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc_w 320
    //   4: invokevirtual 324	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   7: checkcast 326	android/telephony/TelephonyManager
    //   10: astore_2
    //   11: aload_2
    //   12: invokevirtual 329	android/telephony/TelephonyManager:getDeviceId	()Ljava/lang/String;
    //   15: astore_3
    //   16: aload_3
    //   17: astore 4
    //   19: bipush 10
    //   21: istore 5
    //   23: aload 4
    //   25: ifnonnull +37 -> 62
    //   28: iload 5
    //   30: iconst_1
    //   31: isub
    //   32: istore 6
    //   34: iload 5
    //   36: ifle +26 -> 62
    //   39: ldc2_w 330
    //   42: invokestatic 337	java/lang/Thread:sleep	(J)V
    //   45: aload_2
    //   46: invokevirtual 329	android/telephony/TelephonyManager:getDeviceId	()Ljava/lang/String;
    //   49: astore 8
    //   51: aload 8
    //   53: astore 4
    //   55: iload 6
    //   57: istore 5
    //   59: goto -36 -> 23
    //   62: aload 4
    //   64: areturn
    //   65: astore_1
    //   66: aload_1
    //   67: invokestatic 267	com/xiaomi/a/a/a/b:a	(Ljava/lang/Throwable;)V
    //   70: aconst_null
    //   71: areturn
    //   72: astore 7
    //   74: goto -29 -> 45
    //
    // Exception table:
    //   from	to	target	type
    //   0	16	65	java/lang/Throwable
    //   39	45	65	java/lang/Throwable
    //   45	51	65	java/lang/Throwable
    //   39	45	72	java/lang/InterruptedException
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.D
 * JD-Core Version:    0.6.0
 */