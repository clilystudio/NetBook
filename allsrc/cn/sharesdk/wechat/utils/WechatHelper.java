package cn.sharesdk.wechat.utils;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.Platform.ShareParams;
import cn.sharesdk.framework.PlatformActionListener;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.net.FileNameMap;
import java.net.URLConnection;
import java.util.HashMap;

public class WechatHelper
{
  private static boolean a = false;
  private static WechatHelper b;
  private j c = new j();
  private k d;

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

  public static WechatHelper a()
  {
    if (b == null)
      b = new WechatHelper();
    return b;
  }

  private void a(Context paramContext, String paramString1, String paramString2, Bitmap paramBitmap, int paramInt, k paramk)
  {
    WXImageObject localWXImageObject = new WXImageObject();
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, localByteArrayOutputStream);
    localByteArrayOutputStream.flush();
    localByteArrayOutputStream.close();
    localWXImageObject.imageData = localByteArrayOutputStream.toByteArray();
    WXMediaMessage localWXMediaMessage = new WXMediaMessage();
    localWXMediaMessage.title = paramString1;
    localWXMediaMessage.mediaObject = localWXImageObject;
    localWXMediaMessage.description = paramString2;
    localWXMediaMessage.thumbData = a(paramContext, localWXImageObject.imageData);
    a(localWXMediaMessage, "img", paramInt, paramk);
  }

  private void a(Context paramContext, String paramString1, String paramString2, String paramString3, int paramInt, k paramk)
  {
    WXImageObject localWXImageObject = new WXImageObject();
    if (paramString3.startsWith("/data/"))
      localWXImageObject.imageData = a(paramString3);
    while (true)
    {
      WXMediaMessage localWXMediaMessage = new WXMediaMessage();
      localWXMediaMessage.title = paramString1;
      localWXMediaMessage.mediaObject = localWXImageObject;
      localWXMediaMessage.description = paramString2;
      localWXMediaMessage.thumbData = b(paramContext, paramString3);
      a(localWXMediaMessage, "img", paramInt, paramk);
      return;
      localWXImageObject.imagePath = paramString3;
    }
  }

  private void a(Context paramContext, String paramString1, String paramString2, String paramString3, Bitmap paramBitmap, int paramInt, k paramk)
  {
    WXVideoObject localWXVideoObject = new WXVideoObject();
    localWXVideoObject.videoUrl = paramString3;
    WXMediaMessage localWXMediaMessage = new WXMediaMessage();
    localWXMediaMessage.title = paramString1;
    localWXMediaMessage.description = paramString2;
    localWXMediaMessage.mediaObject = localWXVideoObject;
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, localByteArrayOutputStream);
    localByteArrayOutputStream.flush();
    localByteArrayOutputStream.close();
    localWXMediaMessage.thumbData = a(paramContext, localByteArrayOutputStream.toByteArray());
    a(localWXMediaMessage, "video", paramInt, paramk);
  }

  private void a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt, k paramk)
  {
    WXVideoObject localWXVideoObject = new WXVideoObject();
    localWXVideoObject.videoUrl = paramString3;
    WXMediaMessage localWXMediaMessage = new WXMediaMessage();
    localWXMediaMessage.title = paramString1;
    localWXMediaMessage.description = paramString2;
    localWXMediaMessage.mediaObject = localWXVideoObject;
    localWXMediaMessage.thumbData = b(paramContext, paramString4);
    a(localWXMediaMessage, "video", paramInt, paramk);
  }

  private void a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, Bitmap paramBitmap, int paramInt, k paramk)
  {
    WXMusicObject localWXMusicObject = new WXMusicObject();
    localWXMusicObject.musicUrl = paramString4;
    localWXMusicObject.musicDataUrl = paramString3;
    WXMediaMessage localWXMediaMessage = new WXMediaMessage();
    localWXMediaMessage.title = paramString1;
    localWXMediaMessage.description = paramString2;
    localWXMediaMessage.mediaObject = localWXMusicObject;
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, localByteArrayOutputStream);
    localByteArrayOutputStream.flush();
    localByteArrayOutputStream.close();
    localWXMediaMessage.thumbData = a(paramContext, localByteArrayOutputStream.toByteArray());
    a(localWXMediaMessage, "music", paramInt, paramk);
  }

  private void a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, int paramInt, k paramk)
  {
    WXMusicObject localWXMusicObject = new WXMusicObject();
    localWXMusicObject.musicUrl = paramString4;
    localWXMusicObject.musicDataUrl = paramString3;
    WXMediaMessage localWXMediaMessage = new WXMediaMessage();
    localWXMediaMessage.title = paramString1;
    localWXMediaMessage.description = paramString2;
    localWXMediaMessage.mediaObject = localWXMusicObject;
    localWXMediaMessage.thumbData = b(paramContext, paramString5);
    a(localWXMediaMessage, "music", paramInt, paramk);
  }

  private void a(WXMediaMessage paramWXMediaMessage, String paramString, int paramInt, k paramk)
  {
    com.mob.tools.b.a locala = com.mob.tools.b.a.a(paramk.b().getContext());
    String str1 = locala.k() + ".wxapi.WXEntryActivity";
    try
    {
      Class localClass2 = Class.forName(str1);
      localClass1 = localClass2;
      if ((localClass1 != null) && (!WechatHandlerActivity.class.isAssignableFrom(localClass1)))
      {
        str2 = str1 + " does not extend from " + WechatHandlerActivity.class.getName();
        if (a)
          throw new Throwable(str2);
      }
    }
    catch (Throwable localThrowable)
    {
      String str2;
      while (true)
      {
        cn.sharesdk.framework.utils.d.a().w(localThrowable);
        Class localClass1 = null;
      }
      new Throwable(str2).printStackTrace();
      d locald = new d();
      locald.c = (paramString + System.currentTimeMillis());
      locald.a = paramWXMediaMessage;
      locald.b = paramInt;
      this.d = paramk;
      this.c.a(locald);
    }
  }

  private void a(String paramString1, String paramString2, int paramInt, k paramk)
  {
    WXTextObject localWXTextObject = new WXTextObject();
    localWXTextObject.text = paramString2;
    WXMediaMessage localWXMediaMessage = new WXMediaMessage();
    localWXMediaMessage.title = paramString1;
    localWXMediaMessage.mediaObject = localWXTextObject;
    localWXMediaMessage.description = paramString2;
    a(localWXMediaMessage, "text", paramInt, paramk);
  }

  private byte[] a(Context paramContext, Bitmap paramBitmap, Bitmap.CompressFormat paramCompressFormat)
  {
    if (paramBitmap == null)
      throw new RuntimeException("checkArgs fail, thumbData is null");
    if (paramBitmap.isRecycled())
      throw new RuntimeException("checkArgs fail, thumbData is recycled");
    int i = 120;
    while ((i > 40) && (a(paramBitmap, paramCompressFormat) > 32768))
    {
      int j = com.arcsoft.hpay100.a.a.a(paramContext, i);
      i -= 5;
      paramBitmap = a(paramBitmap, j);
    }
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(paramCompressFormat, 100, localByteArrayOutputStream);
    localByteArrayOutputStream.flush();
    localByteArrayOutputStream.close();
    return localByteArrayOutputStream.toByteArray();
  }

  private byte[] a(Context paramContext, byte[] paramArrayOfByte)
  {
    Bitmap.CompressFormat localCompressFormat = com.arcsoft.hpay100.a.a.b(paramArrayOfByte);
    int i = com.arcsoft.hpay100.a.a.a(paramContext, 120);
    if (Bitmap.CompressFormat.PNG == localCompressFormat)
      i = com.arcsoft.hpay100.a.a.a(paramContext, 90);
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    if (paramArrayOfByte.length > 32768)
    {
      localOptions.inJustDecodeBounds = true;
      BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length, localOptions);
      localOptions.inSampleSize = a(localOptions, i, i);
    }
    localOptions.inJustDecodeBounds = false;
    return a(paramContext, BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length, localOptions), localCompressFormat);
  }

  private byte[] a(String paramString)
  {
    try
    {
      FileInputStream localFileInputStream = new FileInputStream(paramString);
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      byte[] arrayOfByte1 = new byte[1024];
      for (int i = localFileInputStream.read(arrayOfByte1); i > 0; i = localFileInputStream.read(arrayOfByte1))
        localByteArrayOutputStream.write(arrayOfByte1, 0, i);
      localByteArrayOutputStream.flush();
      localFileInputStream.close();
      localByteArrayOutputStream.close();
      byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
      return arrayOfByte2;
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
    return null;
  }

  private void b(Context paramContext, String paramString1, String paramString2, Bitmap paramBitmap, int paramInt, k paramk)
  {
    WXEmojiObject localWXEmojiObject = new WXEmojiObject();
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, localByteArrayOutputStream);
    localByteArrayOutputStream.flush();
    localWXEmojiObject.emojiData = localByteArrayOutputStream.toByteArray();
    localByteArrayOutputStream.close();
    WXMediaMessage localWXMediaMessage = new WXMediaMessage();
    localWXMediaMessage.title = paramString1;
    localWXMediaMessage.mediaObject = localWXEmojiObject;
    localWXMediaMessage.description = paramString2;
    localWXMediaMessage.thumbData = a(paramContext, localWXEmojiObject.emojiData);
    a(localWXMediaMessage, "emoji", paramInt, paramk);
  }

  private void b(Context paramContext, String paramString1, String paramString2, String paramString3, int paramInt, k paramk)
  {
    WXEmojiObject localWXEmojiObject = new WXEmojiObject();
    localWXEmojiObject.emojiPath = paramString3;
    WXMediaMessage localWXMediaMessage = new WXMediaMessage();
    localWXMediaMessage.title = paramString1;
    localWXMediaMessage.mediaObject = localWXEmojiObject;
    localWXMediaMessage.description = paramString2;
    localWXMediaMessage.thumbData = b(paramContext, paramString3);
    a(localWXMediaMessage, "emoji", paramInt, paramk);
  }

  private void b(Context paramContext, String paramString1, String paramString2, String paramString3, Bitmap paramBitmap, int paramInt, k paramk)
  {
    WXWebpageObject localWXWebpageObject = new WXWebpageObject();
    localWXWebpageObject.webpageUrl = paramString3;
    WXMediaMessage localWXMediaMessage = new WXMediaMessage();
    localWXMediaMessage.title = paramString1;
    localWXMediaMessage.description = paramString2;
    localWXMediaMessage.mediaObject = localWXWebpageObject;
    if ((paramBitmap != null) && (!paramBitmap.isRecycled()))
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, localByteArrayOutputStream);
      localByteArrayOutputStream.flush();
      localByteArrayOutputStream.close();
      localWXMediaMessage.thumbData = a(paramContext, localByteArrayOutputStream.toByteArray());
      if (localWXMediaMessage.thumbData == null)
        throw new RuntimeException("checkArgs fail, thumbData is null");
      if (localWXMediaMessage.thumbData.length > 32768)
        throw new RuntimeException("checkArgs fail, thumbData is too large: " + localWXMediaMessage.thumbData.length + " > 32768");
    }
    a(localWXMediaMessage, "webpage", paramInt, paramk);
  }

  private void b(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt, k paramk)
  {
    WXWebpageObject localWXWebpageObject = new WXWebpageObject();
    localWXWebpageObject.webpageUrl = paramString3;
    WXMediaMessage localWXMediaMessage = new WXMediaMessage();
    localWXMediaMessage.title = paramString1;
    localWXMediaMessage.description = paramString2;
    localWXMediaMessage.mediaObject = localWXWebpageObject;
    if ((paramString4 != null) && (new File(paramString4).exists()))
    {
      localWXMediaMessage.thumbData = b(paramContext, paramString4);
      if (localWXMediaMessage.thumbData == null)
        throw new RuntimeException("checkArgs fail, thumbData is null");
      if (localWXMediaMessage.thumbData.length > 32768)
        throw new RuntimeException("checkArgs fail, thumbData is too large: " + localWXMediaMessage.thumbData.length + " > 32768");
    }
    a(localWXMediaMessage, "webpage", paramInt, paramk);
  }

  private void b(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, Bitmap paramBitmap, int paramInt, k paramk)
  {
    WXAppExtendObject localWXAppExtendObject = new WXAppExtendObject();
    localWXAppExtendObject.filePath = paramString3;
    localWXAppExtendObject.extInfo = paramString4;
    WXMediaMessage localWXMediaMessage = new WXMediaMessage();
    localWXMediaMessage.title = paramString1;
    localWXMediaMessage.description = paramString2;
    localWXMediaMessage.mediaObject = localWXAppExtendObject;
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, localByteArrayOutputStream);
    localByteArrayOutputStream.flush();
    localByteArrayOutputStream.close();
    localWXMediaMessage.thumbData = a(paramContext, localByteArrayOutputStream.toByteArray());
    a(localWXMediaMessage, "appdata", paramInt, paramk);
  }

  private void b(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, int paramInt, k paramk)
  {
    WXAppExtendObject localWXAppExtendObject = new WXAppExtendObject();
    localWXAppExtendObject.filePath = paramString3;
    localWXAppExtendObject.extInfo = paramString4;
    WXMediaMessage localWXMediaMessage = new WXMediaMessage();
    localWXMediaMessage.title = paramString1;
    localWXMediaMessage.description = paramString2;
    localWXMediaMessage.mediaObject = localWXAppExtendObject;
    localWXMediaMessage.thumbData = b(paramContext, paramString5);
    a(localWXMediaMessage, "appdata", paramInt, paramk);
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
    if (localFile.length() > 32768L)
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

  private void c(Context paramContext, String paramString1, String paramString2, String paramString3, Bitmap paramBitmap, int paramInt, k paramk)
  {
    WXFileObject localWXFileObject = new WXFileObject();
    localWXFileObject.filePath = paramString3;
    WXMediaMessage localWXMediaMessage = new WXMediaMessage();
    localWXMediaMessage.title = paramString1;
    localWXMediaMessage.description = paramString2;
    localWXMediaMessage.mediaObject = localWXFileObject;
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, localByteArrayOutputStream);
    localByteArrayOutputStream.flush();
    localByteArrayOutputStream.close();
    localWXMediaMessage.thumbData = a(paramContext, localByteArrayOutputStream.toByteArray());
    a(localWXMediaMessage, "filedata", paramInt, paramk);
  }

  private void c(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt, k paramk)
  {
    WXFileObject localWXFileObject = new WXFileObject();
    localWXFileObject.filePath = paramString3;
    WXMediaMessage localWXMediaMessage = new WXMediaMessage();
    localWXMediaMessage.title = paramString1;
    localWXMediaMessage.description = paramString2;
    localWXMediaMessage.mediaObject = localWXFileObject;
    localWXMediaMessage.thumbData = b(paramContext, paramString4);
    a(localWXMediaMessage, "filedata", paramInt, paramk);
  }

  public void a(k paramk)
  {
    this.d = paramk;
    a locala = new a();
    locala.a = "snsapi_userinfo";
    locala.b = "sharesdk_wechat_auth";
    this.c.a(locala);
  }

  public void a(k paramk, Platform.ShareParams paramShareParams, PlatformActionListener paramPlatformActionListener)
  {
    Platform localPlatform = paramk.b();
    String str1 = paramShareParams.getImagePath();
    String str2 = paramShareParams.getImageUrl();
    Intent localIntent;
    File localFile1;
    File localFile2;
    if ((TextUtils.isEmpty(str1)) || (!new File(str1).exists()))
    {
      Bitmap localBitmap = paramShareParams.getImageData();
      if ((localBitmap != null) && (!localBitmap.isRecycled()))
      {
        File localFile3 = new File(com.arcsoft.hpay100.a.a.h(localPlatform.getContext(), "images"), System.currentTimeMillis() + ".png");
        FileOutputStream localFileOutputStream = new FileOutputStream(localFile3);
        localBitmap.compress(Bitmap.CompressFormat.PNG, 100, localFileOutputStream);
        localFileOutputStream.flush();
        localFileOutputStream.close();
        str1 = localFile3.getAbsolutePath();
      }
    }
    else
    {
      localIntent = new Intent("android.intent.action.SEND");
      String str3 = localPlatform.getShortLintk(paramShareParams.getText(), false);
      localIntent.putExtra("android.intent.extra.TEXT", str3);
      localIntent.putExtra("Kdescription", str3);
      if (TextUtils.isEmpty(str1))
        break label494;
      localFile1 = new File(str1);
      if (localFile1.exists())
      {
        if (!str1.startsWith("/data/"))
          break label540;
        localFile2 = new File(com.arcsoft.hpay100.a.a.h(localPlatform.getContext(), "images"), System.currentTimeMillis() + localFile1.getName());
        String str6 = localFile2.getAbsolutePath();
        localFile2.createNewFile();
        if (!com.arcsoft.hpay100.a.a.g(str1, str6))
          break label540;
      }
    }
    while (true)
    {
      localIntent.putExtra("android.intent.extra.STREAM", Uri.fromFile(localFile2));
      String str7 = URLConnection.getFileNameMap().getContentTypeFor(str1);
      if ((str7 == null) || (str7.length() <= 0))
        str7 = "image/*";
      localIntent.setType(str7);
      label345: if (((Integer)paramShareParams.get("scene", Integer.class)).intValue() == 1);
      com.mob.tools.b.a locala;
      String str5;
      HashMap localHashMap;
      for (String str4 = "com.tencent.mm.ui.tools.ShareToTimeLineUI"; ; str4 = "com.tencent.mm.ui.tools.ShareImgUI")
      {
        localIntent.setClassName("com.tencent.mm", str4);
        localIntent.addFlags(268435456);
        localPlatform.getContext().startActivity(localIntent);
        locala = com.mob.tools.b.a.a(localPlatform.getContext());
        str5 = localPlatform.getContext().getPackageName();
        localHashMap = new HashMap();
        localHashMap.put("ShareParams", paramShareParams);
        if (!TextUtils.isEmpty(locala.o()))
          break label514;
        if ((paramPlatformActionListener != null) && (paramPlatformActionListener != null))
          paramPlatformActionListener.onComplete(localPlatform, 9, localHashMap);
        return;
        if (TextUtils.isEmpty(str2))
          break;
        str1 = com.arcsoft.hpay100.a.a.c(localPlatform.getContext(), str2);
        break;
        label494: localIntent.setType("text/plain");
        break label345;
      }
      label514: com.mob.tools.b.j.a(0, 2000L, new l(this, locala, str5, paramPlatformActionListener, localPlatform, localHashMap));
      return;
      label540: localFile2 = localFile1;
    }
  }

  public boolean a(Context paramContext, String paramString)
  {
    return this.c.a(paramContext, paramString);
  }

  public boolean a(WechatHandlerActivity paramWechatHandlerActivity)
  {
    return this.c.a(paramWechatHandlerActivity, this.d);
  }

  public void b(k paramk)
  {
    Platform localPlatform = paramk.b();
    Platform.ShareParams localShareParams = paramk.a();
    PlatformActionListener localPlatformActionListener = paramk.c();
    int i = localShareParams.getShareType();
    String str1 = localShareParams.getTitle();
    String str2 = localShareParams.getText();
    int j = localShareParams.getScence();
    String str3 = localShareParams.getImagePath();
    String str4 = localShareParams.getImageUrl();
    Bitmap localBitmap = localShareParams.getImageData();
    String str5 = localShareParams.getMusicUrl();
    String str6 = localShareParams.getUrl();
    String str7 = localShareParams.getFilePath();
    String str8 = localShareParams.getExtInfo();
    Context localContext = localPlatform.getContext();
    switch (i)
    {
    case 3:
    default:
      if (localPlatformActionListener != null)
        localPlatformActionListener.onError(localPlatform, 9, new IllegalArgumentException("shareType = " + i));
      return;
    case 1:
      a(str1, str2, j, paramk);
      return;
    case 2:
      if ((str3 != null) && (str3.length() > 0))
      {
        a(localContext, str1, str2, str3, j, paramk);
        return;
      }
      if ((localBitmap != null) && (!localBitmap.isRecycled()))
      {
        a(localContext, str1, str2, localBitmap, j, paramk);
        return;
      }
      if ((str4 != null) && (str4.length() > 0))
      {
        a(localContext, str1, str2, com.arcsoft.hpay100.a.a.c(localPlatform.getContext(), str4), j, paramk);
        return;
      }
      a(localContext, str1, str2, "", j, paramk);
      return;
    case 5:
      String str11 = localPlatform.getShortLintk(str5 + " " + str6, false);
      String str12 = str11.split(" ")[0];
      String str13 = str11.split(" ")[1];
      if ((str3 != null) && (str3.length() > 0))
      {
        a(localContext, str1, str2, str12, str13, str3, j, paramk);
        return;
      }
      if ((localBitmap != null) && (!localBitmap.isRecycled()))
      {
        a(localContext, str1, str2, str12, str13, localBitmap, j, paramk);
        return;
      }
      if ((str4 != null) && (str4.length() > 0))
      {
        a(localContext, str1, str2, str12, str13, com.arcsoft.hpay100.a.a.c(localPlatform.getContext(), str4), j, paramk);
        return;
      }
      a(localContext, str1, str2, str12, str13, "", j, paramk);
      return;
    case 6:
      String str10 = localPlatform.getShortLintk(str6, false);
      if ((str3 != null) && (str3.length() > 0))
      {
        a(localContext, str1, str2, str10, str3, j, paramk);
        return;
      }
      if ((localBitmap != null) && (!localBitmap.isRecycled()))
      {
        a(localContext, str1, str2, str10, localBitmap, j, paramk);
        return;
      }
      if ((str4 != null) && (str4.length() > 0))
      {
        a(localContext, str1, str2, str10, com.arcsoft.hpay100.a.a.c(localPlatform.getContext(), str4), j, paramk);
        return;
      }
      a(localContext, str1, str2, str10, "", j, paramk);
      return;
    case 4:
      String str9 = localPlatform.getShortLintk(str6, false);
      if ((str3 != null) && (str3.length() > 0))
      {
        b(localContext, str1, str2, str9, str3, j, paramk);
        return;
      }
      if ((localBitmap != null) && (!localBitmap.isRecycled()))
      {
        b(localContext, str1, str2, str9, localBitmap, j, paramk);
        return;
      }
      if ((str4 != null) && (str4.length() > 0))
      {
        b(localContext, str1, str2, str9, com.arcsoft.hpay100.a.a.c(localPlatform.getContext(), str4), j, paramk);
        return;
      }
      b(localContext, str1, str2, str9, "", j, paramk);
      return;
    case 7:
      if (j == 1)
        throw new Throwable("WechatMoments does not support SAHRE_APP");
      if (j == 2)
        throw new Throwable("WechatFavorite does not support SAHRE_APP");
      if ((str3 != null) && (str3.length() > 0))
      {
        b(localContext, str1, str2, str7, str8, str3, j, paramk);
        return;
      }
      if ((localBitmap != null) && (!localBitmap.isRecycled()))
      {
        b(localContext, str1, str2, str7, str8, localBitmap, j, paramk);
        return;
      }
      if ((str4 != null) && (str4.length() > 0))
      {
        b(localContext, str1, str2, str7, str8, com.arcsoft.hpay100.a.a.c(localPlatform.getContext(), str4), j, paramk);
        return;
      }
      b(localContext, str1, str2, str7, str8, "", j, paramk);
      return;
    case 8:
      if (j == 1)
        throw new Throwable("WechatMoments does not support SHARE_FILE");
      if ((str3 != null) && (str3.length() > 0))
      {
        c(localContext, str1, str2, str7, str3, j, paramk);
        return;
      }
      if ((localBitmap != null) && (!localBitmap.isRecycled()))
      {
        c(localContext, str1, str2, str7, localBitmap, j, paramk);
        return;
      }
      if ((str4 != null) && (str4.length() > 0))
      {
        c(localContext, str1, str2, str7, com.arcsoft.hpay100.a.a.c(localPlatform.getContext(), str4), j, paramk);
        return;
      }
      c(localContext, str1, str2, str7, "", j, paramk);
      return;
    case 9:
    }
    if (j == 1)
      throw new Throwable("WechatMoments does not support SHARE_EMOJI");
    if (j == 2)
      throw new Throwable("WechatFavorite does not support SHARE_EMOJI");
    if ((str3 != null) && (str3.length() > 0))
    {
      b(localContext, str1, str2, str3, j, paramk);
      return;
    }
    if ((str4 != null) && (str4.length() > 0))
    {
      b(localContext, str1, str2, com.arcsoft.hpay100.a.a.c(localPlatform.getContext(), str4), j, paramk);
      return;
    }
    if ((localBitmap != null) && (!localBitmap.isRecycled()))
    {
      b(localContext, str1, str2, localBitmap, j, paramk);
      return;
    }
    b(localContext, str1, str2, "", j, paramk);
  }

  public boolean b()
  {
    return this.c.a();
  }

  public boolean c()
  {
    return this.c.b();
  }

  public boolean d()
  {
    return this.c.c();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.wechat.utils.WechatHelper
 * JD-Core Version:    0.6.0
 */