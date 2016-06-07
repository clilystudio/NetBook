package cn.sharesdk.onekeyshare;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.text.TextUtils;
import cn.sharesdk.framework.CustomPlatform;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.Platform.ShareParams;
import cn.sharesdk.framework.ShareSDK;
import com.arcsoft.hpay100.a.a;
import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;

public class ShareCore
{
  private ShareContentCustomizeCallback customizeCallback;

  public static boolean canAuthorize(Context paramContext, String paramString)
  {
    return ((!"WechatMoments".equals(paramString)) && (!"WechatFavorite".equals(paramString)) && (!"ShortMessage".equals(paramString)) && (!"Email".equals(paramString)) && (!"Pinterest".equals(paramString)) && (!"Yixin".equals(paramString)) && (!"YixinMoments".equals(paramString)) && (!"Line".equals(paramString)) && (!"Bluetooth".equals(paramString)) && (!"WhatsApp".equals(paramString)) && (!"BaiduTieba".equals(paramString))) || ("Laiwang".equals(paramString)) || ("LaiwangMoments".equals(paramString));
  }

  public static boolean canGetUserInfo(Context paramContext, String paramString)
  {
    return (!"WechatMoments".equals(paramString)) && (!"WechatFavorite".equals(paramString)) && (!"ShortMessage".equals(paramString)) && (!"Email".equals(paramString)) && (!"Pinterest".equals(paramString)) && (!"Yixin".equals(paramString)) && (!"YixinMoments".equals(paramString)) && (!"Line".equals(paramString)) && (!"Bluetooth".equals(paramString)) && (!"WhatsApp".equals(paramString)) && (!"Pocket".equals(paramString)) && (!"BaiduTieba".equals(paramString)) && (!"Laiwang".equals(paramString)) && (!"LaiwangMoments".equals(paramString));
  }

  public static boolean isDirectShare(Platform paramPlatform)
  {
    return ((paramPlatform instanceof CustomPlatform)) || (isUseClientToShare(paramPlatform.getName()));
  }

  public static boolean isUseClientToShare(String paramString)
  {
    if (("Wechat".equals(paramString)) || ("WechatMoments".equals(paramString)) || ("WechatFavorite".equals(paramString)) || ("ShortMessage".equals(paramString)) || ("Email".equals(paramString)) || ("GooglePlus".equals(paramString)) || ("QQ".equals(paramString)) || ("Pinterest".equals(paramString)) || ("Instagram".equals(paramString)) || ("Yixin".equals(paramString)) || ("YixinMoments".equals(paramString)) || ("QZone".equals(paramString)) || ("Mingdao".equals(paramString)) || ("Line".equals(paramString)) || ("KakaoStory".equals(paramString)) || ("KakaoTalk".equals(paramString)) || ("Bluetooth".equals(paramString)) || ("WhatsApp".equals(paramString)) || ("BaiduTieba".equals(paramString)) || ("Laiwang".equals(paramString)) || ("LaiwangMoments".equals(paramString)));
    Platform localPlatform;
    Intent localIntent;
    do
    {
      do
      {
        return true;
        if (!"Evernote".equals(paramString))
          break;
      }
      while ("true".equals(ShareSDK.getPlatform(paramString).getDevinfo("ShareByAppClient")));
      do
      {
        do
          return false;
        while (!"SinaWeibo".equals(paramString));
        localPlatform = ShareSDK.getPlatform(paramString);
      }
      while (!"true".equals(localPlatform.getDevinfo("ShareByAppClient")));
      localIntent = new Intent("android.intent.action.SEND");
      localIntent.setPackage("com.sina.weibo");
      localIntent.setType("image/*");
    }
    while (localPlatform.getContext().getPackageManager().resolveActivity(localIntent, 0) != null);
    return false;
  }

  public void setShareContentCustomizeCallback(ShareContentCustomizeCallback paramShareContentCustomizeCallback)
  {
    this.customizeCallback = paramShareContentCustomizeCallback;
  }

  public boolean share(Platform paramPlatform, HashMap<String, Object> paramHashMap)
  {
    if ((paramPlatform == null) || (paramHashMap == null))
      return false;
    try
    {
      String str = (String)paramHashMap.get("imagePath");
      Bitmap localBitmap = (Bitmap)paramHashMap.get("viewToShare");
      if ((TextUtils.isEmpty(str)) && (localBitmap != null) && (!localBitmap.isRecycled()))
      {
        File localFile = new File(a.h(paramPlatform.getContext(), "screenshot"), String.valueOf(System.currentTimeMillis()) + ".jpg");
        FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
        localBitmap.compress(Bitmap.CompressFormat.JPEG, 100, localFileOutputStream);
        localFileOutputStream.flush();
        localFileOutputStream.close();
        paramHashMap.put("imagePath", localFile.getAbsolutePath());
      }
      Platform.ShareParams localShareParams = new Platform.ShareParams(paramHashMap);
      if (this.customizeCallback != null)
        this.customizeCallback.onShare(paramPlatform, localShareParams);
      paramPlatform.share(localShareParams);
      return true;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.onekeyshare.ShareCore
 * JD-Core Version:    0.6.0
 */