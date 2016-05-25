package com.clilystudio.app.netbook.a_packA;

import android.app.Activity;

import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.TocSourceRoot;

public abstract class a_BaseTocSourceRoot extends c<String, TocSourceRoot>
{
  public a_BaseTocSourceRoot(Activity paramActivity, boolean paramBoolean)
  {
    super(paramActivity, 2131034218, paramBoolean);
  }

  private static TocSourceRoot a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      TocSourceRoot localTocSourceRoot = b.b().g(paramArrayOfString[0]);
      return localTocSourceRoot;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  protected void a()
  {
  }

  protected abstract void a(TocSourceRoot paramTocSourceRoot);
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.a.a
 * JD-Core Version:    0.6.2
 */