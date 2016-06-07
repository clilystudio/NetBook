package com.ushaqi.zhuishushenqi.ui.post;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.PostDetailComment;

final class cF extends e<String, Void, PostDetailComment>
{
  private cF(ReviewActivity paramReviewActivity)
  {
  }

  private PostDetailComment a(String[] paramArrayOfString)
  {
    try
    {
      if (paramArrayOfString.length > 1)
        return b.b().l(paramArrayOfString[0], paramArrayOfString[1]);
      PostDetailComment localPostDetailComment = b.b().l(paramArrayOfString[0], null);
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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.cF
 * JD-Core Version:    0.6.0
 */