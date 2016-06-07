package com.ximalaya.ting.android.opensdk.player.service;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.ximalaya.ting.android.opensdk.model.live.radio.Radio;
import com.ximalaya.ting.android.opensdk.model.track.Track;
import java.util.List;
import java.util.Map;

public abstract class IXmPlayer$Stub extends Binder
  implements IXmPlayer
{
  private static final String DESCRIPTOR = "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer";
  static final int TRANSACTION_clearPlayCache = 28;
  static final int TRANSACTION_getCurrIndex = 13;
  static final int TRANSACTION_getDuration = 14;
  static final int TRANSACTION_getParam = 26;
  static final int TRANSACTION_getPlayList = 25;
  static final int TRANSACTION_getPlayListSize = 27;
  static final int TRANSACTION_getPlayMode = 21;
  static final int TRANSACTION_getPlaySourceType = 19;
  static final int TRANSACTION_getPlayerStatus = 12;
  static final int TRANSACTION_getRadio = 18;
  static final int TRANSACTION_getTrack = 17;
  static final int TRANSACTION_hasNextSound = 11;
  static final int TRANSACTION_hasPreSound = 10;
  static final int TRANSACTION_isAdsActive = 16;
  static final int TRANSACTION_isOnlineSource = 9;
  static final int TRANSACTION_isPlaying = 15;
  static final int TRANSACTION_pausePlay = 6;
  static final int TRANSACTION_play = 3;
  static final int TRANSACTION_playNext = 2;
  static final int TRANSACTION_playPre = 1;
  static final int TRANSACTION_playRadio = 24;
  static final int TRANSACTION_registeAdsListener = 33;
  static final int TRANSACTION_registePlayerListener = 31;
  static final int TRANSACTION_seekTo = 8;
  static final int TRANSACTION_setAppSecret = 30;
  static final int TRANSACTION_setDownloadPlayPathCallback = 35;
  static final int TRANSACTION_setNotification = 29;
  static final int TRANSACTION_setPageSize = 22;
  static final int TRANSACTION_setPlayIndex = 4;
  static final int TRANSACTION_setPlayList = 23;
  static final int TRANSACTION_setPlayMode = 20;
  static final int TRANSACTION_startPlay = 5;
  static final int TRANSACTION_stopPlay = 7;
  static final int TRANSACTION_unregisteAdsListener = 34;
  static final int TRANSACTION_unregistePlayerListener = 32;

  public IXmPlayer$Stub()
  {
    attachInterface(this, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
  }

  public static IXmPlayer asInterface(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
    if ((localIInterface != null) && ((localIInterface instanceof IXmPlayer)))
      return (IXmPlayer)localIInterface;
    return new IXmPlayer.Stub.Proxy(paramIBinder);
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
      paramParcel2.writeString("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      boolean bool14 = playPre();
      paramParcel2.writeNoException();
      if (bool14);
      for (int i17 = 1; ; i17 = 0)
      {
        paramParcel2.writeInt(i17);
        return true;
      }
    case 2:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      boolean bool13 = playNext();
      paramParcel2.writeNoException();
      int i16 = 0;
      if (bool13)
        i16 = 1;
      paramParcel2.writeInt(i16);
      return true;
    case 3:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      boolean bool12 = play(paramParcel1.readInt());
      paramParcel2.writeNoException();
      int i15 = 0;
      if (bool12)
        i15 = 1;
      paramParcel2.writeInt(i15);
      return true;
    case 4:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      boolean bool11 = setPlayIndex(paramParcel1.readInt());
      paramParcel2.writeNoException();
      int i14 = 0;
      if (bool11)
        i14 = 1;
      paramParcel2.writeInt(i14);
      return true;
    case 5:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      boolean bool10 = startPlay();
      paramParcel2.writeNoException();
      int i13 = 0;
      if (bool10)
        i13 = 1;
      paramParcel2.writeInt(i13);
      return true;
    case 6:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      boolean bool9 = pausePlay();
      paramParcel2.writeNoException();
      int i12 = 0;
      if (bool9)
        i12 = 1;
      paramParcel2.writeInt(i12);
      return true;
    case 7:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      boolean bool8 = stopPlay();
      paramParcel2.writeNoException();
      int i11 = 0;
      if (bool8)
        i11 = 1;
      paramParcel2.writeInt(i11);
      return true;
    case 8:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      boolean bool7 = seekTo(paramParcel1.readInt());
      paramParcel2.writeNoException();
      int i10 = 0;
      if (bool7)
        i10 = 1;
      paramParcel2.writeInt(i10);
      return true;
    case 9:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      boolean bool6 = isOnlineSource();
      paramParcel2.writeNoException();
      int i9 = 0;
      if (bool6)
        i9 = 1;
      paramParcel2.writeInt(i9);
      return true;
    case 10:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      boolean bool5 = hasPreSound();
      paramParcel2.writeNoException();
      int i8 = 0;
      if (bool5)
        i8 = 1;
      paramParcel2.writeInt(i8);
      return true;
    case 11:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      boolean bool4 = hasNextSound();
      paramParcel2.writeNoException();
      int i7 = 0;
      if (bool4)
        i7 = 1;
      paramParcel2.writeInt(i7);
      return true;
    case 12:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      int i6 = getPlayerStatus();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i6);
      return true;
    case 13:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      int i5 = getCurrIndex();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i5);
      return true;
    case 14:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      int i4 = getDuration();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i4);
      return true;
    case 15:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      boolean bool3 = isPlaying();
      paramParcel2.writeNoException();
      int i3 = 0;
      if (bool3)
        i3 = 1;
      paramParcel2.writeInt(i3);
      return true;
    case 16:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      boolean bool2 = isAdsActive();
      paramParcel2.writeNoException();
      int i2 = 0;
      if (bool2)
        i2 = 1;
      paramParcel2.writeInt(i2);
      return true;
    case 17:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      Track localTrack = getTrack(paramParcel1.readInt());
      paramParcel2.writeNoException();
      if (localTrack != null)
      {
        paramParcel2.writeInt(1);
        localTrack.writeToParcel(paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    case 18:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      Radio localRadio2 = getRadio();
      paramParcel2.writeNoException();
      if (localRadio2 != null)
      {
        paramParcel2.writeInt(1);
        localRadio2.writeToParcel(paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    case 19:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      int i1 = getPlaySourceType();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i1);
      return true;
    case 20:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      setPlayMode(paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 21:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      String str = getPlayMode();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str);
      return true;
    case 22:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      setPageSize(paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 23:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      setPlayList(paramParcel1.readHashMap(getClass().getClassLoader()), paramParcel1.createTypedArrayList(Track.CREATOR));
      paramParcel2.writeNoException();
      return true;
    case 24:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      int m = paramParcel1.readInt();
      Radio localRadio1 = null;
      if (m != 0)
        localRadio1 = (Radio)Radio.CREATOR.createFromParcel(paramParcel1);
      boolean bool1 = playRadio(localRadio1);
      paramParcel2.writeNoException();
      int n = 0;
      if (bool1)
        n = 1;
      paramParcel2.writeInt(n);
      return true;
    case 25:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      List localList = getPlayList();
      paramParcel2.writeNoException();
      paramParcel2.writeTypedList(localList);
      return true;
    case 26:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      Map localMap = getParam();
      paramParcel2.writeNoException();
      paramParcel2.writeMap(localMap);
      return true;
    case 27:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      int k = getPlayListSize();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(k);
      return true;
    case 28:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      clearPlayCache();
      paramParcel2.writeNoException();
      return true;
    case 29:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      int i = paramParcel1.readInt();
      int j = paramParcel1.readInt();
      Notification localNotification = null;
      if (j != 0)
        localNotification = (Notification)Notification.CREATOR.createFromParcel(paramParcel1);
      setNotification(i, localNotification);
      paramParcel2.writeNoException();
      return true;
    case 30:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      setAppSecret(paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 31:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      registePlayerListener(IXmPlayerEventDispatcher.Stub.asInterface(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 32:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      unregistePlayerListener(IXmPlayerEventDispatcher.Stub.asInterface(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 33:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      registeAdsListener(IXmAdsEventDispatcher.Stub.asInterface(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 34:
      paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
      unregisteAdsListener(IXmAdsEventDispatcher.Stub.asInterface(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 35:
    }
    paramParcel1.enforceInterface("com.ximalaya.ting.android.opensdk.player.service.IXmPlayer");
    setDownloadPlayPathCallback(IXmGetDownloadPlayPathCallback.Stub.asInterface(paramParcel1.readStrongBinder()));
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.IXmPlayer.Stub
 * JD-Core Version:    0.6.0
 */