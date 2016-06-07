package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.BookReview;
import com.clilystudio.netbook.model.BookReviewRoot;

final class ah extends e<String, Void, BookReview[]>
{
  private ah(BestReviewsFragment paramBestReviewsFragment)
  {
  }

  private static BookReview[] a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      BookReviewRoot localBookReviewRoot = b.b().C(paramArrayOfString[0]);
      if ((localBookReviewRoot != null) && (localBookReviewRoot.ok) && (localBookReviewRoot.reviews != null))
      {
        BookReview[] arrayOfBookReview = localBookReviewRoot.reviews;
        return arrayOfBookReview;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.ah
 * JD-Core Version:    0.6.0
 */