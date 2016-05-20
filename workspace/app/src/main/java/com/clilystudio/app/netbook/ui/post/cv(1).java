package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.a.e;
import com.clilystudio.app.netbook.adapter.z;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.PostDetailComment;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.cv
 * JD-Core Version:    0.6.2
 */