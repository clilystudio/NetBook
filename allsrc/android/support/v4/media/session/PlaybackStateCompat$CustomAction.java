package android.support.v4.media.session;

import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;

public final class PlaybackStateCompat$CustomAction
  implements Parcelable
{
  public static final Parcelable.Creator<CustomAction> CREATOR = new PlaybackStateCompat.CustomAction.1();
  private final String mAction;
  private Object mCustomActionObj;
  private final Bundle mExtras;
  private final int mIcon;
  private final CharSequence mName;

  private PlaybackStateCompat$CustomAction(Parcel paramParcel)
  {
    this.mAction = paramParcel.readString();
    this.mName = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    this.mIcon = paramParcel.readInt();
    this.mExtras = paramParcel.readBundle();
  }

  private PlaybackStateCompat$CustomAction(String paramString, CharSequence paramCharSequence, int paramInt, Bundle paramBundle)
  {
    this.mAction = paramString;
    this.mName = paramCharSequence;
    this.mIcon = paramInt;
    this.mExtras = paramBundle;
  }

  public static CustomAction fromCustomAction(Object paramObject)
  {
    if ((paramObject == null) || (Build.VERSION.SDK_INT < 21))
      return null;
    CustomAction localCustomAction = new CustomAction(PlaybackStateCompatApi21.CustomAction.getAction(paramObject), PlaybackStateCompatApi21.CustomAction.getName(paramObject), PlaybackStateCompatApi21.CustomAction.getIcon(paramObject), PlaybackStateCompatApi21.CustomAction.getExtras(paramObject));
    localCustomAction.mCustomActionObj = paramObject;
    return localCustomAction;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final String getAction()
  {
    return this.mAction;
  }

  public final Object getCustomAction()
  {
    if ((this.mCustomActionObj != null) || (Build.VERSION.SDK_INT < 21))
      return this.mCustomActionObj;
    this.mCustomActionObj = PlaybackStateCompatApi21.CustomAction.newInstance(this.mAction, this.mName, this.mIcon, this.mExtras);
    return this.mCustomActionObj;
  }

  public final Bundle getExtras()
  {
    return this.mExtras;
  }

  public final int getIcon()
  {
    return this.mIcon;
  }

  public final CharSequence getName()
  {
    return this.mName;
  }

  public final String toString()
  {
    return "Action:mName='" + this.mName + ", mIcon=" + this.mIcon + ", mExtras=" + this.mExtras;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.mAction);
    TextUtils.writeToParcel(this.mName, paramParcel, paramInt);
    paramParcel.writeInt(this.mIcon);
    paramParcel.writeBundle(this.mExtras);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.session.PlaybackStateCompat.CustomAction
 * JD-Core Version:    0.6.0
 */