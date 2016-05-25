package com.clilystudio.app.netbook.ui.post;

import android.app.Activity;
import com.clilystudio.app.netbook.a_packA.c;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.PostPublish;

final class P extends c<String, PostPublish>
{
  public P(AddVoteActivity paramAddVoteActivity, Activity paramActivity, int paramInt)
  {
    super(paramActivity, 2131034430);
  }

  private PostPublish a(String[] paramArrayOfString)
  {
    try
    {
      switch (AddVoteActivity.d(this.a))
      {
      case 1:
      case 2:
      default:
        return b.b().g(paramArrayOfString[0], paramArrayOfString[2], paramArrayOfString[3], AddVoteActivity.e(this.a));
      case 0:
        return b.b().e(paramArrayOfString[0], paramArrayOfString[1], paramArrayOfString[2], paramArrayOfString[3]);
      case 3:
        return b.b().j(paramArrayOfString[0], paramArrayOfString[3]);
      case 4:
        return b.b().b(paramArrayOfString[0], paramArrayOfString[2], paramArrayOfString[3]);
      case 5:
      }
      PostPublish localPostPublish = b.b().g(paramArrayOfString[0], paramArrayOfString[2], paramArrayOfString[3], AddVoteActivity.e(this.a));
      return localPostPublish;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.P
 * JD-Core Version:    0.6.2
 */