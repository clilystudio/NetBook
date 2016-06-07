package com.alipay.sdk.b;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.support.v4.view.ViewConfigurationCompat;
import android.support.v7.app.f;
import android.support.v7.app.k;
import android.support.v7.appcompat.R.attr;
import android.support.v7.appcompat.R.bool;
import android.support.v7.appcompat.R.dimen;
import android.support.v7.appcompat.R.integer;
import android.support.v7.appcompat.R.styleable;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.ViewConfiguration;
import android.widget.TextView;
import com.alipay.sdk.util.g;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.message.BasicHeader;
import org.json.JSONException;
import org.json.JSONObject;

public class b
{
  private Context a;

  private b(Context paramContext)
  {
    this.a = paramContext;
  }

  public static b a(Context paramContext)
  {
    return new b(paramContext);
  }

  public static e a()
  {
    a locala = new a();
    locala.a = com.alipay.sdk.a.a.a;
    locala.b = "com.alipay.mobilecashier";
    locala.c = "/device/findAccount";
    locala.d = "3.0.0";
    com.alipay.sdk.e.b localb = com.alipay.sdk.e.b.a();
    com.alipay.sdk.f.b localb1 = com.alipay.sdk.f.b.a();
    JSONObject localJSONObject = new JSONObject();
    try
    {
      if (!TextUtils.isEmpty(localb1.a))
        localJSONObject.put("tid", localb1.a);
      localJSONObject.put("utdid", com.d.a.c.a.a(localb.a));
      localJSONObject.put("app_key", "2014052600006128");
      localJSONObject.put("new_client_key", localb1.b);
      localJSONObject.put("imei", com.alipay.sdk.util.a.a(localb.a).b());
      localJSONObject.put("imsi", com.alipay.sdk.util.a.a(localb.a).a());
      label138: return new e(locala, localJSONObject);
    }
    catch (JSONException localJSONException)
    {
      break label138;
    }
  }

