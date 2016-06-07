package com.qq.e.comm.managers.status;

public enum NetworkType
{
  private int a;
  private int b;

  static
  {
    NET_2G = new NetworkType("NET_2G", 2, 2, 4);
    NET_3G = new NetworkType("NET_3G", 3, 3, 8);
    NET_4G = new NetworkType("NET_4G", 4, 4, 16);
    NetworkType[] arrayOfNetworkType = new NetworkType[5];
    arrayOfNetworkType[0] = UNKNOWN;
    arrayOfNetworkType[1] = WIFI;
    arrayOfNetworkType[2] = NET_2G;
    arrayOfNetworkType[3] = NET_3G;
    arrayOfNetworkType[4] = NET_4G;
    c = arrayOfNetworkType;
  }

  private NetworkType(int paramInt1, int paramInt2)
  {
    this.a = paramInt1;
    this.b = paramInt2;
  }

  public final int getConnValue()
  {
    return this.a;
  }

  public final int getPermValue()
  {
    return this.b;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.comm.managers.status.NetworkType
 * JD-Core Version:    0.6.0
 */