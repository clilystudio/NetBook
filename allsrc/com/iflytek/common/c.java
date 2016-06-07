package com.iflytek.common;

import android.util.Log;
import com.iflytek.common.b.a;

final class c
{
  static a a;

  protected static a a()
  {
    if (a != null)
      return a;
    try
    {
      a locala1 = (a)Class.forName("com.iflytek.common.push.impl.PushImpl").newInstance();
      a = locala1;
      if (locala1 != null)
      {
        a locala2 = a;
        return locala2;
      }
    }
    catch (Exception localException)
    {
      Log.e("PushFactory", "getPushInstance not found push instance.");
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.common.c
 * JD-Core Version:    0.6.0
 */