package android.support.v4.media.session;

import android.app.PendingIntent;
import android.content.Context;
import android.media.AudioManager;
import android.media.RemoteControlClient;
import android.media.RemoteControlClient.OnPlaybackPositionUpdateListener;
import android.os.SystemClock;

public class MediaSessionCompatApi18
{
  private static final long ACTION_SEEK_TO = 256L;

  public static Object createPlaybackPositionUpdateListener(MediaSessionCompatApi14.Callback paramCallback)
  {
    return new MediaSessionCompatApi18.OnPlaybackPositionUpdateListener(paramCallback);
  }

  static int getRccTransportControlFlagsFromActions(long paramLong)
  {
    int i = MediaSessionCompatApi14.getRccTransportControlFlagsFromActions(paramLong);
    if ((0x100 & paramLong) != 0L)
      i |= 256;
    return i;
  }

  public static void registerMediaButtonEventReceiver(Context paramContext, PendingIntent paramPendingIntent)
  {
    ((AudioManager)paramContext.getSystemService("audio")).registerMediaButtonEventReceiver(paramPendingIntent);
  }

  public static void setOnPlaybackPositionUpdateListener(Object paramObject1, Object paramObject2)
  {
    ((RemoteControlClient)paramObject1).setPlaybackPositionUpdateListener((RemoteControlClient.OnPlaybackPositionUpdateListener)paramObject2);
  }

  public static void setState(Object paramObject, int paramInt, long paramLong1, float paramFloat, long paramLong2)
  {
    long l1 = 0L;
    long l2 = SystemClock.elapsedRealtime();
    if ((paramInt == 3) && (paramLong1 > l1))
    {
      if (paramLong2 > l1)
      {
        l1 = l2 - paramLong2;
        if ((paramFloat > 0.0F) && (paramFloat != 1.0F))
          l1 = ()(paramFloat * (float)l1);
      }
      paramLong1 += l1;
    }
    int i = MediaSessionCompatApi14.getRccStateFromState(paramInt);
    ((RemoteControlClient)paramObject).setPlaybackState(i, paramLong1, paramFloat);
  }

  public static void setTransportControlFlags(Object paramObject, long paramLong)
  {
    ((RemoteControlClient)paramObject).setTransportControlFlags(getRccTransportControlFlagsFromActions(paramLong));
  }

  public static void unregisterMediaButtonEventReceiver(Context paramContext, PendingIntent paramPendingIntent)
  {
    ((AudioManager)paramContext.getSystemService("audio")).unregisterMediaButtonEventReceiver(paramPendingIntent);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.session.MediaSessionCompatApi18
 * JD-Core Version:    0.6.0
 */