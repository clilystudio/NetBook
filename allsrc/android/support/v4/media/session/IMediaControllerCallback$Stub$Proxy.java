package android.support.v4.media.session;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.support.v4.media.MediaMetadataCompat;
import android.text.TextUtils;
import java.util.List;

class IMediaControllerCallback$Stub$Proxy
  implements IMediaControllerCallback
{
  private IBinder mRemote;

  IMediaControllerCallback$Stub$Proxy(IBinder paramIBinder)
  {
    this.mRemote = paramIBinder;
  }

  public IBinder asBinder()
  {
    return this.mRemote;
  }

  public String getInterfaceDescriptor()
  {
    return "android.support.v4.media.session.IMediaControllerCallback";
  }

  public void onEvent(String paramString, Bundle paramBundle)
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
      localParcel.writeString(paramString);
      if (paramBundle != null)
      {
        localParcel.writeInt(1);
        paramBundle.writeToParcel(localParcel, 0);
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

  public void onExtrasChanged(Bundle paramBundle)
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
      if (paramBundle != null)
      {
        localParcel.writeInt(1);
        paramBundle.writeToParcel(localParcel, 0);
      }
      while (true)
      {
        this.mRemote.transact(7, localParcel, null, 1);
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

  public void onMetadataChanged(MediaMetadataCompat paramMediaMetadataCompat)
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
      if (paramMediaMetadataCompat != null)
      {
        localParcel.writeInt(1);
        paramMediaMetadataCompat.writeToParcel(localParcel, 0);
      }
      while (true)
      {
        this.mRemote.transact(4, localParcel, null, 1);
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

  public void onPlaybackStateChanged(PlaybackStateCompat paramPlaybackStateCompat)
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
      if (paramPlaybackStateCompat != null)
      {
        localParcel.writeInt(1);
        paramPlaybackStateCompat.writeToParcel(localParcel, 0);
      }
      while (true)
      {
        this.mRemote.transact(3, localParcel, null, 1);
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

  public void onQueueChanged(List<MediaSessionCompat.QueueItem> paramList)
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
      localParcel.writeTypedList(paramList);
      this.mRemote.transact(5, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
    throw localObject;
  }

  public void onQueueTitleChanged(CharSequence paramCharSequence)
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
      if (paramCharSequence != null)
      {
        localParcel.writeInt(1);
        TextUtils.writeToParcel(paramCharSequence, localParcel, 0);
      }
      while (true)
      {
        this.mRemote.transact(6, localParcel, null, 1);
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

  public void onSessionDestroyed()
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
      this.mRemote.transact(2, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
    throw localObject;
  }

  public void onVolumeInfoChanged(ParcelableVolumeInfo paramParcelableVolumeInfo)
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
      if (paramParcelableVolumeInfo != null)
      {
        localParcel.writeInt(1);
        paramParcelableVolumeInfo.writeToParcel(localParcel, 0);
      }
      while (true)
      {
        this.mRemote.transact(8, localParcel, null, 1);
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
 * Qualified Name:     android.support.v4.media.session.IMediaControllerCallback.Stub.Proxy
 * JD-Core Version:    0.6.0
 */