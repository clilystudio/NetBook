package com.clilystudio.netbook.reader;

import android.app.Activity;
import com.clilystudio.netbook.a.c;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.mixtoc.EsTocRoot;

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
 * Qualified Name:     com.clilystudio.netbook.reader.cI
 * JD-Core Version:    0.6.0
 */