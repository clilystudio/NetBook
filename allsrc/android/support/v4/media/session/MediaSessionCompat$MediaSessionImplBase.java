package android.support.v4.media.session;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.media.AudioManager;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.SystemClock;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.VolumeProviderCompat;
import android.support.v4.media.VolumeProviderCompat.Callback;
import java.util.List;

class MediaSessionCompat$MediaSessionImplBase
  implements MediaSessionCompat.MediaSessionImpl
{
  private final AudioManager mAudioManager;
  private MediaSessionCompat.Callback mCallback;
  private final ComponentName mComponentName;
  private final Context mContext;
  private final RemoteCallbackList<IMediaControllerCallback> mControllerCallbacks = new RemoteCallbackList();
  private boolean mDestroyed = false;
  private Bundle mExtras;
  private int mFlags;
  private final MediaSessionCompat.MediaSessionImplBase.MessageHandler mHandler;
  private boolean mIsActive = false;
  private boolean mIsMbrRegistered = false;
  private boolean mIsRccRegistered = false;
  private int mLocalStream;
  private final Object mLock = new Object();
  private final PendingIntent mMediaButtonEventReceiver;
  private MediaMetadataCompat mMetadata;
  private final String mPackageName;
  private List<MediaSessionCompat.QueueItem> mQueue;
  private CharSequence mQueueTitle;
  private int mRatingType;
  private final Object mRccObj;
  private PendingIntent mSessionActivity;
  private PlaybackStateCompat mState;
  private final MediaSessionCompat.MediaSessionImplBase.MediaSessionStub mStub;
  private final String mTag;
  private final MediaSessionCompat.Token mToken;
  private VolumeProviderCompat.Callback mVolumeCallback = new MediaSessionCompat.MediaSessionImplBase.1(this);
  private VolumeProviderCompat mVolumeProvider;
  private int mVolumeType;

  public MediaSessionCompat$MediaSessionImplBase(Context paramContext, String paramString, ComponentName paramComponentName, PendingIntent paramPendingIntent)
  {
    if (paramComponentName == null)
      throw new IllegalArgumentException("MediaButtonReceiver component may not be null.");
    this.mContext = paramContext;
    this.mPackageName = paramContext.getPackageName();
    this.mAudioManager = ((AudioManager)paramContext.getSystemService("audio"));
    this.mTag = paramString;
    this.mComponentName = paramComponentName;
    this.mMediaButtonEventReceiver = paramPendingIntent;
    this.mStub = new MediaSessionCompat.MediaSessionImplBase.MediaSessionStub(this);
    this.mToken = new MediaSessionCompat.Token(this.mStub);
    this.mHandler = new MediaSessionCompat.MediaSessionImplBase.MessageHandler(this, Looper.myLooper());
    this.mRatingType = 0;
    this.mVolumeType = 1;
    this.mLocalStream = 3;
    if (Build.VERSION.SDK_INT >= 14)
    {
      this.mRccObj = MediaSessionCompatApi14.createRemoteControlClient(paramPendingIntent);
      return;
    }
    this.mRccObj = null;
  }

  private void adjustVolume(int paramInt1, int paramInt2)
  {
    if (this.mVolumeType == 2)
    {
      if (this.mVolumeProvider != null)
        this.mVolumeProvider.onAdjustVolume(paramInt1);
      return;
    }
    this.mAudioManager.adjustStreamVolume(paramInt1, this.mLocalStream, paramInt2);
  }

  private PlaybackStateCompat getStateWithUpdatedPosition()
  {
    long l1 = -1L;
    while (true)
    {
      long l4;
      synchronized (this.mLock)
      {
        PlaybackStateCompat localPlaybackStateCompat1 = this.mState;
        if ((this.mMetadata == null) || (!this.mMetadata.containsKey("android.media.metadata.DURATION")))
          continue;
        l1 = this.mMetadata.getLong("android.media.metadata.DURATION");
        if ((localPlaybackStateCompat1 == null) || ((localPlaybackStateCompat1.getState() != 3) && (localPlaybackStateCompat1.getState() != 4) && (localPlaybackStateCompat1.getState() != 5)))
          break label207;
        long l2 = localPlaybackStateCompat1.getLastPositionUpdateTime();
        long l3 = SystemClock.elapsedRealtime();
        if (l2 <= 0L)
          break label207;
        l4 = ()(localPlaybackStateCompat1.getPlaybackSpeed() * (float)(l3 - l2)) + localPlaybackStateCompat1.getPosition();
        if ((l1 >= 0L) && (l4 > l1))
        {
          PlaybackStateCompat.Builder localBuilder = new PlaybackStateCompat.Builder(localPlaybackStateCompat1);
          localBuilder.setState(localPlaybackStateCompat1.getState(), l1, localPlaybackStateCompat1.getPlaybackSpeed(), l3);
          localPlaybackStateCompat2 = localBuilder.build();
          if (localPlaybackStateCompat2 != null)
            continue;
          localPlaybackStateCompat2 = localPlaybackStateCompat1;
          return localPlaybackStateCompat2;
        }
      }
      if (l4 < 0L)
      {
        l1 = 0L;
        continue;
      }
      l1 = l4;
      continue;
      label207: PlaybackStateCompat localPlaybackStateCompat2 = null;
    }
  }

  private void sendEvent(String paramString, Bundle paramBundle)
  {
    int i = -1 + this.mControllerCallbacks.beginBroadcast();
    while (true)
    {
      IMediaControllerCallback localIMediaControllerCallback;
      if (i >= 0)
        localIMediaControllerCallback = (IMediaControllerCallback)this.mControllerCallbacks.getBroadcastItem(i);
      try
      {
        localIMediaControllerCallback.onEvent(paramString, paramBundle);
        label36: i--;
        continue;
        this.mControllerCallbacks.finishBroadcast();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        break label36;
      }
    }
  }

  private void sendMetadata(MediaMetadataCompat paramMediaMetadataCompat)
  {
    int i = -1 + this.mControllerCallbacks.beginBroadcast();
    while (true)
    {
      IMediaControllerCallback localIMediaControllerCallback;
      if (i >= 0)
        localIMediaControllerCallback = (IMediaControllerCallback)this.mControllerCallbacks.getBroadcastItem(i);
      try
      {
        localIMediaControllerCallback.onMetadataChanged(paramMediaMetadataCompat);
        label33: i--;
        continue;
        this.mControllerCallbacks.finishBroadcast();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        break label33;
      }
    }
  }

  private void sendQueue(List<MediaSessionCompat.QueueItem> paramList)
  {
    int i = -1 + this.mControllerCallbacks.beginBroadcast();
    while (true)
    {
      IMediaControllerCallback localIMediaControllerCallback;
      if (i >= 0)
        localIMediaControllerCallback = (IMediaControllerCallback)this.mControllerCallbacks.getBroadcastItem(i);
      try
      {
        localIMediaControllerCallback.onQueueChanged(paramList);
        label33: i--;
        continue;
        this.mControllerCallbacks.finishBroadcast();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        break label33;
      }
    }
  }

  private void sendQueueTitle(CharSequence paramCharSequence)
  {
    int i = -1 + this.mControllerCallbacks.beginBroadcast();
    while (true)
    {
      IMediaControllerCallback localIMediaControllerCallback;
      if (i >= 0)
        localIMediaControllerCallback = (IMediaControllerCallback)this.mControllerCallbacks.getBroadcastItem(i);
      try
      {
        localIMediaControllerCallback.onQueueTitleChanged(paramCharSequence);
        label33: i--;
        continue;
        this.mControllerCallbacks.finishBroadcast();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        break label33;
      }
    }
  }

  private void sendSessionDestroyed()
  {
    int i = -1 + this.mControllerCallbacks.beginBroadcast();
    while (true)
    {
      IMediaControllerCallback localIMediaControllerCallback;
      if (i >= 0)
        localIMediaControllerCallback = (IMediaControllerCallback)this.mControllerCallbacks.getBroadcastItem(i);
      try
      {
        localIMediaControllerCallback.onSessionDestroyed();
        label32: i--;
        continue;
        this.mControllerCallbacks.finishBroadcast();
        this.mControllerCallbacks.kill();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        break label32;
      }
    }
  }

  private void sendState(PlaybackStateCompat paramPlaybackStateCompat)
  {
    int i = -1 + this.mControllerCallbacks.beginBroadcast();
    while (true)
    {
      IMediaControllerCallback localIMediaControllerCallback;
      if (i >= 0)
        localIMediaControllerCallback = (IMediaControllerCallback)this.mControllerCallbacks.getBroadcastItem(i);
      try
      {
        localIMediaControllerCallback.onPlaybackStateChanged(paramPlaybackStateCompat);
        label33: i--;
        continue;
        this.mControllerCallbacks.finishBroadcast();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        break label33;
      }
    }
  }

  private void sendVolumeInfoChanged(ParcelableVolumeInfo paramParcelableVolumeInfo)
  {
    int i = -1 + this.mControllerCallbacks.beginBroadcast();
    while (true)
    {
      IMediaControllerCallback localIMediaControllerCallback;
      if (i >= 0)
        localIMediaControllerCallback = (IMediaControllerCallback)this.mControllerCallbacks.getBroadcastItem(i);
      try
      {
        localIMediaControllerCallback.onVolumeInfoChanged(paramParcelableVolumeInfo);
        label33: i--;
        continue;
        this.mControllerCallbacks.finishBroadcast();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        break label33;
      }
    }
  }

  private void setVolumeTo(int paramInt1, int paramInt2)
  {
    if (this.mVolumeType == 2)
    {
      if (this.mVolumeProvider != null)
        this.mVolumeProvider.onSetVolumeTo(paramInt1);
      return;
    }
    this.mAudioManager.setStreamVolume(this.mLocalStream, paramInt1, paramInt2);
  }

  private boolean update()
  {
    if (this.mIsActive)
    {
      if (Build.VERSION.SDK_INT >= 8)
      {
        if ((this.mIsMbrRegistered) || ((0x1 & this.mFlags) == 0))
          break label111;
        if (Build.VERSION.SDK_INT < 18)
          break label97;
        MediaSessionCompatApi18.registerMediaButtonEventReceiver(this.mContext, this.mMediaButtonEventReceiver);
        this.mIsMbrRegistered = true;
      }
      label97: label111: 
      do
      {
        if (Build.VERSION.SDK_INT < 14)
          break label256;
        if ((this.mIsRccRegistered) || ((0x2 & this.mFlags) == 0))
          break label168;
        MediaSessionCompatApi14.registerRemoteControlClient(this.mContext, this.mRccObj);
        this.mIsRccRegistered = true;
        return true;
        MediaSessionCompatApi8.registerMediaButtonEventReceiver(this.mContext, this.mComponentName);
        break;
      }
      while ((!this.mIsMbrRegistered) || ((0x1 & this.mFlags) != 0));
      if (Build.VERSION.SDK_INT >= 18)
        MediaSessionCompatApi18.unregisterMediaButtonEventReceiver(this.mContext, this.mMediaButtonEventReceiver);
      while (true)
      {
        this.mIsMbrRegistered = false;
        break;
        MediaSessionCompatApi8.unregisterMediaButtonEventReceiver(this.mContext, this.mComponentName);
      }
      label168: if ((this.mIsRccRegistered) && ((0x2 & this.mFlags) == 0))
      {
        MediaSessionCompatApi14.unregisterRemoteControlClient(this.mContext, this.mRccObj);
        this.mIsRccRegistered = false;
        return false;
      }
    }
    else if (this.mIsMbrRegistered)
    {
      if (Build.VERSION.SDK_INT < 18)
        break label258;
      MediaSessionCompatApi18.unregisterMediaButtonEventReceiver(this.mContext, this.mMediaButtonEventReceiver);
    }
    while (true)
    {
      this.mIsMbrRegistered = false;
      if (this.mIsRccRegistered)
      {
        MediaSessionCompatApi14.unregisterRemoteControlClient(this.mContext, this.mRccObj);
        this.mIsRccRegistered = false;
      }
      label256: return false;
      label258: MediaSessionCompatApi8.unregisterMediaButtonEventReceiver(this.mContext, this.mComponentName);
    }
  }

  public Object getMediaSession()
  {
    return null;
  }

  public Object getRemoteControlClient()
  {
    return this.mRccObj;
  }

  public MediaSessionCompat.Token getSessionToken()
  {
    return this.mToken;
  }

  public boolean isActive()
  {
    return this.mIsActive;
  }

  public void release()
  {
    this.mIsActive = false;
    this.mDestroyed = true;
    update();
    sendSessionDestroyed();
  }

  public void sendSessionEvent(String paramString, Bundle paramBundle)
  {
    sendEvent(paramString, paramBundle);
  }

  public void setActive(boolean paramBoolean)
  {
    if (paramBoolean == this.mIsActive);
    do
    {
      return;
      this.mIsActive = paramBoolean;
    }
    while (!update());
    setMetadata(this.mMetadata);
    setPlaybackState(this.mState);
  }

  public void setCallback(MediaSessionCompat.Callback paramCallback, Handler paramHandler)
  {
    if (paramCallback == this.mCallback)
      return;
    if ((paramCallback == null) || (Build.VERSION.SDK_INT < 18))
    {
      if (Build.VERSION.SDK_INT >= 18)
        MediaSessionCompatApi18.setOnPlaybackPositionUpdateListener(this.mRccObj, null);
      if (Build.VERSION.SDK_INT >= 19)
        MediaSessionCompatApi19.setOnMetadataUpdateListener(this.mRccObj, null);
    }
    while (true)
    {
      this.mCallback = paramCallback;
      return;
      if (paramHandler == null)
        new Handler();
      MediaSessionCompat.MediaSessionImplBase.2 local2 = new MediaSessionCompat.MediaSessionImplBase.2(this, paramCallback);
      if (Build.VERSION.SDK_INT >= 18)
      {
        Object localObject2 = MediaSessionCompatApi18.createPlaybackPositionUpdateListener(local2);
        MediaSessionCompatApi18.setOnPlaybackPositionUpdateListener(this.mRccObj, localObject2);
      }
      if (Build.VERSION.SDK_INT < 19)
        continue;
      Object localObject1 = MediaSessionCompatApi19.createMetadataUpdateListener(local2);
      MediaSessionCompatApi19.setOnMetadataUpdateListener(this.mRccObj, localObject1);
    }
  }

  public void setExtras(Bundle paramBundle)
  {
    this.mExtras = paramBundle;
  }

  public void setFlags(int paramInt)
  {
    synchronized (this.mLock)
    {
      this.mFlags = paramInt;
      update();
      return;
    }
  }

  public void setMediaButtonReceiver(PendingIntent paramPendingIntent)
  {
  }

  public void setMetadata(MediaMetadataCompat paramMediaMetadataCompat)
  {
    label82: 
    do
    {
      synchronized (this.mLock)
      {
        this.mMetadata = paramMediaMetadataCompat;
        sendMetadata(paramMediaMetadataCompat);
        if (!this.mIsActive)
          return;
      }
      if (Build.VERSION.SDK_INT < 19)
        continue;
      Object localObject4 = this.mRccObj;
      Bundle localBundle2 = null;
      long l;
      if (paramMediaMetadataCompat == null)
      {
        if (this.mState != null)
          break label82;
        l = 0L;
      }
      while (true)
      {
        MediaSessionCompatApi19.setMetadata(localObject4, localBundle2, l);
        return;
        localBundle2 = paramMediaMetadataCompat.getBundle();
        break;
        l = this.mState.getActions();
      }
    }
    while (Build.VERSION.SDK_INT < 14);
    Object localObject3 = this.mRccObj;
    Bundle localBundle1 = null;
    if (paramMediaMetadataCompat == null);
    while (true)
    {
      MediaSessionCompatApi14.setMetadata(localObject3, localBundle1);
      return;
      localBundle1 = paramMediaMetadataCompat.getBundle();
    }
  }

  public void setPlaybackState(PlaybackStateCompat paramPlaybackStateCompat)
  {
    do
    {
      while (true)
      {
        synchronized (this.mLock)
        {
          this.mState = paramPlaybackStateCompat;
          sendState(paramPlaybackStateCompat);
          if (!this.mIsActive)
            return;
        }
        if (paramPlaybackStateCompat != null)
          break;
        if (Build.VERSION.SDK_INT < 14)
          continue;
        MediaSessionCompatApi14.setState(this.mRccObj, 0);
        MediaSessionCompatApi14.setTransportControlFlags(this.mRccObj, 0L);
        return;
      }
      if (Build.VERSION.SDK_INT >= 18)
        MediaSessionCompatApi18.setState(this.mRccObj, paramPlaybackStateCompat.getState(), paramPlaybackStateCompat.getPosition(), paramPlaybackStateCompat.getPlaybackSpeed(), paramPlaybackStateCompat.getLastPositionUpdateTime());
      while (Build.VERSION.SDK_INT >= 19)
      {
        MediaSessionCompatApi19.setTransportControlFlags(this.mRccObj, paramPlaybackStateCompat.getActions());
        return;
        if (Build.VERSION.SDK_INT < 14)
          continue;
        MediaSessionCompatApi14.setState(this.mRccObj, paramPlaybackStateCompat.getState());
      }
      if (Build.VERSION.SDK_INT < 18)
        continue;
      MediaSessionCompatApi18.setTransportControlFlags(this.mRccObj, paramPlaybackStateCompat.getActions());
      return;
    }
    while (Build.VERSION.SDK_INT < 14);
    MediaSessionCompatApi14.setTransportControlFlags(this.mRccObj, paramPlaybackStateCompat.getActions());
  }

  public void setPlaybackToLocal(int paramInt)
  {
    if (this.mVolumeProvider != null)
      this.mVolumeProvider.setCallback(null);
    this.mVolumeType = 1;
    sendVolumeInfoChanged(new ParcelableVolumeInfo(this.mVolumeType, this.mLocalStream, 2, this.mAudioManager.getStreamMaxVolume(this.mLocalStream), this.mAudioManager.getStreamVolume(this.mLocalStream)));
  }

  public void setPlaybackToRemote(VolumeProviderCompat paramVolumeProviderCompat)
  {
    if (paramVolumeProviderCompat == null)
      throw new IllegalArgumentException("volumeProvider may not be null");
    if (this.mVolumeProvider != null)
      this.mVolumeProvider.setCallback(null);
    this.mVolumeType = 2;
    this.mVolumeProvider = paramVolumeProviderCompat;
    sendVolumeInfoChanged(new ParcelableVolumeInfo(this.mVolumeType, this.mLocalStream, this.mVolumeProvider.getVolumeControl(), this.mVolumeProvider.getMaxVolume(), this.mVolumeProvider.getCurrentVolume()));
    paramVolumeProviderCompat.setCallback(this.mVolumeCallback);
  }

  public void setQueue(List<MediaSessionCompat.QueueItem> paramList)
  {
    this.mQueue = paramList;
    sendQueue(paramList);
  }

  public void setQueueTitle(CharSequence paramCharSequence)
  {
    this.mQueueTitle = paramCharSequence;
    sendQueueTitle(paramCharSequence);
  }

  public void setRatingType(int paramInt)
  {
    this.mRatingType = paramInt;
  }

  public void setSessionActivity(PendingIntent paramPendingIntent)
  {
    synchronized (this.mLock)
    {
      this.mSessionActivity = paramPendingIntent;
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase
 * JD-Core Version:    0.6.0
 */