  public static e a(c paramc, String paramString, JSONObject paramJSONObject)
  {
    com.alipay.sdk.e.b localb = com.alipay.sdk.e.b.a();
    com.alipay.sdk.f.b localb1 = com.alipay.sdk.f.b.a();
    JSONObject localJSONObject = com.arcsoft.hpay100.a.a.a(null, paramJSONObject);
    try
    {
      localJSONObject.put("tid", localb1.a);
      d locald = localb.b;
      Context localContext1 = com.alipay.sdk.e.b.a().a;
      com.alipay.sdk.util.a locala1 = com.alipay.sdk.util.a.a(localContext1);
      if (TextUtils.isEmpty(locald.a))
      {
        String str15 = f.a();
        String str16 = f.b();
        String str17 = f.d(localContext1);
        String str18 = com.alipay.sdk.a.a.a;
        String str19 = str18.substring(0, str18.indexOf("://"));
        String str20 = f.e(localContext1);
        String str21 = Float.toString(new TextView(localContext1).getTextSize());
        locald.a = ("Msp/15.0.0" + " (" + str15 + ";" + str16 + ";" + str17 + ";" + str19 + ";" + str20 + ";" + str21);
      }
      String str1 = com.alipay.sdk.util.a.b(localContext1).a();
      String str2 = locala1.a();
      String str3 = locala1.b();
      Context localContext2 = com.alipay.sdk.e.b.a().a;
      SharedPreferences localSharedPreferences1 = localContext2.getSharedPreferences("virtualImeiAndImsi", 0);
      String str4 = localSharedPreferences1.getString("virtual_imsi", null);
      String str14;
      String str5;
      Context localContext3;
      String str6;
      label381: String str7;
      String str8;
      String str9;
      boolean bool;
      String str10;
      WifiInfo localWifiInfo2;
      if (TextUtils.isEmpty(str4))
      {
        if (!TextUtils.isEmpty(com.alipay.sdk.f.b.a().a))
          break label958;
        str14 = com.d.a.c.a.a(com.alipay.sdk.e.b.a().a);
        if (TextUtils.isEmpty(str14))
        {
          str4 = d.b();
          localSharedPreferences1.edit().putString("virtual_imsi", str4).commit();
        }
      }
      else
      {
        str5 = str4;
        localContext3 = com.alipay.sdk.e.b.a().a;
        SharedPreferences localSharedPreferences2 = localContext3.getSharedPreferences("virtualImeiAndImsi", 0);
        str6 = localSharedPreferences2.getString("virtual_imei", null);
        if (TextUtils.isEmpty(str6))
        {
          if (!TextUtils.isEmpty(com.alipay.sdk.f.b.a().a))
            break label971;
          str6 = d.b();
          localSharedPreferences2.edit().putString("virtual_imei", str6).commit();
        }
        str7 = str6;
        if (localb1 != null)
          locald.c = localb1.b;
        str8 = Build.MANUFACTURER.replace(";", " ");
        str9 = Build.MODEL.replace(";", " ");
        bool = com.alipay.sdk.e.b.b();
        str10 = locala1.c();
        WifiInfo localWifiInfo1 = ((WifiManager)localContext1.getSystemService("wifi")).getConnectionInfo();
        if (localWifiInfo1 == null)
          break label997;
        str11 = localWifiInfo1.getSSID();
        localWifiInfo2 = ((WifiManager)localContext1.getSystemService("wifi")).getConnectionInfo();
        if (localWifiInfo2 == null)
          break label984;
      }
      label958: label971: label984: for (String str12 = localWifiInfo2.getBSSID(); ; str12 = "00")
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(locald.a).append(";").append(str1).append(";").append("-1;-1").append(";").append("1").append(";").append(str2).append(";").append(str3).append(";").append(locald.c).append(";").append(str8).append(";").append(str9).append(";").append(bool).append(";").append(str10).append(";").append(com.alipay.sdk.e.c.a()).append(";").append(locald.b).append(";").append(str5).append(";").append(str7).append(";").append(str11).append(";").append(str12);
        if (localb1 != null)
        {
          HashMap localHashMap = new HashMap();
          localHashMap.put("tid", localb1.a);
          localHashMap.put("utdid", com.d.a.c.a.a(com.alipay.sdk.e.b.a().a));
          String str13 = d.a(localContext1, localHashMap);
          if (!TextUtils.isEmpty(str13))
            localStringBuilder.append(";").append(str13);
        }
        localStringBuilder.append(")");
        localJSONObject.put("user_agent", localStringBuilder.toString());
        localJSONObject.put("has_alipay", f.b(localb.a));
        localJSONObject.put("has_msp_app", f.a(localb.a));
        localJSONObject.put("external_info", paramString);
        localJSONObject.put("app_key", "2014052600006128");
        localJSONObject.put("utdid", com.d.a.c.a.a(localb.a));
        localJSONObject.put("new_client_key", localb1.b);
        a locala = new a();
        locala.a = com.alipay.sdk.a.a.a;
        locala.b = "com.alipay.mobilecashier";
        locala.c = "/cashier/main";
        locala.d = "4.0.2";
        e locale = new e(locala, localJSONObject);
        locale.d = true;
        a(paramc, locale, paramString);
        return locale;
        str4 = str14.substring(3, 18);
        break;
        str4 = com.alipay.sdk.util.a.a(localContext2).a();
        break;
        str6 = com.alipay.sdk.util.a.a(localContext3).b();
        break label381;
      }
    }
    catch (JSONException localJSONException)
    {
      while (true)
      {
        continue;
        label997: String str11 = "-1";
      }
    }
  }

  public static String a(int paramInt)
  {
    Random localRandom = new Random();
    StringBuffer localStringBuffer = new StringBuffer();
    for (int i = 0; i < paramInt; i++)
      localStringBuffer.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789".charAt(localRandom.nextInt(62)));
    return localStringBuffer.toString();
  }

  public static String a(String paramString)
  {
    if (paramString != null);
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("SHA1");
      localMessageDigest.update(b(paramString));
      String str = String.format("%1$032X", new Object[] { new BigInteger(1, localMessageDigest.digest()) });
      return str;
      return null;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
    }
    return paramString;
  }

  public static String a(Collection<?> paramCollection, String paramString)
  {
    if (paramCollection == null);
    Iterator localIterator;
    do
    {
      return null;
      localIterator = paramCollection.iterator();
    }
    while (localIterator == null);
    if (!localIterator.hasNext())
      return "";
    Object localObject1 = localIterator.next();
    if (!localIterator.hasNext())
      return localObject1.toString();
    StringBuffer localStringBuffer = new StringBuffer(256);
    if (localObject1 != null)
      localStringBuffer.append(localObject1);
    while (localIterator.hasNext())
    {
      if (paramString != null)
        localStringBuffer.append(paramString);
      Object localObject2 = localIterator.next();
      if (localObject2 == null)
        continue;
      localStringBuffer.append(localObject2);
    }
    return localStringBuffer.toString();
  }

  private static void a(c paramc, e parame, String paramString)
  {
    if (TextUtils.isEmpty(paramString));
    label75: label97: StringBuilder localStringBuilder;
    label130: label168: label178: label188: 
    do
    {
      String[] arrayOfString;
      do
      {
        return;
        arrayOfString = paramString.split("&");
      }
      while (arrayOfString.length == 0);
      int i = arrayOfString.length;
      int j = 0;
      Object localObject1 = null;
      Object localObject2 = null;
      Object localObject3 = null;
      Object localObject4 = null;
      if (j < i)
      {
        String str2 = arrayOfString[j];
        if (TextUtils.isEmpty((CharSequence)localObject4))
        {
          if (!str2.contains("biz_type"))
            localObject4 = null;
        }
        else
        {
          if (TextUtils.isEmpty((CharSequence)localObject3))
          {
            if (str2.contains("biz_no"))
              break label168;
            localObject3 = null;
          }
          if (TextUtils.isEmpty((CharSequence)localObject2))
          {
            if ((str2.contains("trade_no")) && (!str2.startsWith("out_trade_no")))
              break label178;
            localObject2 = null;
          }
          if (TextUtils.isEmpty((CharSequence)localObject1))
            if (str2.contains("app_userid"))
              break label188;
        }
        for (localObject1 = null; ; localObject1 = c(str2))
        {
          j++;
          break;
          localObject4 = c(str2);
          break label75;
          localObject3 = c(str2);
          break label97;
          localObject2 = c(str2);
          break label130;
        }
      }
      localStringBuilder = new StringBuilder();
      if (!TextUtils.isEmpty((CharSequence)localObject4))
        localStringBuilder.append("biz_type=" + (String)localObject4 + ";");
      if (!TextUtils.isEmpty((CharSequence)localObject3))
        localStringBuilder.append("biz_no=" + (String)localObject3 + ";");
      if (!TextUtils.isEmpty((CharSequence)localObject2))
        localStringBuilder.append("trade_no=" + (String)localObject2 + ";");
      if (TextUtils.isEmpty((CharSequence)localObject1))
        continue;
      localStringBuilder.append("app_userid=" + (String)localObject1 + ";");
    }
    while (localStringBuilder.length() == 0);
    String str1 = localStringBuilder.toString();
    if (str1.endsWith(";"))
      str1 = str1.substring(0, -1 + str1.length());
    Header[] arrayOfHeader = new Header[1];
    arrayOfHeader[0] = new BasicHeader("Msp-Param", str1);
    paramc.a = arrayOfHeader;
    parame.b = new WeakReference(paramc);
  }

  public static byte[] a(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte1 = null;
    try
    {
      ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(paramArrayOfByte);
      GZIPInputStream localGZIPInputStream = new GZIPInputStream(localByteArrayInputStream);
      byte[] arrayOfByte2 = new byte[4096];
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      while (true)
      {
        int i = localGZIPInputStream.read(arrayOfByte2, 0, 4096);
        if (i == -1)
          break;
        localByteArrayOutputStream.write(arrayOfByte2, 0, i);
      }
      arrayOfByte1 = localByteArrayOutputStream.toByteArray();
      localByteArrayOutputStream.flush();
      localByteArrayOutputStream.close();
      localGZIPInputStream.close();
      localByteArrayInputStream.close();
      return arrayOfByte1;
    }
    catch (Exception localException)
    {
    }
    return arrayOfByte1;
  }

  public static String b(Context paramContext)
  {
    Object localObject = null;
    if (paramContext != null);
    try
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
      if (localTelephonyManager != null)
      {
        String str1 = localTelephonyManager.getDeviceId();
        str2 = str1;
        localObject = str2;
        if (k.a((String)localObject))
          localObject = i();
        return localObject;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        localObject = null;
        continue;
        String str2 = null;
      }
    }
  }

  public static byte[] b(String paramString)
  {
    try
    {
      byte[] arrayOfByte = paramString.getBytes("UTF-8");
      return arrayOfByte;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    return paramString.getBytes();
  }

  public static String c(Context paramContext)
  {
    Object localObject = null;
    if (paramContext != null);
    try
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
      if (localTelephonyManager != null)
      {
        String str1 = localTelephonyManager.getSubscriberId();
        str2 = str1;
        localObject = str2;
        if (k.a((String)localObject))
          localObject = i();
        return localObject;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        localObject = null;
        continue;
        String str2 = null;
      }
    }
  }

  private static String c(String paramString)
  {
    String[] arrayOfString = paramString.split("=");
    int i = arrayOfString.length;
    String str = null;
    if (i > 1)
    {
      str = arrayOfString[1];
      if (str.contains("\""))
        str = str.replaceAll("\"", "");
    }
    return str;
  }

  public static int d(Context paramContext)
  {
    return u.a.c.a(paramContext).d("umeng_common_network_break_alert");
  }

  public static int e(Context paramContext)
  {
    return u.a.c.a(paramContext).d("umeng_common_action_info_exist");
  }

  public static int f(Context paramContext)
  {
    return u.a.c.a(paramContext).d("umeng_common_action_pause");
  }

  public static int g(Context paramContext)
  {
    return u.a.c.a(paramContext).d("umeng_common_action_continue");
  }

  public static int h(Context paramContext)
  {
    return u.a.c.a(paramContext).d("umeng_common_download_failed");
  }

  public static int i(Context paramContext)
  {
    return u.a.c.a(paramContext).d("umeng_common_download_finish");
  }

  private static String i()
  {
    int i = (int)(System.currentTimeMillis() / 1000L);
    int j = (int)System.nanoTime();
    int k = new Random().nextInt();
    int m = new Random().nextInt();
    byte[] arrayOfByte1 = com.arcsoft.hpay100.a.a.a(i);
    byte[] arrayOfByte2 = com.arcsoft.hpay100.a.a.a(j);
    byte[] arrayOfByte3 = com.arcsoft.hpay100.a.a.a(k);
    byte[] arrayOfByte4 = com.arcsoft.hpay100.a.a.a(m);
    byte[] arrayOfByte5 = new byte[16];
    System.arraycopy(arrayOfByte1, 0, arrayOfByte5, 0, 4);
    System.arraycopy(arrayOfByte2, 0, arrayOfByte5, 4, 4);
    System.arraycopy(arrayOfByte3, 0, arrayOfByte5, 8, 4);
    System.arraycopy(arrayOfByte4, 0, arrayOfByte5, 12, 4);
    return com.d.a.a.a.a.a(arrayOfByte5, 2);
  }

  public static int j(Context paramContext)
  {
    return u.a.c.a(paramContext).d("umeng_common_patch_finish");
  }

  public static int k(Context paramContext)
  {
    return u.a.c.a(paramContext).d("umeng_common_silent_download_finish");
  }

  public static int l(Context paramContext)
  {
    return u.a.c.a(paramContext).d("umeng_common_start_patch_notification");
  }

  public int b()
  {
    return this.a.getResources().getInteger(R.integer.abc_max_action_buttons);
  }

  public boolean c()
  {
    if (Build.VERSION.SDK_INT >= 19);
    do
      return true;
    while (!ViewConfigurationCompat.hasPermanentMenuKey(ViewConfiguration.get(this.a)));
    return false;
  }

  public int d()
  {
    return this.a.getResources().getDisplayMetrics().widthPixels / 2;
  }

  public boolean e()
  {
    if (this.a.getApplicationInfo().targetSdkVersion >= 16)
      return this.a.getResources().getBoolean(R.bool.abc_action_bar_embed_tabs);
    return this.a.getResources().getBoolean(R.bool.abc_action_bar_embed_tabs_pre_jb);
  }

  public int f()
  {
    TypedArray localTypedArray = this.a.obtainStyledAttributes(null, R.styleable.ActionBar, R.attr.actionBarStyle, 0);
    int i = localTypedArray.getLayoutDimension(R.styleable.ActionBar_height, 0);
    Resources localResources = this.a.getResources();
    if (!e())
      i = Math.min(i, localResources.getDimensionPixelSize(R.dimen.abc_action_bar_stacked_max_height));
    localTypedArray.recycle();
    return i;
  }

  public boolean g()
  {
    return this.a.getApplicationInfo().targetSdkVersion < 14;
  }

  public int h()
  {
    return this.a.getResources().getDimensionPixelSize(R.dimen.abc_action_bar_stacked_tab_max_width);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.b.b
 * JD-Core Version:    0.6.0
 */