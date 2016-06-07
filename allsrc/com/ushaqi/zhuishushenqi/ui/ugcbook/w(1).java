package com.ushaqi.zhuishushenqi.ui.ugcbook;

import com.ushaqi.zhuishushenqi.model.BookSummary;
import com.ushaqi.zhuishushenqi.widget.SearchEditText;
import java.util.List;

final class w extends A
{
  private w(UGCGuideAddBookActivity paramUGCGuideAddBookActivity)
  {
    super(paramUGCGuideAddBookActivity, 0);
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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.ugcbook.w
 * JD-Core Version:    0.6.0
 */