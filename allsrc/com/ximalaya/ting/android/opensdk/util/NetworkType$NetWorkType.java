package com.ximalaya.ting.android.opensdk.util;

public enum NetworkType$NetWorkType
{
  private int index;
  private String name;

  static
  {
    NETWORKTYPE_2G = new NetWorkType("NETWORKTYPE_2G", 2, "2g", 3);
    NETWORKTYPE_3G = new NetWorkType("NETWORKTYPE_3G", 3, "3g", 4);
    NETWORKTYPE_WIFI = new NetWorkType("NETWORKTYPE_WIFI", 4, "wifi", 5);
    NetWorkType[] arrayOfNetWorkType = new NetWorkType[5];
    arrayOfNetWorkType[0] = NETWORKTYPE_INVALID;
    arrayOfNetWorkType[1] = NETWORKTYPE_WAP;
    arrayOfNetWorkType[2] = NETWORKTYPE_2G;
    arrayOfNetWorkType[3] = NETWORKTYPE_3G;
    arrayOfNetWorkType[4] = NETWORKTYPE_WIFI;
    ENUM$VALUES = arrayOfNetWorkType;
  }

  private NetworkType$NetWorkType(String arg3, int arg4)
  {
    Object localObject;
    this.name = localObject;
    int i;
    this.index = i;
  }

  public static String getName(int paramInt)
  {
    NetWorkType[] arrayOfNetWorkType = values();
    int i = arrayOfNetWorkType.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return null;
      NetWorkType localNetWorkType = arrayOfNetWorkType[j];
      if (localNetWorkType.getIndex() == paramInt)
        return localNetWorkType.name;
    }
  }

  public final int getIndex()
  {
    return this.index;
  }

  public final String getName()
  {
    return this.name;
  }

  public final void setIndex(int paramInt)
  {
    this.index = paramInt;
  }

  public final void setName(String paramString)
  {
    this.name = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.util.NetworkType.NetWorkType
 * JD-Core Version:    0.6.0
 */