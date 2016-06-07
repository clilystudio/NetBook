package com.ximalaya.ting.android.opensdk.player.service;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.ximalaya.ting.android.opensdk.model.advertis.Advertis;
import com.ximalaya.ting.android.opensdk.model.advertis.AdvertisList;

public abstract class IXmAdsEventDispatcher$Stub extends Binder
  implements IXmAdsEventDispatcher
{
  private static final String DESCRIPTOR = "com.ximalaya.ting.android.opensdk.player.service.IXmAdsEventDispatcher";
  static final int TRANSACTION_onAdsStartBuffering = 3;
  static final int TRANSACTION_onAdsStopBuffering = 4;
  static final int TRANSACTION_onCompletePlayAds = 6;
  static final int TRANSACTION_onError = 7;
  static final int TRANSACTION_onGetAdsInfo = 2;
  static final int TRANSACTION_onStartGetAdsInfo = 1;
  static final int TRANSACTION_onStartPlayAds = 5;

  public IXmAdsEventDispatcher$Stub()
  {
    attachInterface(this, "com.ximalaya.ting.android.opensdk.player.service.IXmAdsEventDispatcher");
  }

  public static IXmAdsEventDispatcher asInterface(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.ximalaya.ting.android.opensdk.player.service.IXmAdsEventDispatcher");
    if ((localIInterface != null) && ((localIInterface instanceof IXmAdsEventDispatcher)))
      return (IXmAdsEventDispatcher)localIInterface;
    return new IXmAdsEventDispatcher.Stub.Proxy(paramIBinder);
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
      paramParcel2.writeString("com.ximalaya.ting.android.opensdk.player.service.IXmAdsEventDispatcher");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmAdsEventDispatcher");
      onStartGetAdsInfo();
      paramParcel2.writeNoException();
      return true;
    case 2:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmAdsEventDispatcher");
      int j = paramParcel1.readInt();
      AdvertisList localAdvertisList = null;
      if (j != 0)
        localAdvertisList = (AdvertisList)AdvertisList.CREATOR.createFromParcel(paramParcel1);
      onGetAdsInfo(localAdvertisList);
      paramParcel2.writeNoException();
      return true;
    case 3:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmAdsEventDispatcher");
      onAdsStartBuffering();
      paramParcel2.writeNoException();
      return true;
    case 4:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmAdsEventDispatcher");
      onAdsStopBuffering();
      paramParcel2.writeNoException();
      return true;
    case 5:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmAdsEventDispatcher");
      int i = paramParcel1.readInt();
      Advertis localAdvertis = null;
      if (i != 0)
        localAdvertis = (Advertis)Advertis.CREATOR.createFromParcel(paramParcel1);
      onStartPlayAds(localAdvertis, paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 6:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmAdsEventDispatcher");
      onCompletePlayAds();
      paramParcel2.writeNoException();
      return true;
    case 7:
    }
    paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmAdsEventDispatcher");
    onError(paramParcel1.readInt(), paramParcel1.readInt());
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.IXmAdsEventDispatcher.Stub
 * JD-Core Version:    0.6.0
 */