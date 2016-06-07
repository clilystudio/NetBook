package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class PlaybackStateCompat$CustomAction$1
  implements Parcelable.Creator<PlaybackStateCompat.CustomAction>
{
  public final PlaybackStateCompat.CustomAction createFromParcel(Parcel paramParcel)
  {
    return new PlaybackStateCompat.CustomAction(paramParcel, null);
  }

  public final PlaybackStateCompat.CustomAction[] newArray(int paramInt)
  {
    return new PlaybackStateCompat.CustomAction[paramInt];
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.session.PlaybackStateCompat.CustomAction.1
 * JD-Core Version:    0.6.0
 */