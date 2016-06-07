package com.ximalaya.ting.android.opensdk.httputil;

import com.ximalaya.ting.android.opensdk.datatrasfer.IDataCallBack;
import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;

class ExecutorDelivery$ResponseDeliveryRunnable<T extends XimalayaResponse>
  implements Runnable
{
  private IDataCallBack<T> callback;
  private int code;
  private String message;
  private int postCode;
  private T t;

  public ExecutorDelivery$ResponseDeliveryRunnable(int paramInt1, int paramInt2, String paramString, T paramT, IDataCallBack<T> paramIDataCallBack)
  {
    this.postCode = paramInt2;
    this.code = paramString;
    this.message = paramT;
    Object localObject;
    this.callback = localObject;
    this.t = paramIDataCallBack;
  }

  public ExecutorDelivery$ResponseDeliveryRunnable(int paramInt, T paramT, IDataCallBack<T> paramIDataCallBack)
  {
    this.postCode = paramT;
    Object localObject;
    this.callback = localObject;
    this.t = paramIDataCallBack;
  }

  public void run()
  {
    if (this.postCode == 0)
      this.callback.onSuccess(this.t);
    do
      return;
    while (this.postCode != 1);
    this.callback.onError(this.code, this.message);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.httputil.ExecutorDelivery.ResponseDeliveryRunnable
 * JD-Core Version:    0.6.0
 */