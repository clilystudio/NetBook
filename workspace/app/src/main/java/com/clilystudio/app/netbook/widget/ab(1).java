package com.clilystudio.app.netbook.widget;

import com.clilystudio.app.netbook.a.e;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.HotCommentRoot;

final class ab extends e<String, Void, HotCommentRoot>
{
  private ab(HotCommentView paramHotCommentView)
  {
  }

  private static HotCommentRoot a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      HotCommentRoot localHotCommentRoot = b.b().T(paramArrayOfString[0]);
      return localHotCommentRoot;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.ab
 * JD-Core Version:    0.6.2
 */