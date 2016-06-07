package cn.sharesdk.wechat.utils;

import android.os.Bundle;
import android.text.TextUtils;
import java.io.File;

public class WXEmojiObject
  implements WXMediaMessage.IMediaObject
{
  public byte[] emojiData;
  public String emojiPath;

  public WXEmojiObject()
  {
  }

  public WXEmojiObject(String paramString)
  {
    this.emojiPath = paramString;
  }

  public WXEmojiObject(byte[] paramArrayOfByte)
  {
    this.emojiData = paramArrayOfByte;
  }

  public boolean checkArgs()
  {
    if (((this.emojiData == null) || (this.emojiData.length == 0)) && (TextUtils.isEmpty(this.emojiPath)))
    {
      cn.sharesdk.framework.utils.d.a().w("MicroMsg.SDK.WXEmojiObject", new Object[] { "checkArgs fail, both arguments is null" });
      return false;
    }
    if ((this.emojiData != null) && (this.emojiData.length > 10485760))
    {
      cn.sharesdk.framework.utils.d.a().w("MicroMsg.SDK.WXEmojiObject", new Object[] { "checkArgs fail, emojiData is too large" });
      return false;
    }
    if (this.emojiPath != null)
    {
      File localFile = new File(this.emojiPath);
      if (!localFile.exists())
      {
        cn.sharesdk.framework.utils.d.a().w("MicroMsg.SDK.WXEmojiObject", new Object[] { "checkArgs fail, emojiPath not found" });
        return false;
      }
      if (localFile.length() > 10485760L)
      {
        cn.sharesdk.framework.utils.d.a().w("MicroMsg.SDK.WXEmojiObject", new Object[] { "checkArgs fail, emojiSize is too large" });
        return false;
      }
    }
    return true;
  }

  public void serialize(Bundle paramBundle)
  {
    paramBundle.putByteArray("_wxemojiobject_emojiData", this.emojiData);
    paramBundle.putString("_wxemojiobject_emojiPath", this.emojiPath);
  }

  public void setEmojiData(byte[] paramArrayOfByte)
  {
    this.emojiData = paramArrayOfByte;
  }

  public void setEmojiPath(String paramString)
  {
    this.emojiPath = paramString;
  }

  public int type()
  {
    return 8;
  }

  public void unserialize(Bundle paramBundle)
  {
    this.emojiData = paramBundle.getByteArray("_wxemojiobject_emojiData");
    this.emojiPath = paramBundle.getString("_wxemojiobject_emojiPath");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.wechat.utils.WXEmojiObject
 * JD-Core Version:    0.6.0
 */