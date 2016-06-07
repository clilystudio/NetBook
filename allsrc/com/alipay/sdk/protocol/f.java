package com.alipay.sdk.protocol;

public enum f
{
  private String e;

  static
  {
    f[] arrayOff = new f[4];
    arrayOff[0] = a;
    arrayOff[1] = b;
    arrayOff[2] = c;
    arrayOff[3] = d;
    f = arrayOff;
  }

  private f(String paramString)
  {
    this.e = paramString;
  }

  public static f a(String paramString)
  {
    Object localObject1 = null;
    f[] arrayOff = values();
    int i = arrayOff.length;
    int j = 0;
    Object localObject2;
    if (j < i)
    {
      localObject2 = arrayOff[j];
      if (!paramString.startsWith(((f)localObject2).e))
        break label47;
    }
    while (true)
    {
      j++;
      localObject1 = localObject2;
      break;
      return localObject1;
      label47: localObject2 = localObject1;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.protocol.f
 * JD-Core Version:    0.6.0
 */