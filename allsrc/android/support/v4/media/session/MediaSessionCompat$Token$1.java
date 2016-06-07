package android.support.v4.media.session;

import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable.Creator;

final class MediaSessionCompat$Token$1
  implements Parcelable.Creator<MediaSessionCompat.Token>
{
  public final MediaSessionCompat.Token createFromParcel(Parcel paramParcel)
  {
    if (Build.VERSION.SDK_INT >= 21);
    for (Object localObject = paramParcel.readParcelable(null); ; localObject = paramParcel.readStrongBinder())
      return new MediaSessionCompat.Token(localObject);
  }

  public final MediaSessionCompat.Token[] newArray(int paramInt)
  {
    return new MediaSessionCompat.Token[paramInt];
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.session.MediaSessionCompat.Token.1
 * JD-Core Version:    0.6.0
 */