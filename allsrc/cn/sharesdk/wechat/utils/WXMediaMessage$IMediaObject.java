package cn.sharesdk.wechat.utils;

import android.os.Bundle;

public abstract interface WXMediaMessage$IMediaObject
{
  public static final int TYPE_APPDATA = 7;
  public static final int TYPE_EMOJI = 8;
  public static final int TYPE_FILE = 6;
  public static final int TYPE_IMAGE = 2;
  public static final int TYPE_MUSIC = 3;
  public static final int TYPE_TEXT = 1;
  public static final int TYPE_UNKNOWN = 0;
  public static final int TYPE_URL = 5;
  public static final int TYPE_VIDEO = 4;

  public abstract boolean checkArgs();

  public abstract void serialize(Bundle paramBundle);

  public abstract int type();

  public abstract void unserialize(Bundle paramBundle);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.wechat.utils.WXMediaMessage.IMediaObject
 * JD-Core Version:    0.6.0
 */