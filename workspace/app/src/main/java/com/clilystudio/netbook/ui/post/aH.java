package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.BookReview;
import com.clilystudio.netbook.model.BookReviewRoot;
import java.util.List;

final class aH extends e<String, Void, BookReview[]>
{
  private aH(BookReviewListFragment paramBookReviewListFragment)
  {
  }

  private BookReview[] a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      BookReviewRoot localBookReviewRoot = b.b().c(paramArrayOfString[0], paramArrayOfString[1], BookReviewListFragment.d(this.a).size(), 20);
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
 * Qualified Name:     com.clilystudio.netbook.ui.post.aH
 * JD-Core Version:    0.6.0
 */