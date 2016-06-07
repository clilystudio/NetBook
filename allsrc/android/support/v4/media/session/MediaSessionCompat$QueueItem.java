package android.support.v4.media.session;

import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.media.MediaDescriptionCompat;

public final class MediaSessionCompat$QueueItem
  implements Parcelable
{
  public static final Parcelable.Creator<QueueItem> CREATOR = new MediaSessionCompat.QueueItem.1();
  public static final int UNKNOWN_ID = -1;
  private final MediaDescriptionCompat mDescription;
  private final long mId;
  private Object mItem;

  private MediaSessionCompat$QueueItem(Parcel paramParcel)
  {
    this.mDescription = ((MediaDescriptionCompat)MediaDescriptionCompat.CREATOR.createFromParcel(paramParcel));
    this.mId = paramParcel.readLong();
  }

  public MediaSessionCompat$QueueItem(MediaDescriptionCompat paramMediaDescriptionCompat, long paramLong)
  {
    this(null, paramMediaDescriptionCompat, paramLong);
  }

  private MediaSessionCompat$QueueItem(Object paramObject, MediaDescriptionCompat paramMediaDescriptionCompat, long paramLong)
  {
    if (paramMediaDescriptionCompat == null)
      throw new IllegalArgumentException("Description cannot be null.");
    if (paramLong == -1L)
      throw new IllegalArgumentException("Id cannot be QueueItem.UNKNOWN_ID");
    this.mDescription = paramMediaDescriptionCompat;
    this.mId = paramLong;
    this.mItem = paramObject;
  }

  public static QueueItem obtain(Object paramObject)
  {
    return new QueueItem(paramObject, MediaDescriptionCompat.fromMediaDescription(MediaSessionCompatApi21.QueueItem.getDescription(paramObject)), MediaSessionCompatApi21.QueueItem.getQueueId(paramObject));
  }

  public final int describeContents()
  {
    return 0;
  }

  public final MediaDescriptionCompat getDescription()
  {
    return this.mDescription;
  }

  public final long getQueueId()
  {
    return this.mId;
  }

  public final Object getQueueItem()
  {
    if ((this.mItem != null) || (Build.VERSION.SDK_INT < 21))
      return this.mItem;
    this.mItem = MediaSessionCompatApi21.QueueItem.createItem(this.mDescription.getMediaDescription(), this.mId);
    return this.mItem;
  }

  public final String toString()
  {
    return "MediaSession.QueueItem {Description=" + this.mDescription + ", Id=" + this.mId + " }";
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    this.mDescription.writeToParcel(paramParcel, paramInt);
    paramParcel.writeLong(this.mId);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.session.MediaSessionCompat.QueueItem
 * JD-Core Version:    0.6.0
 */