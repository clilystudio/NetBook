package com.clilystudio.app.netbook.reader;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.PurchaseChapterResult;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.J
 * JD-Core Version:    0.6.2
 */