package com.ushaqi.zhuishushenqi.ui.post;

import android.app.Activity;
import com.ushaqi.zhuishushenqi.a.c;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.PostPublish;

final class Z extends c<String, PostPublish>
{
  public Z(AddVoteItemActivity paramAddVoteItemActivity, Activity paramActivity, int paramInt)
  {
    super(paramActivity, 2131034430);
  }

  private PostPublish a(String[] paramArrayOfString)
  {
    try
    {
      if (AddVoteItemActivity.e(this.a) == 0)
        return b.b().b(paramArrayOfString[0], paramArrayOfString[1], paramArrayOfString[2], paramArrayOfString[3], paramArrayOfString[4]);
      if (AddVoteItemActivity.e(this.a) == 3)
        return b.b().c(paramArrayOfString[0], paramArrayOfString[2], paramArrayOfString[3], paramArrayOfString[4]);
      PostPublish localPostPublish = b.b().d(paramArrayOfString[0], paramArrayOfString[2], paramArrayOfString[3], paramArrayOfString[4]);
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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.Z
 * JD-Core Version:    0.6.0
 */