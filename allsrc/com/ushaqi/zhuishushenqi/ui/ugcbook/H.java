package com.ushaqi.zhuishushenqi.ui.ugcbook;

import com.ushaqi.zhuishushenqi.model.UGCNewCollection;
import com.ushaqi.zhuishushenqi.ui.ab;
import com.ushaqi.zhuishushenqi.util.e;
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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.ugcbook.H
 * JD-Core Version:    0.6.0
 */