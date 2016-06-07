package com.qq.e.comm.net;

public enum NetworkClient$Priority
{
  private int a;

  static
  {
    Low = new Priority("Low", 2, 3);
    Priority[] arrayOfPriority = new Priority[3];
    arrayOfPriority[0] = High;
    arrayOfPriority[1] = Mid;
    arrayOfPriority[2] = Low;
    b = arrayOfPriority;
  }

  private NetworkClient$Priority(int paramInt)
  {
    this.a = paramInt;
  }

  public final int value()
  {
    return this.a;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.comm.net.NetworkClient.Priority
 * JD-Core Version:    0.6.0
 */