package com.ushaqi.zhuishushenqi.ui;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.SecretAppItemRoot;
import java.io.IOException;

final class bp extends e<String, Void, SecretAppItemRoot>
{
  private bp(MysteryActivity paramMysteryActivity)
  {
  }

  private SecretAppItemRoot a()
  {
    MysteryActivity.a(this.a, true);
    try
    {
      SecretAppItemRoot localSecretAppItemRoot = b.b().n();
      return localSecretAppItemRoot;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }

  protected final void onPreExecute()
  {
    super.onPreExecute();
    this.a.i();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.bp
 * JD-Core Version:    0.6.0
 */