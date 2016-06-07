package com.ushaqi.zhuishushenqi.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.ushaqi.zhuishushenqi.model.CategoryBook;
import java.util.List;

final class am
  implements AdapterView.OnItemClickListener
{
  am(BookCategoryFragment paramBookCategoryFragment)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i = paramInt - BookCategoryFragment.a(this.a).getHeaderViewsCount();
    if ((i >= 0) && (i < BookCategoryFragment.b(this.a).size()))
    {
      CategoryBook localCategoryBook = (CategoryBook)BookCategoryFragment.b(this.a).get(i);
      BookCategoryFragment.a(this.a, localCategoryBook);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.am
 * JD-Core Version:    0.6.0
 */