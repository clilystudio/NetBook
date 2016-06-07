package com.ximalaya.ting.android.opensdk.player.service;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.ximalaya.ting.android.opensdk.model.track.Track;

public abstract class IXmGetDownloadPlayPathCallback$Stub extends Binder
  implements IXmGetDownloadPlayPathCallback
{
  private static final String DESCRIPTOR = "com.ximalaya.ting.android.opensdk.player.service.IXmGetDownloadPlayPathCallback";
  static final int TRANSACTION_getDownloadPlayPath = 1;

  public IXmGetDownloadPlayPathCallback$Stub()
  {
    attachInterface(this, "com.ximalaya.ting.android.opensdk.player.service.IXmGetDownloadPlayPathCallback");
  }

  public static IXmGetDownloadPlayPathCallback asInterface(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.ximalaya.ting.android.opensdk.player.service.IXmGetDownloadPlayPathCallback");
    if ((localIInterface != null) && ((localIInterface instanceof IXmGetDownloadPlayPathCallback)))
      return (IXmGetDownloadPlayPathCallback)localIInterface;
    return new IXmGetDownloadPlayPathCallback.Stub.Proxy(paramIBinder);
  }

  public IBinder asBinder()
  {
    return this;
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.ximalaya.ting.android.opensdk.player.service.IXmGetDownloadPlayPathCallback");
      return true;
    case 1:
    }
    paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmGetDownloadPlayPathCallback");
    if (paramParcel1.readInt() != 0);
    for (Track localTrack = (Track)Track.CREATOR.createFromParcel(paramParcel1); ; localTrack = null)
    {
      String str = getDownloadPlayPath(localTrack);
      paramParcel2.writeNoException();
      paramParcel2.writeString(str);
      return true;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.IXmGetDownloadPlayPathCallback.Stub
 * JD-Core Version:    0.6.0
 */