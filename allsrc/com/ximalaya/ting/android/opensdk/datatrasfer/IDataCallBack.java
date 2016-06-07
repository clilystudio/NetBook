package com.ximalaya.ting.android.opensdk.datatrasfer;

public abstract interface IDataCallBack<T extends XimalayaResponse>
{
  public abstract void onError(int paramInt, String paramString);

  public abstract void onSuccess(T paramT);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.datatrasfer.IDataCallBack
 * JD-Core Version:    0.6.0
 */