package android.support.v4.media.session;

import android.media.session.PlaybackState.CustomAction;
import android.media.session.PlaybackState.CustomAction.Builder;
import android.os.Bundle;

final class PlaybackStateCompatApi21$CustomAction
{
  public static String getAction(Object paramObject)
  {
    return ((PlaybackState.CustomAction)paramObject).getAction();
  }

  public static Bundle getExtras(Object paramObject)
  {
    return ((PlaybackState.CustomAction)paramObject).getExtras();
  }

  public static int getIcon(Object paramObject)
  {
    return ((PlaybackState.CustomAction)paramObject).getIcon();
  }

  public static CharSequence getName(Object paramObject)
  {
    return ((PlaybackState.CustomAction)paramObject).getName();
  }

  public static Object newInstance(String paramString, CharSequence paramCharSequence, int paramInt, Bundle paramBundle)
  {
    PlaybackState.CustomAction.Builder localBuilder = new PlaybackState.CustomAction.Builder(paramString, paramCharSequence, paramInt);
    localBuilder.setExtras(paramBundle);
    return localBuilder.build();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.session.PlaybackStateCompatApi21.CustomAction
 * JD-Core Version:    0.6.0
 */