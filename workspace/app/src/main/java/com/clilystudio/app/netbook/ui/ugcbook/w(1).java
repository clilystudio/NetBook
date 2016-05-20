package com.clilystudio.app.netbook.ui.ugcbook;

import com.clilystudio.app.netbook.model.BookSummary;
import com.clilystudio.app.netbook.widget.SearchEditText;
import java.util.List;

final class w extends A
{
  private w(UGCGuideAddBookActivity paramUGCGuideAddBookActivity)
  {
    super(paramUGCGuideAddBookActivity, (byte)0);
  }

  protected final void a(List<BookSummary> paramList)
  {
    super.a(paramList);
  }

  protected final void onPreExecute()
  {
    super.onPreExecute();
    UGCGuideAddBookActivity.a(this.b, UGCGuideAddBookActivity.a(this.b).getText().toString());
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.w
 * JD-Core Version:    0.6.2
 */