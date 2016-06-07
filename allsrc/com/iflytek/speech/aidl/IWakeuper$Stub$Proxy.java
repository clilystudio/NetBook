package com.iflytek.speech.aidl;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import com.iflytek.speech.WakeuperListener;

class IWakeuper$Stub$Proxy
  implements IWakeuper
{
  private IBinder mRemote;

  IWakeuper$Stub$Proxy(IBinder paramIBinder)
  {
    this.mRemote = paramIBinder;
  }

  public IBinder asBinder()
  {
    return this.mRemote;
  }

  public void cancel(WakeuperListener paramWakeuperListener)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.iflytek.speech.aidl.IWakeuper");
      if (paramWakeuperListener != null);
      for (IBinder localIBinder = paramWakeuperListener.asBinder(); ; localIBinder = null)
      {
        localParcel1.writeStrongBinder(localIBinder);
        this.mRemote.transact(3, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw localObject;
  }

  public void destroy()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.iflytek.speech.aidl.IWakeuper");
      this.mRemote.transact(5, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw localObject;
  }

  public String getInterfaceDescriptor()
  {
    return "com.iflytek.speech.aidl.IWakeuper";
  }

  public boolean isListening()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.iflytek.speech.aidl.IWakeuper");
      this.mRemote.transact(4, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      int j = 0;
      if (i != 0)
        j = 1;
      return j;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw localObject;
  }

  public void startListening(Intent paramIntent, WakeuperListener paramWakeuperListener)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    while (true)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.iflytek.speech.aidl.IWakeuper");
        if (paramIntent == null)
          continue;
        localParcel1.writeInt(1);
        paramIntent.writeToParcel(localParcel1, 0);
        if (paramWakeuperListener != null)
        {
          localIBinder = paramWakeuperListener.asBinder();
          localParcel1.writeStrongBinder(localIBinder);
          this.mRemote.transact(1, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
          localParcel1.writeInt(0);
          continue;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      IBinder localIBinder = null;
    }
  }

  public void stopListening(WakeuperListener paramWakeuperListener)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.iflytek.speech.aidl.IWakeuper");
      if (paramWakeuperListener != null);
      for (IBinder localIBinder = paramWakeuperListener.asBinder(); ; localIBinder = null)
      {
        localParcel1.writeStrongBinder(localIBinder);
        this.mRemote.transact(2, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.aidl.IWakeuper.Stub.Proxy
 * JD-Core Version:    0.6.0
 */