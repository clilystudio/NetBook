package com.ushaqi.zhuishushenqi.ui.post;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.PostDetail;

final class cw extends e<String, Void, PostDetail>
{
  private cw(PostDetailActivity paramPostDetailActivity)
  {
  }

  private PostDetail a(String[] paramArrayOfString)
  {
    try
    {
      PostDetail localPostDetail = b.b().H(paramArrayOfString[0]);
      return localPostDetail;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.cw
 * JD-Core Version:    0.6.0
 */