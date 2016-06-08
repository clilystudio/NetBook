package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.BookReview;
import com.clilystudio.netbook.model.BookReviewRoot;

final class aI extends e<String, Void, BookReview[]>
{
  private aI(BookReviewListFragment paramBookReviewListFragment)
  {
  }

  private static BookReview[] a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      BookReviewRoot localBookReviewRoot = b.b().c(paramArrayOfString[0], paramArrayOfString[1], 0, 20);
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
 * Qualified Name:     com.clilystudio.netbook.ui.post.aI
 * JD-Core Version:    0.6.0
 */