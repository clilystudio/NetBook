package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.widget.SearchEditText;
import java.util.List;

final class bP extends bR
{
  private bP(SearchActivity paramSearchActivity)
  {
    super(paramSearchActivity, 0);
  }

  protected final void a(List<BookSummary> paramList)
  {
    super.a(paramList);
  }

  protected final void onPreExecute()
  {
    super.onPreExecute();
    SearchActivity.b(this.b, SearchActivity.f(this.b).getText().toString());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.bP
 * JD-Core Version:    0.6.0
 */