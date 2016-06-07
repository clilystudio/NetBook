package cn.sharesdk.wechat.utils;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.arcsoft.hpay100.a.a;
import java.security.MessageDigest;

public class j
{
  private Context a;
  private String b;

  private String a(String paramString)
  {
    Uri localUri = Uri.parse("content://com.tencent.mm.sdk.plugin.provider/sharedpref");
    String[] arrayOfString = { "_id", "key", "type", "value" };
    while (true)
    {
      try
      {
        Cursor localCursor = this.a.getContentResolver().query(localUri, arrayOfString, "key = ?", new String[] { paramString }, null);
        if (localCursor == null)
          return null;
        if (localCursor.moveToFirst())
        {
          str = localCursor.getString(localCursor.getColumnIndex("value"));
          localCursor.close();
          return str;
        }
      }
      catch (Throwable localThrowable)
      {
        cn.sharesdk.framework.utils.d.a().w(localThrowable);
        return null;
      }
      String str = null;
    }
  }

  private boolean a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if ((paramArrayOfByte1 == null) || (paramArrayOfByte1.length == 0))
    {
      cn.sharesdk.framework.utils.d.a().w("checkSumConsistent fail, invalid arguments, \"_mmessage_checksum\" is empty", new Object[0]);
      return false;
    }
    if ((paramArrayOfByte2 == null) || (paramArrayOfByte2.length == 0))
    {
      cn.sharesdk.framework.utils.d.a().w("checkSumConsistent fail, invalid arguments, checksum is empty", new Object[0]);
      return false;
    }
    if (paramArrayOfByte1.length != paramArrayOfByte2.length)
    {
      cn.sharesdk.framework.utils.d.a().w("checkSumConsistent fail, length is different", new Object[0]);
      return false;
    }
    for (int i = 0; i < paramArrayOfByte1.length; i++)
    {
      if (paramArrayOfByte1[i] == paramArrayOfByte2[i])
        continue;
      cn.sharesdk.framework.utils.d.a().w("checkSumConsistent fail, not match", new Object[0]);
      return false;
    }
    return true;
  }

  private byte[] a(String paramString1, String paramString2, int paramInt)
  {
    int i = 0;
    StringBuffer localStringBuffer = new StringBuffer();
    if (paramString1 != null)
      localStringBuffer.append(paramString1);
    localStringBuffer.append(paramInt);
    localStringBuffer.append(paramString2);
    localStringBuffer.append("mMcShCsTr");
    byte[] arrayOfByte1 = localStringBuffer.toString().substring(1, 9).getBytes();
    char[] arrayOfChar1 = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(arrayOfByte1);
      byte[] arrayOfByte3 = localMessageDigest.digest();
      char[] arrayOfChar2 = new char[arrayOfByte3.length << 1];
      int j = 0;
      while (i < arrayOfByte3.length)
      {
        int k = arrayOfByte3[i];
        int m = j + 1;
        arrayOfChar2[j] = arrayOfChar1[(0xF & k >>> 4)];
        j = m + 1;
        arrayOfChar2[m] = arrayOfChar1[(k & 0xF)];
        i++;
      }
      str = new String(arrayOfChar2);
      byte[] arrayOfByte2 = null;
      if (str != null)
        arrayOfByte2 = str.getBytes();
      return arrayOfByte2;
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        cn.sharesdk.framework.utils.d.a().w(localThrowable);
        String str = null;
      }
    }
  }

  private boolean d()
  {
    cn.sharesdk.framework.utils.d.a().d("checking signature of wechat client...", new Object[0]);
    while (true)
    {
      int j;
      try
      {
        PackageInfo localPackageInfo = this.a.getPackageManager().getPackageInfo("com.tencent.mm", 64);
        int i = localPackageInfo.signatures.length;
        j = 0;
        int k = 0;
        if (j >= i)
          continue;
        if ("308202eb30820254a00302010202044d36f7a4300d06092a864886f70d01010505003081b9310b300906035504061302383631123010060355040813094775616e67646f6e673111300f060355040713085368656e7a68656e31353033060355040a132c54656e63656e7420546563686e6f6c6f6779285368656e7a68656e2920436f6d70616e79204c696d69746564313a3038060355040b133154656e63656e74204775616e677a686f7520526573656172636820616e6420446576656c6f706d656e742043656e7465723110300e0603550403130754656e63656e74301e170d3131303131393134333933325a170d3431303131313134333933325a3081b9310b300906035504061302383631123010060355040813094775616e67646f6e673111300f060355040713085368656e7a68656e31353033060355040a132c54656e63656e7420546563686e6f6c6f6779285368656e7a68656e2920436f6d70616e79204c696d69746564313a3038060355040b133154656e63656e74204775616e677a686f7520526573656172636820616e6420446576656c6f706d656e742043656e7465723110300e0603550403130754656e63656e7430819f300d06092a864886f70d010101050003818d0030818902818100c05f34b231b083fb1323670bfbe7bdab40c0c0a6efc87ef2072a1ff0d60cc67c8edb0d0847f210bea6cbfaa241be70c86daf56be08b723c859e52428a064555d80db448cdcacc1aea2501eba06f8bad12a4fa49d85cacd7abeb68945a5cb5e061629b52e3254c373550ee4e40cb7c8ae6f7a8151ccd8df582d446f39ae0c5e930203010001300d06092a864886f70d0101050500038181009c8d9d7f2f908c42081b4c764c377109a8b2c70582422125ce545842d5f520aea69550b6bd8bfd94e987b75a3077eb04ad341f481aac266e89d3864456e69fba13df018acdc168b9a19dfd7ad9d9cc6f6ace57c746515f71234df3a053e33ba93ece5cd0fc15f3e389a3f365588a9fcb439e069d3629cd7732a13fff7b891499".equals(localPackageInfo.signatures[j].toCharsString()))
        {
          cn.sharesdk.framework.utils.d.a().d("pass!", new Object[0]);
          k = 1;
          return k;
        }
      }
      catch (Throwable localThrowable)
      {
        cn.sharesdk.framework.utils.d.a().w(localThrowable);
        return false;
      }
      j++;
    }
  }

  public void a(m paramm)
  {
    if (!b())
      throw new WechatClientNotExistException();
    if (!paramm.b())
      throw new Throwable("sendReq checkArgs fail");
    String str1 = this.a.getPackageName();
    String str2 = "weixin://sendreq?appid=" + this.b;
    Intent localIntent = new Intent();
    localIntent.setClassName("com.tencent.mm", "com.tencent.mm.plugin.base.stub.WXEntryActivity");
    Bundle localBundle = new Bundle();
    paramm.a(localBundle);
    localIntent.putExtras(localBundle);
    localIntent.putExtra("_mmessage_sdkVersion", 553844737);
    localIntent.putExtra("_mmessage_appPackage", str1);
    localIntent.putExtra("_mmessage_content", str2);
    localIntent.putExtra("_mmessage_checksum", a(str2, str1, 553844737));
    localIntent.addFlags(268435456);
    localIntent.addFlags(134217728);
    this.a.startActivity(localIntent);
    cn.sharesdk.framework.utils.d.a().d("starting activity, packageName=com.tencent.mm, className=com.tencent.mm.plugin.base.stub.WXEntryActivity", new Object[0]);
  }

  public boolean a()
  {
    int k;
    try
    {
      str = this.a.getPackageManager().getPackageInfo("com.tencent.mm", 0).versionName;
      cn.sharesdk.framework.utils.d.a().i("wechat versionName ==>> " + str, new Object[0]);
      arrayOfString = str.split("_")[0].split("\\.");
      arrayOfInt = new int[arrayOfString.length];
      i = 0;
      if (i >= arrayOfInt.length);
    }
    catch (Throwable localThrowable1)
    {
      int[] arrayOfInt;
      try
      {
        while (true)
        {
          String[] arrayOfString;
          arrayOfInt[i] = a.n(arrayOfString[i]);
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
      int j = arrayOfInt.length;
      k = 0;
      if (j >= 4)
      {
        int m = arrayOfInt[0];
        k = 0;
        if (m == 6)
        {
          int n = arrayOfInt[1];
          k = 0;
          if (n == 0)
          {
            int i1 = arrayOfInt[2];
            k = 0;
            if (i1 == 2)
            {
              int i2 = arrayOfInt[3];
              k = 0;
              if (i2 <= 56)
                k = 1;
            }
          }
        }
      }
    }
    return k;
  }

  public boolean a(Context paramContext, String paramString)
  {
    this.a = paramContext;
    this.b = paramString;
    if (!d())
    {
      cn.sharesdk.framework.utils.d.a().w("register app failed for wechat app signature check failed", new Object[0]);
      return false;
    }
    String str1 = "weixin://registerapp?appid=" + paramString;
    String str2 = paramContext.getPackageName();
    Intent localIntent = new Intent("com.tencent.mm.plugin.openapi.Intent.ACTION_HANDLE_APP_REGISTER");
    localIntent.putExtra("_mmessage_sdkVersion", 553910273);
    localIntent.putExtra("_mmessage_appPackage", str2);
    localIntent.putExtra("_mmessage_content", str1);
    localIntent.putExtra("_mmessage_checksum", a(str1, str2, 553910273));
    paramContext.sendBroadcast(localIntent, "com.tencent.mm.permission.MM_MESSAGE");
    cn.sharesdk.framework.utils.d.a().d("sending broadcast, intent=" + "com.tencent.mm.plugin.openapi.Intent.ACTION_HANDLE_APP_REGISTER" + ", perm=" + "com.tencent.mm.permission.MM_MESSAGE", new Object[0]);
    return true;
  }

  public boolean a(WechatHandlerActivity paramWechatHandlerActivity, k paramk)
  {
    Intent localIntent = paramWechatHandlerActivity.getIntent();
    if (localIntent == null)
      return false;
    String str1 = localIntent.getStringExtra("wx_token_key");
    if ((str1 == null) || (!str1.equals("com.tencent.mm.openapi.token")))
    {
      cn.sharesdk.framework.utils.d.a().w("invalid argument, \"wx_token_key\" is empty or does not equals \"com.tencent.mm.openapi.token\"", new Object[0]);
      return false;
    }
    String str2 = localIntent.getStringExtra("_mmessage_appPackage");
    if (TextUtils.isEmpty(str2))
    {
      cn.sharesdk.framework.utils.d.a().w("invalid argument, \"_mmessage_appPackage\" is empty", new Object[0]);
      return false;
    }
    String str3 = localIntent.getStringExtra("_mmessage_content");
    int i = localIntent.getIntExtra("_mmessage_sdkVersion", 0);
    if (!a(localIntent.getByteArrayExtra("_mmessage_checksum"), a(str3, str2, i)))
    {
      cn.sharesdk.framework.utils.d.a().w("checksum fail", new Object[0]);
      return false;
    }
    Bundle localBundle = localIntent.getExtras();
    switch (localBundle.getInt("_wxapi_command_type", 0))
    {
    default:
      return false;
    case 1:
      paramk.a(new b(localBundle));
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      return true;
      paramk.a(new e(localBundle));
      continue;
      paramWechatHandlerActivity.onGetMessageFromWXReq(new c(localBundle).a);
      continue;
      paramWechatHandlerActivity.onShowMessageFromWXReq(new f(localBundle).a);
    }
  }

  public boolean b()
  {
    if (!d());
    while (true)
    {
      return false;
      String str = a("_build_info_sdk_int_");
      try
      {
        int j = a.n(str);
        i = j;
        if (i < 553844737)
          continue;
        return true;
      }
      catch (Throwable localThrowable)
      {
        while (true)
        {
          cn.sharesdk.framework.utils.d.a().w(localThrowable);
          int i = -1;
        }
      }
    }
  }

  public boolean c()
  {
    String str = a("_build_info_sdk_int_");
    try
    {
      int j = a.n(str);
      i = j;
      if (i >= 553779201)
        return true;
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        cn.sharesdk.framework.utils.d.a().w(localThrowable);
        int i = -1;
      }
    }
    return false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.wechat.utils.j
 * JD-Core Version:    0.6.0
 */