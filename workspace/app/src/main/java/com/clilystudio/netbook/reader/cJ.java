package com.clilystudio.netbook.reader;

import android.app.Activity;
import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.model.mixtoc.SgTocRoot;

final class cJ extends c<String, SgTocRoot>
{
  private int a;
  private String b;

  public cJ(ReaderWebActivity paramReaderWebActivity, Activity paramActivity, int paramInt, String paramString)
  {
    super(paramActivity, 2131034218);
    this.a = paramInt;
    this.b = paramString;
  }

  private SgTocRoot a(String[] paramArrayOfString)
  {
    try
    {
      SgTocRoot localSgTocRoot = b.b().s(paramArrayOfString[0]);
      return localSgTocRoot;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.cJ
 * JD-Core Version:    0.6.0
 */