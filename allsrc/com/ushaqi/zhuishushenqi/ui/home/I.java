package com.ushaqi.zhuishushenqi.ui.home;

import android.app.Activity;
import com.arcsoft.hpay100.a.a;
import com.ushaqi.zhuishushenqi.a.c;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.db.BookReadRecord;
import com.ushaqi.zhuishushenqi.model.BookGenderRecommend;
import com.ushaqi.zhuishushenqi.model.BookGenderRecommend.RecommendBook;
import java.io.IOException;

final class I extends c<String, BookGenderRecommend>
{
  public I(HomeShelfFragment paramHomeShelfFragment, Activity paramActivity)
  {
    super(paramActivity, paramActivity.getString(2131034464));
  }

  private static BookGenderRecommend a(String[] paramArrayOfString)
  {
    int i = 0;
    BookGenderRecommend localBookGenderRecommend;
    try
    {
      b.a();
      localBookGenderRecommend = b.b().ac(paramArrayOfString[0]);
      if (localBookGenderRecommend.isOk())
      {
        BookGenderRecommend.RecommendBook[] arrayOfRecommendBook = localBookGenderRecommend.getBooks();
        int j = arrayOfRecommendBook.length;
        while (i < j)
        {
          BookGenderRecommend.RecommendBook localRecommendBook = arrayOfRecommendBook[i];
          BookReadRecord.create(localRecommendBook);
          a.u(localRecommendBook.get_id());
          i++;
        }
      }
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      localBookGenderRecommend = null;
    }
    return localBookGenderRecommend;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.home.I
 * JD-Core Version:    0.6.0
 */