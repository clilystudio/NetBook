package com.ximalaya.ting.android.opensdk.util;

import android.annotation.SuppressLint;
import android.os.AsyncTask;
import android.os.Build.VERSION;

public abstract class MyAsyncTask<Params, Progress, Result> extends AsyncTask<Params, Progress, Result>
{
  @SuppressLint({"NewApi"})
  public MyAsyncTask<Params, Progress, Result> myexec(Params[] paramArrayOfParams)
  {
    if (Build.VERSION.SDK_INT >= 11)
      return (MyAsyncTask)executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, paramArrayOfParams);
    return (MyAsyncTask)execute(paramArrayOfParams);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.util.MyAsyncTask
 * JD-Core Version:    0.6.0
 */