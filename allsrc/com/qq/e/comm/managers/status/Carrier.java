package com.qq.e.comm.managers.status;

public enum Carrier
{
  private int a;

  static
  {
    CMCC = new Carrier("CMCC", 1, 1);
    UNICOM = new Carrier("UNICOM", 2, 2);
    TELECOM = new Carrier("TELECOM", 3, 3);
    Carrier[] arrayOfCarrier = new Carrier[4];
    arrayOfCarrier[0] = UNKNOWN;
    arrayOfCarrier[1] = CMCC;
    arrayOfCarrier[2] = UNICOM;
    arrayOfCarrier[3] = TELECOM;
    b = arrayOfCarrier;
  }

  private Carrier(int paramInt)
  {
    this.a = paramInt;
  }

  public final int getValue()
  {
    return this.a;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.comm.managers.status.Carrier
 * JD-Core Version:    0.6.0
 */