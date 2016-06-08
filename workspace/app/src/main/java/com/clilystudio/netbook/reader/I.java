package com.clilystudio.netbook.reader;

import android.app.Activity;
import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PurchaseChapterResult;

final class I extends c<String, PurchaseChapterResult>
{
  public I(o paramo, Activity paramActivity, String paramString)
  {
    super(paramActivity, paramString);
  }

  private static PurchaseChapterResult a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      PurchaseChapterResult localPurchaseChapterResult = b.b().a(paramArrayOfString[0], paramArrayOfString[1], 0);
      return localPurchaseChapterResult;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.I
 * JD-Core Version:    0.6.0
 */