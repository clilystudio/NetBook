package com.ushaqi.zhuishushenqi.ui.post;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.adapter.z;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.PostDetailComment;

final class cv extends e<String, Void, PostDetailComment>
{
  private cv(PostDetailActivity paramPostDetailActivity)
  {
  }

  private PostDetailComment a(String[] paramArrayOfString)
  {
    try
    {
      PostDetailComment localPostDetailComment = b.b().e(paramArrayOfString[0], PostDetailActivity.c(this.a).getCount(), 30);
      return localPostDetailComment;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.cv
 * JD-Core Version:    0.6.0
 */