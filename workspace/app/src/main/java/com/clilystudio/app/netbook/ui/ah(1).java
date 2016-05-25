package com.clilystudio.app.netbook.ui;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.BookReview;
import com.clilystudio.app.netbook.model.BookReviewRoot;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ah
 * JD-Core Version:    0.6.2
 */