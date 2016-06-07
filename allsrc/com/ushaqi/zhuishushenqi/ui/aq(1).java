package com.ushaqi.zhuishushenqi.ui;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.BookListRoot;
import com.ushaqi.zhuishushenqi.model.CategoryBook;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

final class aq extends e<String, Void, List<CategoryBook>>
{
  private boolean a = true;

  public aq(BookCategoryFragment paramBookCategoryFragment)
  {
    this.a = true;
  }

  public aq(BookCategoryFragment paramBookCategoryFragment, boolean paramBoolean)
  {
    this.a = false;
  }

  private List<CategoryBook> a()
  {
    try
    {
      String str1 = this.b.getArguments().getString("bookcategory_type");
      if ((this.b.getActivity() == null) || (this.b.getActivity().isFinishing()))
        break label169;
      String str2 = ((BookCategoryListActivity)this.b.getActivity()).f();
      String str3 = ((BookCategoryListActivity)this.b.getActivity()).g();
      String str4 = ((BookCategoryListActivity)this.b.getActivity()).b();
      b.a();
      ApiService localApiService = b.b();
      if (this.a);
      for (int i = BookCategoryFragment.b(this.b).size(); ; i = 0)
      {
        BookListRoot localBookListRoot = localApiService.a(str4, str1, str2, str3, i, 50);
        if ((localBookListRoot == null) || (localBookListRoot.getBooks() == null))
          break;
        List localList = Arrays.asList(localBookListRoot.getBooks());
        return localList;
      }
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
    label169: return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.aq
 * JD-Core Version:    0.6.0
 */