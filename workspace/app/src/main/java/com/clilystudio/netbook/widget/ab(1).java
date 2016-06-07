package com.clilystudio.netbook.widget;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.HotCommentRoot;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.ab
 * JD-Core Version:    0.6.0
 */