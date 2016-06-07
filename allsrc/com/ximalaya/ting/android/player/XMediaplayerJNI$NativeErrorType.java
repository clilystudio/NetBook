package com.ximalaya.ting.android.player;

public enum XMediaplayerJNI$NativeErrorType
{
  private int value = 0;

  static
  {
    ERR_NOTOK = new NativeErrorType("ERR_NOTOK", 1, -1);
    ERR_DECODE_NOT_SUPPORT = new NativeErrorType("ERR_DECODE_NOT_SUPPORT", 2, -2);
    ERR_M3U8_FILE_CONTENT_INVALID = new NativeErrorType("ERR_M3U8_FILE_CONTENT_INVALID", 3, -3);
    ERR_FILE_MANAGER_INNER_ERR = new NativeErrorType("ERR_FILE_MANAGER_INNER_ERR", 4, -4);
    ERR_DECODEDATA_FILLIO_FAIL = new NativeErrorType("ERR_DECODEDATA_FILLIO_FAIL", 5, -5);
    ERR_M3U8STREAM_FILLIO_FAIL = new NativeErrorType("ERR_M3U8STREAM_FILLIO_FAIL", 6, -6);
    ERR_ARCH_NOT_SUPPORT = new NativeErrorType("ERR_ARCH_NOT_SUPPORT", 7, -7);
    NativeErrorType[] arrayOfNativeErrorType = new NativeErrorType[8];
    arrayOfNativeErrorType[0] = NO_ERR;
    arrayOfNativeErrorType[1] = ERR_NOTOK;
    arrayOfNativeErrorType[2] = ERR_DECODE_NOT_SUPPORT;
    arrayOfNativeErrorType[3] = ERR_M3U8_FILE_CONTENT_INVALID;
    arrayOfNativeErrorType[4] = ERR_FILE_MANAGER_INNER_ERR;
    arrayOfNativeErrorType[5] = ERR_DECODEDATA_FILLIO_FAIL;
    arrayOfNativeErrorType[6] = ERR_M3U8STREAM_FILLIO_FAIL;
    arrayOfNativeErrorType[7] = ERR_ARCH_NOT_SUPPORT;
    ENUM$VALUES = arrayOfNativeErrorType;
  }

  private XMediaplayerJNI$NativeErrorType(int arg3)
  {
    int j;
    this.value = j;
  }

  public static NativeErrorType valueOf(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return null;
    case 0:
      return NO_ERR;
    case -1:
      return ERR_NOTOK;
    case -2:
      return ERR_DECODE_NOT_SUPPORT;
    case -3:
      return ERR_M3U8_FILE_CONTENT_INVALID;
    case -4:
      return ERR_FILE_MANAGER_INNER_ERR;
    case -5:
      return ERR_DECODEDATA_FILLIO_FAIL;
    case -6:
      return ERR_M3U8STREAM_FILLIO_FAIL;
    case -7:
    }
    return ERR_ARCH_NOT_SUPPORT;
  }

  public final int value()
  {
    return this.value;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.player.XMediaplayerJNI.NativeErrorType
 * JD-Core Version:    0.6.0
 */