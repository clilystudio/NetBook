package com.ushaqi.zhuishushenqi.ui.post;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.BookReview;
import com.ushaqi.zhuishushenqi.model.BookReviewRoot;

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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.aI
 * JD-Core Version:    0.6.0
 */