package cn.sharesdk.sina.weibo;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.os.Bundle;
import android.os.Handler.Callback;
import android.os.Message;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform.ShareParams;
import cn.sharesdk.framework.authorize.AuthorizeListener;
import com.mob.tools.b.e;
import com.mob.tools.b.j;
import com.sina.weibo.sdk.api.ImageObject;
import com.sina.weibo.sdk.api.TextObject;
import com.sina.weibo.sdk.api.WebpageObject;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.HashMap;
import java.util.UUID;

public class a extends com.mob.tools.a
  implements Handler.Callback
{
  private long a = 2097152L;
  private boolean b;
  private String c;
  private Platform.ShareParams d;
  private AuthorizeListener e;

  private int a(Bitmap paramBitmap, Bitmap.CompressFormat paramCompressFormat)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(paramCompressFormat, 100, localByteArrayOutputStream);
    int i = localByteArrayOutputStream.size();
    localByteArrayOutputStream.close();
    return i;
  }

  private static int a(BitmapFactory.Options paramOptions, int paramInt1, int paramInt2)
  {
    int i = paramOptions.outHeight;
    int j = paramOptions.outWidth;
    int k = 1;
    int m = j / 2;
    int n = i / 2;
    while ((m / k > paramInt1) || (n / k > paramInt2))
      k <<= 1;
    return k + 2;
  }

  private Bitmap a(Bitmap paramBitmap, int paramInt)
  {
    int i = paramBitmap.getWidth();
    int j = paramBitmap.getHeight();
    double d1;
    if ((j <= paramInt) && (i <= paramInt))
      d1 = 1.0D;
    while (true)
    {
      return Bitmap.createScaledBitmap(paramBitmap, (int)(d1 * i), (int)(d1 * j), true);
      if (j > i)
      {
        d1 = paramInt / j;
        continue;
      }
      d1 = paramInt / i;
    }
  }

  private String a(Context paramContext, String paramString)
  {
    while (true)
    {
      int i;
      try
      {
        PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageInfo(paramString, 64);
        i = 0;
        if (i >= localPackageInfo.signatures.length)
          break;
        byte[] arrayOfByte = localPackageInfo.signatures[i].toByteArray();
        if (arrayOfByte != null)
          return com.arcsoft.hpay100.a.a.d(arrayOfByte);
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        return null;
      }
      i++;
    }
    return null;
  }

  private void a()
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("_weibo_command_type", 1);
    localBundle.putString("_weibo_transaction", String.valueOf(System.currentTimeMillis()));
    if (!TextUtils.isEmpty(this.d.getText()))
    {
      localBundle.putParcelable("_weibo_message_text", e());
      localBundle.putString("_weibo_message_text_extra", "");
    }
    if (!TextUtils.isEmpty(this.d.getUrl()))
    {
      this.a = 32768L;
      WebpageObject localWebpageObject = f();
      if (localWebpageObject.checkArgs())
      {
        localBundle.putParcelable("_weibo_message_media", localWebpageObject);
        String str = "";
        if (!TextUtils.isEmpty(localWebpageObject.defaultText))
        {
          HashMap localHashMap = new HashMap();
          localHashMap.put("extra_key_defaulttext", localWebpageObject.defaultText);
          str = new e().a(localHashMap);
        }
        localBundle.putString("_weibo_message_media_extra", str);
      }
    }
    while (true)
    {
      a(this.activity, i.a(this.activity).a(), this.c, localBundle);
      return;
      if ((this.d.getImageData() == null) && (TextUtils.isEmpty(this.d.getImagePath())))
        continue;
      this.a = 2097152L;
      ImageObject localImageObject = g();
      if (!localImageObject.checkArgs())
        continue;
      localBundle.putParcelable("_weibo_message_image", localImageObject);
      localBundle.putString("_weibo_message_image_extra", "");
    }
  }

  private void a(int paramInt, String paramString)
  {
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    case 2:
    }
    do
    {
      do
      {
        do
          return;
        while (this.e == null);
        this.e.onComplete(null);
        return;
      }
      while (this.e == null);
      this.e.onCancel();
      return;
    }
    while (this.e == null);
    this.e.onError(new Throwable(paramString));
  }

  private boolean a(Activity paramActivity, String paramString1, String paramString2, Bundle paramBundle)
  {
    if ((paramActivity == null) || (TextUtils.isEmpty("com.sina.weibo.sdk.action.ACTION_WEIBO_ACTIVITY")) || (TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)))
    {
      cn.sharesdk.framework.utils.d.a().e("launchWeiboActivity fail, invalid arguments", new Object[0]);
      return false;
    }
    String str = paramActivity.getPackageName();
    Intent localIntent = new Intent();
    localIntent.setPackage(paramString1);
    localIntent.setAction("com.sina.weibo.sdk.action.ACTION_WEIBO_ACTIVITY");
    localIntent.putExtra("_weibo_sdkVersion", "0031205000");
    localIntent.putExtra("_weibo_appPackage", str);
    localIntent.putExtra("_weibo_appKey", paramString2);
    localIntent.putExtra("_weibo_flag", 538116905);
    localIntent.putExtra("_weibo_sign", com.arcsoft.hpay100.a.a.h(a(paramActivity, str)));
    if (paramBundle != null)
      localIntent.putExtras(paramBundle);
    try
    {
      cn.sharesdk.framework.utils.d.a().d("launchWeiboActivity intent=" + localIntent + ", extra=" + localIntent.getExtras(), new Object[0]);
      paramActivity.startActivityForResult(localIntent, 765);
      return true;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      cn.sharesdk.framework.utils.d.a().e(localActivityNotFoundException.getMessage(), new Object[0]);
    }
    return false;
  }

  private byte[] a(Context paramContext, Bitmap paramBitmap)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, localByteArrayOutputStream);
    localByteArrayOutputStream.flush();
    localByteArrayOutputStream.close();
    byte[] arrayOfByte = localByteArrayOutputStream.toByteArray();
    Bitmap.CompressFormat localCompressFormat = com.arcsoft.hpay100.a.a.b(arrayOfByte);
    int i = com.arcsoft.hpay100.a.a.a(paramContext, 120);
    if (Bitmap.CompressFormat.PNG == localCompressFormat)
      i = com.arcsoft.hpay100.a.a.a(paramContext, 90);
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    if (arrayOfByte.length > 32768)
    {
      localOptions.inJustDecodeBounds = true;
      BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length, localOptions);
      localOptions.inSampleSize = a(localOptions, i, i);
    }
    localOptions.inJustDecodeBounds = false;
    return a(paramContext, BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length, localOptions), localCompressFormat);
  }

  private byte[] a(Context paramContext, Bitmap paramBitmap, Bitmap.CompressFormat paramCompressFormat)
  {
    if (paramBitmap == null)
      throw new RuntimeException("checkArgs fail, thumbData is null");
    if (paramBitmap.isRecycled())
      throw new RuntimeException("checkArgs fail, thumbData is recycled");
    int i = 120;
    while ((i > 40) && (a(paramBitmap, paramCompressFormat) > this.a))
    {
      int j = com.arcsoft.hpay100.a.a.a(paramContext, i);
      i -= 5;
      paramBitmap = a(paramBitmap, j);
    }
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.JPEG, 85, localByteArrayOutputStream);
    localByteArrayOutputStream.flush();
    localByteArrayOutputStream.close();
    return localByteArrayOutputStream.toByteArray();
  }

  private void b()
  {
    j.a(1, 200L, this);
  }

  private byte[] b(Context paramContext, String paramString)
  {
    File localFile = new File(paramString);
    if (!localFile.exists())
      throw new FileNotFoundException();
    Bitmap.CompressFormat localCompressFormat = com.arcsoft.hpay100.a.a.g(paramString);
    int i = com.arcsoft.hpay100.a.a.a(paramContext, 120);
    if (Bitmap.CompressFormat.PNG == localCompressFormat)
      i = com.arcsoft.hpay100.a.a.a(paramContext, 90);
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    if (localFile.length() > this.a)
    {
      localOptions.inJustDecodeBounds = true;
      BitmapFactory.decodeFile(paramString, localOptions);
      localOptions.inSampleSize = a(localOptions, i, i);
    }
    localOptions.inJustDecodeBounds = false;
    Bitmap localBitmap = BitmapFactory.decodeFile(paramString, localOptions);
    if (localBitmap == null)
    {
      localFile.delete();
      throw new RuntimeException("checkArgs fail, thumbData is null");
    }
    return a(paramContext, localBitmap, localCompressFormat);
  }

  private void c()
  {
    Intent localIntent = new Intent("com.sina.weibo.sdk.Intent.ACTION_WEIBO_REGISTER");
    String str = this.activity.getPackageName();
    localIntent.putExtra("_weibo_sdkVersion", "0031205000");
    localIntent.putExtra("_weibo_appPackage", str);
    localIntent.putExtra("_weibo_appKey", this.c);
    localIntent.putExtra("_weibo_flag", 538116905);
    localIntent.putExtra("_weibo_sign", com.arcsoft.hpay100.a.a.h(a(this.activity, str)));
    cn.sharesdk.framework.utils.d.a().d("intent=" + localIntent + ", extra=" + localIntent.getExtras(), new Object[0]);
    this.activity.sendBroadcast(localIntent, "com.sina.weibo.permission.WEIBO_SDK_PERMISSION");
  }

  private String d()
  {
    return UUID.randomUUID().toString().replace("-", "");
  }

  private TextObject e()
  {
    TextObject localTextObject = new TextObject();
    localTextObject.text = this.d.getText();
    return localTextObject;
  }

  private WebpageObject f()
  {
    WebpageObject localWebpageObject = new WebpageObject();
    localWebpageObject.identify = d();
    localWebpageObject.title = this.d.getTitle();
    localWebpageObject.description = this.d.getText();
    try
    {
      if (this.d.getImageData() != null)
        localWebpageObject.thumbData = a(this.activity, this.d.getImageData());
      while (true)
      {
        localWebpageObject.actionUrl = this.d.getUrl();
        localWebpageObject.defaultText = this.d.getText();
        return localWebpageObject;
        if (TextUtils.isEmpty(this.d.getImagePath()))
          continue;
        localWebpageObject.thumbData = b(this.activity, this.d.getImagePath());
      }
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        cn.sharesdk.framework.utils.d.a().w(localThrowable);
        localWebpageObject.setThumbImage(null);
      }
    }
  }

  private ImageObject g()
  {
    ImageObject localImageObject = new ImageObject();
    try
    {
      if (this.d.getImageData() != null)
      {
        localImageObject.imageData = a(this.activity, this.d.getImageData());
        return localImageObject;
      }
      if (!TextUtils.isEmpty(this.d.getImagePath()))
      {
        localImageObject.imageData = b(this.activity, this.d.getImagePath());
        return localImageObject;
      }
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
      localImageObject = null;
    }
    return localImageObject;
  }

  public void a(Platform.ShareParams paramShareParams)
  {
    this.d = paramShareParams;
  }

  public void a(AuthorizeListener paramAuthorizeListener)
  {
    this.e = paramAuthorizeListener;
  }

  public void a(String paramString)
  {
    this.c = paramString;
  }

  public boolean handleMessage(Message paramMessage)
  {
    if (paramMessage.what == 1)
    {
      if ((!this.b) && (this.e != null))
        this.e.onCancel();
      finish();
    }
    return false;
  }

  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    com.mob.tools.log.d locald = cn.sharesdk.framework.utils.d.a();
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt1);
    locald.d("sina activity requestCode = %s, resultCode = %s", arrayOfObject);
    b();
  }

  public void onCreate()
  {
    c();
    a();
  }

  public void onNewIntent(Intent paramIntent)
  {
    this.b = true;
    Bundle localBundle = paramIntent.getExtras();
    com.mob.tools.log.d locald = cn.sharesdk.framework.utils.d.a();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = localBundle.toString();
    locald.i("onNewIntent ==>>", arrayOfObject);
    String str1 = paramIntent.getStringExtra("_weibo_appPackage");
    String str2 = paramIntent.getStringExtra("_weibo_transaction");
    if (TextUtils.isEmpty(str1))
    {
      cn.sharesdk.framework.utils.d.a().e("handleWeiboResponse faild appPackage is null", new Object[0]);
      return;
    }
    String str3 = this.activity.getCallingPackage();
    cn.sharesdk.framework.utils.d.a().d("handleWeiboResponse getCallingPackage : " + str3, new Object[0]);
    if (TextUtils.isEmpty(str2))
    {
      cn.sharesdk.framework.utils.d.a().e("handleWeiboResponse faild intent _weibo_transaction is null", new Object[0]);
      return;
    }
    if ((!i.a(this.activity, str1)) && (!str1.equals(this.activity.getPackageName())))
    {
      cn.sharesdk.framework.utils.d.a().e("handleWeiboResponse faild appPackage validateSign faild", new Object[0]);
      return;
    }
    a(localBundle.getInt("_weibo_resp_errcode"), localBundle.getString("_weibo_resp_errstr"));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.sina.weibo.a
 * JD-Core Version:    0.6.0
 */