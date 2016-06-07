package com.ximalaya.ting.android.player;

public enum XMediaplayerJNI$AudioType
{
  private int value = 0;

  static
  {
    M3U8_STATIC_FILE = new AudioType("M3U8_STATIC_FILE", 1, 1);
    HLS_FILE = new AudioType("HLS_FILE", 2, 2);
    M3U8_FILE = new AudioType("M3U8_FILE", 3, 3);
    AudioType[] arrayOfAudioType = new AudioType[4];
    arrayOfAudioType[0] = NORMAL_FILE;
    arrayOfAudioType[1] = M3U8_STATIC_FILE;
    arrayOfAudioType[2] = HLS_FILE;
    arrayOfAudioType[3] = M3U8_FILE;
    ENUM$VALUES = arrayOfAudioType;
  }

  private XMediaplayerJNI$AudioType(int arg3)
  {
    int j;
    this.value = j;
  }

  public static AudioType valueOf(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return null;
    case 0:
      return NORMAL_FILE;
    case 1:
      return M3U8_STATIC_FILE;
    case 2:
      return HLS_FILE;
    case 3:
    }
    return M3U8_FILE;
  }

  public final int value()
  {
    return this.value;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.player.XMediaplayerJNI.AudioType
 * JD-Core Version:    0.6.0
 */