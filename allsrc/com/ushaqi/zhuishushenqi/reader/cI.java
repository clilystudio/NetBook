package com.ushaqi.zhuishushenqi.reader;

import android.app.Activity;
import com.ushaqi.zhuishushenqi.a.c;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.mixtoc.EsTocRoot;

final class cI extends c<String, EsTocRoot>
{
  private int a;

  public cI(ReaderWebActivity paramReaderWebActivity, Activity paramActivity, int paramInt)
  {
    super(paramActivity, 2131034218);
    this.a = paramInt;
  }

  private EsTocRoot a(String[] paramArrayOfString)
  {
    try
    {
      EsTocRoot localEsTocRoot = b.b().v(paramArrayOfString[0]);
      return localEsTocRoot;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.cI
 * JD-Core Version:    0.6.0
 */