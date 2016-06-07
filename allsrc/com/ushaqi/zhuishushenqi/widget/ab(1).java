package com.ushaqi.zhuishushenqi.widget;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.HotCommentRoot;

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
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.ab
 * JD-Core Version:    0.6.0
 */