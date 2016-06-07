package com.ushaqi.zhuishushenqi.a;

import android.os.AsyncTask;
import android.os.Build.VERSION;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.a.e
 * JD-Core Version:    0.6.0
 */