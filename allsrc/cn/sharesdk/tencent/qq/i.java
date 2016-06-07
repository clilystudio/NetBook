package cn.sharesdk.tencent.qq;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import java.io.File;

public class i extends com.mob.tools.a
{
  private Platform a;
  private String b;
  private PlatformActionListener c;

  private void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8)
  {
    String str = b(paramString1, paramString2, paramString3, paramString4, paramString5, paramString6, paramString7, paramString8);
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(Uri.parse(str));
    try
    {
      int[] arrayOfInt = a();
      h localh = new h();
      localh.a(this.b);
      localh.a(this.a, this.c);
      com.mob.tools.a.registerExecutor(this.b, localh);
      if ((arrayOfInt.length <= 1) || ((arrayOfInt[0] < 4) && (arrayOfInt[1] < 6)))
        localIntent.putExtra("key_request_code", 0);
      localIntent.putExtra("pkg_name", this.activity.getPackageName());
      this.activity.startActivityForResult(localIntent, 0);
      return;
    }
    catch (Throwable localThrowable)
    {
      do
        this.activity.finish();
      while (this.c == null);
      this.c.onError(this.a, 9, localThrowable);
    }
  }

  private int[] a()
  {
    int[] arrayOfInt;
    try
    {
      str = this.a.getContext().getPackageManager().getPackageInfo("com.tencent.mobileqq", 0).versionName;
      arrayOfString = str.split("\\.");
      arrayOfInt = new int[arrayOfString.length];
      i = 0;
      if (i >= arrayOfInt.length);
    }
    catch (Throwable localThrowable1)
    {
      try
      {
        while (true)
        {
          String[] arrayOfString;
          arrayOfInt[i] = com.arcsoft.hpay100.a.a.n(arrayOfString[i]);
          i++;
        }
        localThrowable1 = localThrowable1;
        cn.sharesdk.framework.utils.d.a().w(localThrowable1);
        String str = "0";
      }
      catch (Throwable localThrowable2)
      {
        while (true)
        {
          int i;
          cn.sharesdk.framework.utils.d.a().w(localThrowable2);
          arrayOfInt[i] = 0;
        }
      }
    }
    return arrayOfInt;
  }

  private String b(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8)
  {
    String str1 = "mqqapi://share/to_fri?src_type=app&version=1&file_type=news";
    if (!TextUtils.isEmpty(paramString4))
      str1 = str1 + "&image_url=" + Base64.encodeToString(paramString4.getBytes(), 2);
    if (!TextUtils.isEmpty(paramString5))
      str1 = str1 + "&file_data=" + Base64.encodeToString(paramString5.getBytes(), 2);
    if (!TextUtils.isEmpty(paramString1))
      str1 = str1 + "&title=" + Base64.encodeToString(paramString1.getBytes(), 2);
    if (!TextUtils.isEmpty(paramString3))
      str1 = str1 + "&description=" + Base64.encodeToString(paramString3.getBytes(), 2);
    if (!TextUtils.isEmpty(paramString7))
    {
      if (paramString7.length() > 20)
        paramString7 = paramString7.substring(0, 20) + "...";
      str1 = str1 + "&app_name=" + Base64.encodeToString(paramString7.getBytes(), 2);
    }
    if (!TextUtils.isEmpty(paramString8))
      str1 = str1 + "&share_id=" + paramString8;
    if (!TextUtils.isEmpty(paramString2))
      str1 = str1 + "&url=" + Base64.encodeToString(paramString2.getBytes(), 2);
    if (!TextUtils.isEmpty(paramString3))
      str1 = str1 + "&share_qq_ext_str=" + Base64.encodeToString(paramString3.getBytes(), 2);
    String str2;
    if ((TextUtils.isEmpty(paramString1)) && (TextUtils.isEmpty(paramString3)) && (TextUtils.isEmpty(paramString2)) && (!TextUtils.isEmpty(paramString5)))
      str2 = str1 + "&req_type=" + Base64.encodeToString("5".getBytes(), 2);
    while (true)
    {
      return str2 + "&cflag=" + Base64.encodeToString("0".getBytes(), 2);
      if ((!TextUtils.isEmpty(paramString1)) && (!TextUtils.isEmpty(paramString3)) && (TextUtils.isEmpty(paramString2)))
      {
        str2 = str1 + "&req_type=" + Base64.encodeToString("6".getBytes(), 2);
        continue;
      }
      if (!TextUtils.isEmpty(paramString6))
      {
        String str3 = str1 + "&req_type=" + Base64.encodeToString("2".getBytes(), 2);
        str2 = str3 + "&audioUrl=" + Base64.encodeToString(paramString6.getBytes(), 2);
        continue;
      }
      str2 = str1 + "&req_type=" + Base64.encodeToString("1".getBytes(), 2);
    }
  }

  public void a(Platform paramPlatform, PlatformActionListener paramPlatformActionListener)
  {
    this.a = paramPlatform;
    this.c = paramPlatformActionListener;
  }

  public void a(String paramString)
  {
    this.b = ("tencent" + paramString);
  }

  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    finish();
  }

  public void onCreate()
  {
    Bundle localBundle = this.activity.getIntent().getExtras();
    String str1 = localBundle.getString("title");
    String str2 = localBundle.getString("titleUrl");
    String str3 = localBundle.getString("summary");
    String str4 = localBundle.getString("imageUrl");
    String str5 = localBundle.getString("musicUrl");
    String str6 = com.mob.tools.b.a.a(this.activity).l();
    String str7 = localBundle.getString("appId");
    String str8 = localBundle.getString("imagePath");
    if ((TextUtils.isEmpty(str1)) && (TextUtils.isEmpty(str3)) && (TextUtils.isEmpty(str2)) && ((TextUtils.isEmpty(str8)) || (!new File(str8).exists())) && (!TextUtils.isEmpty(str4)))
    {
      new j(this, str4, str1, str2, str3, str5, str6, str7).start();
      return;
    }
    a(str1, str2, str3, str4, str8, str5, str6, str7);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.tencent.qq.i
 * JD-Core Version:    0.6.0
 */