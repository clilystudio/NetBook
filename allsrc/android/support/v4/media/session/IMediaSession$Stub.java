package android.support.v4.media.session;

import android.app.PendingIntent;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.text.TextUtils;
import android.view.KeyEvent;
import java.util.List;

public abstract class IMediaSession$Stub extends Binder
  implements IMediaSession
{
  private static final String DESCRIPTOR = "android.support.v4.media.session.IMediaSession";
  static final int TRANSACTION_adjustVolume = 11;
  static final int TRANSACTION_fastForward = 21;
  static final int TRANSACTION_getExtras = 30;
  static final int TRANSACTION_getFlags = 9;
  static final int TRANSACTION_getLaunchPendingIntent = 8;
  static final int TRANSACTION_getMetadata = 26;
  static final int TRANSACTION_getPackageName = 6;
  static final int TRANSACTION_getPlaybackState = 27;
  static final int TRANSACTION_getQueue = 28;
  static final int TRANSACTION_getQueueTitle = 29;
  static final int TRANSACTION_getRatingType = 31;
  static final int TRANSACTION_getTag = 7;
  static final int TRANSACTION_getVolumeAttributes = 10;
  static final int TRANSACTION_isTransportControlEnabled = 5;
  static final int TRANSACTION_next = 19;
  static final int TRANSACTION_pause = 17;
  static final int TRANSACTION_play = 13;
  static final int TRANSACTION_playFromMediaId = 14;
  static final int TRANSACTION_playFromSearch = 15;
  static final int TRANSACTION_previous = 20;
  static final int TRANSACTION_rate = 24;
  static final int TRANSACTION_registerCallbackListener = 3;
  static final int TRANSACTION_rewind = 22;
  static final int TRANSACTION_seekTo = 23;
  static final int TRANSACTION_sendCommand = 1;
  static final int TRANSACTION_sendCustomAction = 25;
  static final int TRANSACTION_sendMediaButton = 2;
  static final int TRANSACTION_setVolumeTo = 12;
  static final int TRANSACTION_skipToQueueItem = 16;
  static final int TRANSACTION_stop = 18;
  static final int TRANSACTION_unregisterCallbackListener = 4;

  public IMediaSession$Stub()
  {
    attachInterface(this, "android.support.v4.media.session.IMediaSession");
  }

  public static IMediaSession asInterface(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("android.support.v4.media.session.IMediaSession");
    if ((localIInterface != null) && ((localIInterface instanceof IMediaSession)))
      return (IMediaSession)localIInterface;
    return new IMediaSession.Stub.Proxy(paramIBinder);
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
      paramParcel2.writeString("android.support.v4.media.session.IMediaSession");
      return true;
    case 1:
      paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
      String str6 = paramParcel1.readString();
      Bundle localBundle5;
      if (paramParcel1.readInt() != 0)
      {
        localBundle5 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
        if (paramParcel1.readInt() == 0)
          break label362;
      }
      for (MediaSessionCompat.ResultReceiverWrapper localResultReceiverWrapper = (MediaSessionCompat.ResultReceiverWrapper)MediaSessionCompat.ResultReceiverWrapper.CREATOR.createFromParcel(paramParcel1); ; localResultReceiverWrapper = null)
      {
        sendCommand(str6, localBundle5, localResultReceiverWrapper);
        paramParcel2.writeNoException();
        return true;
        localBundle5 = null;
        break;
      }
    case 2:
      paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
      KeyEvent localKeyEvent;
      if (paramParcel1.readInt() != 0)
      {
        localKeyEvent = (KeyEvent)KeyEvent.CREATOR.createFromParcel(paramParcel1);
        boolean bool2 = sendMediaButton(localKeyEvent);
        paramParcel2.writeNoException();
        if (!bool2)
          break label429;
      }
      for (int k = 1; ; k = 0)
      {
        paramParcel2.writeInt(k);
        return true;
        localKeyEvent = null;
        break;
      }
    case 3:
      paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
      registerCallbackListener(IMediaControllerCallback.Stub.asInterface(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 4:
      paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
      unregisterCallbackListener(IMediaControllerCallback.Stub.asInterface(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 5:
      paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
      boolean bool1 = isTransportControlEnabled();
      paramParcel2.writeNoException();
      int j = 0;
      if (bool1)
        j = 1;
      paramParcel2.writeInt(j);
      return true;
    case 6:
      paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
      String str5 = getPackageName();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str5);
      return true;
    case 7:
      paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
      String str4 = getTag();
      paramParcel2.writeNoException();
      paramParcel2.writeString(str4);
      return true;
    case 8:
      paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
      PendingIntent localPendingIntent = getLaunchPendingIntent();
      paramParcel2.writeNoException();
      if (localPendingIntent != null)
      {
        paramParcel2.writeInt(1);
        localPendingIntent.writeToParcel(paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    case 9:
      paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
      long l = getFlags();
      paramParcel2.writeNoException();
      paramParcel2.writeLong(l);
      return true;
    case 10:
      paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
      ParcelableVolumeInfo localParcelableVolumeInfo = getVolumeAttributes();
      paramParcel2.writeNoException();
      if (localParcelableVolumeInfo != null)
      {
        paramParcel2.writeInt(1);
        localParcelableVolumeInfo.writeToParcel(paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    case 11:
      paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
      adjustVolume(paramParcel1.readInt(), paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 12:
      paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
      setVolumeTo(paramParcel1.readInt(), paramParcel1.readInt(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 13:
      paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
      play();
      paramParcel2.writeNoException();
      return true;
    case 14:
      paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
      String str3 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0);
      for (Bundle localBundle4 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; localBundle4 = null)
      {
        playFromMediaId(str3, localBundle4);
        paramParcel2.writeNoException();
        return true;
      }
    case 15:
      paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
      String str2 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0);
      for (Bundle localBundle3 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; localBundle3 = null)
      {
        playFromSearch(str2, localBundle3);
        paramParcel2.writeNoException();
        return true;
      }
    case 16:
      paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
      skipToQueueItem(paramParcel1.readLong());
      paramParcel2.writeNoException();
      return true;
    case 17:
      paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
      pause();
      paramParcel2.writeNoException();
      return true;
    case 18:
      paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
      stop();
      paramParcel2.writeNoException();
      return true;
    case 19:
      paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
      next();
      paramParcel2.writeNoException();
      return true;
    case 20:
      paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
      previous();
      paramParcel2.writeNoException();
      return true;
    case 21:
      paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
      fastForward();
      paramParcel2.writeNoException();
      return true;
    case 22:
      paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
      rewind();
      paramParcel2.writeNoException();
      return true;
    case 23:
      paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
      seekTo(paramParcel1.readLong());
      paramParcel2.writeNoException();
      return true;
    case 24:
      paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
      if (paramParcel1.readInt() != 0);
      for (RatingCompat localRatingCompat = (RatingCompat)RatingCompat.CREATOR.createFromParcel(paramParcel1); ; localRatingCompat = null)
      {
        rate(localRatingCompat);
        paramParcel2.writeNoException();
        return true;
      }
    case 25:
      paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
      String str1 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0);
      for (Bundle localBundle2 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1); ; localBundle2 = null)
      {
        sendCustomAction(str1, localBundle2);
        paramParcel2.writeNoException();
        return true;
      }
    case 26:
      paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
      MediaMetadataCompat localMediaMetadataCompat = getMetadata();
      paramParcel2.writeNoException();
      if (localMediaMetadataCompat != null)
      {
        paramParcel2.writeInt(1);
        localMediaMetadataCompat.writeToParcel(paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    case 27:
      paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
      PlaybackStateCompat localPlaybackStateCompat = getPlaybackState();
      paramParcel2.writeNoException();
      if (localPlaybackStateCompat != null)
      {
        paramParcel2.writeInt(1);
        localPlaybackStateCompat.writeToParcel(paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    case 28:
      paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
      List localList = getQueue();
      paramParcel2.writeNoException();
      paramParcel2.writeTypedList(localList);
      return true;
    case 29:
      paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
      CharSequence localCharSequence = getQueueTitle();
      paramParcel2.writeNoException();
      if (localCharSequence != null)
      {
        paramParcel2.writeInt(1);
        TextUtils.writeToParcel(localCharSequence, paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    case 30:
      label362: paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
      label429: Bundle localBundle1 = getExtras();
      paramParcel2.writeNoException();
      if (localBundle1 != null)
      {
        paramParcel2.writeInt(1);
        localBundle1.writeToParcel(paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    case 31:
    }
    paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
    int i = getRatingType();
    paramParcel2.writeNoException();
    paramParcel2.writeInt(i);
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.session.IMediaSession.Stub
 * JD-Core Version:    0.6.0
 */