package com.iflytek.speech;

import android.os.IBinder;
import android.os.Parcel;

class TextUnderstanderListener$Stub$Proxy
  implements TextUnderstanderListener
{
  private IBinder mRemote;

  TextUnderstanderListener$Stub$Proxy(IBinder paramIBinder)
  {
    this.mRemote = paramIBinder;
  }

  public IBinder asBinder()
  {
    return this.mRemote;
  }

  public String getInterfaceDescriptor()
  {
    return "com.iflytek.speech.TextUnderstanderListener";
  }

  public void onError(int paramInt)
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.iflytek.speech.TextUnderstanderListener");
      localParcel.writeInt(paramInt);
      this.mRemote.transact(2, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
    throw localObject;
  }

  public void onResult(UnderstanderResult paramUnderstanderResult)
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.iflytek.speech.TextUnderstanderListener");
      if (paramUnderstanderResult != null)
      {
        localParcel.writeInt(1);
        paramUnderstanderResult.writeToParcel(localParcel, 0);
      }
      while (true)
      {
        this.mRemote.transact(1, localParcel, null, 1);
        return;
        localParcel.writeInt(0);
      }
    }
    finally
    {
      localParcel.recycle();
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.TextUnderstanderListener.Stub.Proxy
 * JD-Core Version:    0.6.0
 */