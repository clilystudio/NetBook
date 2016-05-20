package com.clilystudio.app.netbook.ui.ugcbook;

import com.clilystudio.app.netbook.model.UGCNewCollection;
import com.clilystudio.app.netbook.ui.ab;
import com.clilystudio.app.netbook.util.e;
import java.util.List;

final class H
  implements ab
{
  H(UGCGuideEditBooksActivity paramUGCGuideEditBooksActivity)
  {
  }

  public final void a()
  {
    if (UGCGuideEditBooksActivity.a(this.a).getBooks().size() == 0)
    {
      e.a(this.a, "至少要添加一本书籍才能保存哦");
      return;
    }
    new P(this.a).b(new Void[0]);
  }

  public final void b()
  {
    if (UGCGuideEditBooksActivity.b(this.a))
      new O(this.a).b(new Void[0]);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.H
 * JD-Core Version:    0.6.2
 */