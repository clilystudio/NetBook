package com.umeng.update;

import android.content.Context;

final class j
  implements Runnable
{
  private Context a;

  public j(Context paramContext)
  {
    this.a = paramContext;
  }

  public final void run()
  {
    try
    {
      localUpdateResponse = new n(this.a).a();
      if (localUpdateResponse == null)
      {
        b.a(3, null);
        return;
      }
      if (!localUpdateResponse.hasUpdate)
      {
        b.a(1, localUpdateResponse);
        return;
      }
    }
    catch (Exception localException)
    {
      UpdateResponse localUpdateResponse;
      b.a(1, null);
      u.a.b.a("update", "request update error", localException);
      return;
      b.a(0, localUpdateResponse);
      return;
    }
    catch (Error localError)
    {
      u.a.b.a("update", "request update error" + localError.getMessage());
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.umeng.update.j
 * JD-Core Version:    0.6.0
 */