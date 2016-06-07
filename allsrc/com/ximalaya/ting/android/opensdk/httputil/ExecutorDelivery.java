package com.ximalaya.ting.android.opensdk.httputil;

import android.os.Handler;
import com.ximalaya.ting.android.opensdk.datatrasfer.IDataCallBack;
import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import java.util.concurrent.Executor;

public class ExecutorDelivery
{
  private final Executor mResponsePoster;

  public ExecutorDelivery(Handler paramHandler)
  {
    this.mResponsePoster = new ExecutorDelivery.1(this, paramHandler);
  }

  public <T extends XimalayaResponse> void postError(int paramInt, String paramString, IDataCallBack<T> paramIDataCallBack)
  {
    this.mResponsePoster.execute(new ExecutorDelivery.ResponseDeliveryRunnable(this, 1, paramInt, paramString, null, paramIDataCallBack));
  }

  public <T extends XimalayaResponse> void postSuccess(IDataCallBack<T> paramIDataCallBack, T paramT)
  {
    this.mResponsePoster.execute(new ExecutorDelivery.ResponseDeliveryRunnable(this, 0, paramT, paramIDataCallBack));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.httputil.ExecutorDelivery
 * JD-Core Version:    0.6.0
 */