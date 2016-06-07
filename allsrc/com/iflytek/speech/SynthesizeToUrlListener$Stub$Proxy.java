package com.iflytek.speech;

import android.os.IBinder;
import android.os.Parcel;

class SynthesizeToUrlListener$Stub$Proxy
  implements SynthesizeToUrlListener
{
  private IBinder mRemote;

  SynthesizeToUrlListener$Stub$Proxy(IBinder paramIBinder)
  {
    this.mRemote = paramIBinder;
  }

  public IBinder asBinder()
  {
    return this.mRemote;
  }

  public String getInterfaceDescriptor()
  {
    return "com.iflytek.speech.SynthesizeToUrlListener";
  }

  public void onSynthesizeCompleted(String paramString, int paramInt)
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.iflytek.speech.SynthesizeToUrlListener");
      localParcel.writeString(paramString);
      localParcel.writeInt(paramInt);
      this.mRemote.transact(1, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.SynthesizeToUrlListener.Stub.Proxy
 * JD-Core Version:    0.6.0
 */