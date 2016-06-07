package cn.sharesdk.wechat.utils;

import android.os.Bundle;

public class WXVideoObject
  implements WXMediaMessage.IMediaObject
{
  public String videoLowBandUrl;
  public String videoUrl;

  public boolean checkArgs()
  {
    if (((this.videoUrl == null) || (this.videoUrl.length() == 0)) && ((this.videoLowBandUrl == null) || (this.videoLowBandUrl.length() == 0)))
    {
      cn.sharesdk.framework.utils.d.a().w("both arguments are null", new Object[0]);
      return false;
    }
    if ((this.videoUrl != null) && (this.videoUrl.length() > 10240))
    {
      cn.sharesdk.framework.utils.d.a().w("checkArgs fail, videoUrl is too long", new Object[0]);
      return false;
    }
    if ((this.videoLowBandUrl != null) && (this.videoLowBandUrl.length() > 10240))
    {
      cn.sharesdk.framework.utils.d.a().w("checkArgs fail, videoLowBandUrl is too long", new Object[0]);
      return false;
    }
    return true;
  }

  public void serialize(Bundle paramBundle)
  {
    paramBundle.putString("_wxvideoobject_videoUrl", this.videoUrl);
    paramBundle.putString("_wxvideoobject_videoLowBandUrl", this.videoLowBandUrl);
  }

  public int type()
  {
    return 4;
  }

  public void unserialize(Bundle paramBundle)
  {
    this.videoUrl = paramBundle.getString("_wxvideoobject_videoUrl");
    this.videoLowBandUrl = paramBundle.getString("_wxvideoobject_videoLowBandUrl");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.wechat.utils.WXVideoObject
 * JD-Core Version:    0.6.0
 */