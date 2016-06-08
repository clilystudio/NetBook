package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PostPublish;

final class t extends c<String, PostPublish>
{
  public t(AddGamePostActivity paramAddGamePostActivity, Activity paramActivity, int paramInt)
  {
    super(paramActivity, 2131034430);
  }

  private PostPublish a(String[] paramArrayOfString)
  {
    try
    {
      PostPublish localPostPublish = b.b().i(paramArrayOfString[0], paramArrayOfString[1], paramArrayOfString[2]);
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
 * Qualified Name:     com.clilystudio.netbook.ui.post.t
 * JD-Core Version:    0.6.0
 */