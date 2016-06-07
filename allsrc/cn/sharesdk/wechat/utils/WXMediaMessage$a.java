package cn.sharesdk.wechat.utils;

import android.os.Bundle;

public class WXMediaMessage$a
{
  public static Bundle a(WXMediaMessage paramWXMediaMessage)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("_wxobject_sdkVer", paramWXMediaMessage.sdkVer);
    localBundle.putString("_wxobject_title", paramWXMediaMessage.title);
    localBundle.putString("_wxobject_description", paramWXMediaMessage.description);
    localBundle.putByteArray("_wxobject_thumbdata", paramWXMediaMessage.thumbData);
    if (paramWXMediaMessage.mediaObject != null)
    {
      localBundle.putString("_wxobject_identifier_", "com.tencent.mm.sdk.openapi." + paramWXMediaMessage.mediaObject.getClass().getSimpleName());
      paramWXMediaMessage.mediaObject.serialize(localBundle);
    }
    return localBundle;
  }

  public static WXMediaMessage a(Bundle paramBundle)
  {
    WXMediaMessage localWXMediaMessage = new WXMediaMessage();
    localWXMediaMessage.sdkVer = paramBundle.getInt("_wxobject_sdkVer");
    localWXMediaMessage.title = paramBundle.getString("_wxobject_title");
    localWXMediaMessage.description = paramBundle.getString("_wxobject_description");
    localWXMediaMessage.thumbData = paramBundle.getByteArray("_wxobject_thumbdata");
    String str = paramBundle.getString("_wxobject_identifier_");
    if ((str == null) || (str.length() <= 0))
      return localWXMediaMessage;
    try
    {
      str = str.replace("com.tencent.mm.sdk.openapi", "cn.sharesdk.wechat.utils");
      localWXMediaMessage.mediaObject = ((WXMediaMessage.IMediaObject)Class.forName(str).newInstance());
      localWXMediaMessage.mediaObject.unserialize(paramBundle);
      return localWXMediaMessage;
    }
    catch (Exception localException)
    {
      cn.sharesdk.framework.utils.d.a().w(localException);
      cn.sharesdk.framework.utils.d.a().w("get media object from bundle failed: unknown ident " + str, new Object[0]);
    }
    return localWXMediaMessage;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.wechat.utils.WXMediaMessage.a
 * JD-Core Version:    0.6.0
 */