package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PostPublish;

final class F extends c<String, PostPublish>
{
  public F(AddReviewContentActivity paramAddReviewContentActivity, Activity paramActivity, int paramInt)
  {
    super(paramActivity, 2131034430);
  }

  private PostPublish a(String[] paramArrayOfString)
  {
    try
    {
      if (!AddReviewContentActivity.g(this.a))
        return b.b().a(paramArrayOfString[0], paramArrayOfString[1], paramArrayOfString[2], paramArrayOfString[3], paramArrayOfString[4], AddReviewContentActivity.h(this.a));
      PostPublish localPostPublish = b.b().c(paramArrayOfString[0], paramArrayOfString[1], paramArrayOfString[2], paramArrayOfString[3], paramArrayOfString[4]);
      return localPostPublish;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.F
 * JD-Core Version:    0.6.0
 */