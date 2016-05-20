package com.clilystudio.app.netbook.a;

import android.os.AsyncTask;
import android.os.Build.VERSION;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;

public abstract class e<Params, Progress, Result> extends AsyncTask<Params, Progress, Result>
{
  private final ApiService a;

  public e()
  {
    b.a();
    this.a = b.b();
  }

  public final AsyncTask<Params, Progress, Result> b(Params[] paramArrayOfParams)
  {
    try
    {
      if (Build.VERSION.SDK_INT >= 11)
        return executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, paramArrayOfParams);
      AsyncTask localAsyncTask = execute(paramArrayOfParams);
      return localAsyncTask;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final ApiService c()
  {
    return this.a;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.a.e
 * JD-Core Version:    0.6.2
 */