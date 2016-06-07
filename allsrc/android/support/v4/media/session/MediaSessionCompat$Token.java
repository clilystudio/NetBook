package android.support.v4.media.session;

import android.os.Build.VERSION;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class MediaSessionCompat$Token
  implements Parcelable
{
  public static final Parcelable.Creator<Token> CREATOR = new MediaSessionCompat.Token.1();
  private final Object mInner;

  MediaSessionCompat$Token(Object paramObject)
  {
    this.mInner = paramObject;
  }

  public static Token fromToken(Object paramObject)
  {
    if ((paramObject == null) || (Build.VERSION.SDK_INT < 21))
      return null;
    return new Token(MediaSessionCompatApi21.verifyToken(paramObject));
  }

  public final int describeContents()
  {
    return 0;
  }

  public final Object getToken()
  {
    return this.mInner;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      paramParcel.writeParcelable((Parcelable)this.mInner, paramInt);
      return;
    }
    paramParcel.writeStrongBinder((IBinder)this.mInner);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.session.MediaSessionCompat.Token
 * JD-Core Version:    0.6.0
 */