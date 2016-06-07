package com.ximalaya.ting.android.opensdk.player.service;

import android.os.IBinder;
import android.os.Parcel;
import com.ximalaya.ting.android.opensdk.model.track.Track;

class IXmGetDownloadPlayPathCallback$Stub$Proxy
  implements IXmGetDownloadPlayPathCallback
{
  private IBinder mRemote;

  IXmGetDownloadPlayPathCallback$Stub$Proxy(IBinder paramIBinder)
  {
    this.mRemote = paramIBinder;
  }

  public IBinder asBinder()
  {
    return this.mRemote;
  }

  public String getDownloadPlayPath(Track paramTrack)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.ximalaya.ting.android.opensdk.player.service.IXmGetDownloadPlayPathCallback");
      if (paramTrack != null)
      {
        localParcel1.writeInt(1);
        paramTrack.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        this.mRemote.transact(1, localParcel1, localParcel2, 0);
        localParcel2.readException();
        String str = localParcel2.readString();
        return str;
        localParcel1.writeInt(0);
      }
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
    return "com.ximalaya.ting.android.opensdk.player.service.IXmGetDownloadPlayPathCallback";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.IXmGetDownloadPlayPathCallback.Stub.Proxy
 * JD-Core Version:    0.6.0
 */