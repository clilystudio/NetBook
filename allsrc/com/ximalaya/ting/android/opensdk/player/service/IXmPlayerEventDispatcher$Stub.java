package com.ximalaya.ting.android.opensdk.player.service;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class IXmPlayerEventDispatcher$Stub extends Binder
  implements IXmPlayerEventDispatcher
{
  private static final String DESCRIPTOR = "com.ximalaya.ting.android.opensdk.player.service.IXmPlayerEventDispatcher";
  static final int TRANSACTION_onBufferProgress = 9;
  static final int TRANSACTION_onBufferingStart = 7;
  static final int TRANSACTION_onBufferingStop = 8;
  static final int TRANSACTION_onError = 11;
  static final int TRANSACTION_onPlayPause = 2;
  static final int TRANSACTION_onPlayProgress = 10;
  static final int TRANSACTION_onPlayStart = 1;
  static final int TRANSACTION_onPlayStop = 3;
  static final int TRANSACTION_onSoundPlayComplete = 4;
  static final int TRANSACTION_onSoundPrepared = 5;
  static final int TRANSACTION_onSoundSwitch = 6;

  public IXmPlayerEventDispatcher$Stub()
  {
    attachInterface(this, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayerEventDispatcher");
  }

  public static IXmPlayerEventDispatcher asInterface(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayerEventDispatcher");
    if ((localIInterface != null) && ((localIInterface instanceof IXmPlayerEventDispatcher)))
      return (IXmPlayerEventDispatcher)localIInterface;
    return new IXmPlayerEventDispatcher.Stub.Proxy(paramIBinder);
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
      paramParcel2.writeString("com.ximalaya.ting.android.opensdk.player.service.IXmPlayerEventDispatcher");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayerEventDispatcher");
      onPlayStart();
      paramParcel2.writeNoException();
      return true;
    case 2:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayerEventDispatcher");
      onPlayPause();
      paramParcel2.writeNoException();
      return true;
    case 3:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayerEventDispatcher");
      onPlayStop();
      paramParcel2.writeNoException();
      return true;
    case 4:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayerEventDispatcher");
      onSoundPlayComplete();
      paramParcel2.writeNoException();
      return true;
    case 5:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayerEventDispatcher");
      onSoundPrepared();
      paramParcel2.writeNoException();
      return true;
    case 6:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayerEventDispatcher");
      onSoundSwitch(paramParcel1.readInt(), paramParcel1.readInt(), paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 7:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayerEventDispatcher");
      onBufferingStart();
      paramParcel2.writeNoException();
      return true;
    case 8:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayerEventDispatcher");
      onBufferingStop();
      paramParcel2.writeNoException();
      return true;
    case 9:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayerEventDispatcher");
      onBufferProgress(paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 10:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayerEventDispatcher");
      onPlayProgress(paramParcel1.readInt(), paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 11:
    }
    paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayerEventDispatcher");
    XmPlayerException localXmPlayerException = new XmPlayerException();
    onError(localXmPlayerException);
    paramParcel2.writeNoException();
    paramParcel2.writeInt(1);
    localXmPlayerException.writeToParcel(paramParcel2, 1);
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.IXmPlayerEventDispatcher.Stub
 * JD-Core Version:    0.6.0
 */