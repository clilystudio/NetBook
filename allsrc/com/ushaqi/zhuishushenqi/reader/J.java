package com.ushaqi.zhuishushenqi.reader;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.PurchaseChapterResult;

final class J extends e<String, Void, PurchaseChapterResult>
{
  private ReaderChapter a;

  public J(o paramo, ReaderChapter paramReaderChapter)
  {
    this.a = paramReaderChapter;
  }

  private static PurchaseChapterResult a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      PurchaseChapterResult localPurchaseChapterResult = b.b().a(paramArrayOfString[0], paramArrayOfString[1], 1);
      return localPurchaseChapterResult;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  protected final void onCancelled()
  {
    super.onCancelled();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.J
 * JD-Core Version:    0.6.0
 */