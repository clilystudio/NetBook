package com.ushaqi.zhuishushenqi.a;

import android.app.Activity;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.TocSourceRoot;

public abstract class a extends c<String, TocSourceRoot>
{
  public a(Activity paramActivity, boolean paramBoolean)
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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.a.a
 * JD-Core Version:    0.6.0
 */