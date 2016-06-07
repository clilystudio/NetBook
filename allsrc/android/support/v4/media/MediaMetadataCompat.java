package android.support.v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.Log;
import java.util.Iterator;
import java.util.Set;

public final class MediaMetadataCompat
  implements Parcelable
{
  public static final Parcelable.Creator<MediaMetadataCompat> CREATOR;
  private static final ArrayMap<String, Integer> METADATA_KEYS_TYPE;
  public static final String METADATA_KEY_ALBUM = "android.media.metadata.ALBUM";
  public static final String METADATA_KEY_ALBUM_ART = "android.media.metadata.ALBUM_ART";
  public static final String METADATA_KEY_ALBUM_ARTIST = "android.media.metadata.ALBUM_ARTIST";
  public static final String METADATA_KEY_ALBUM_ART_URI = "android.media.metadata.ALBUM_ART_URI";
  public static final String METADATA_KEY_ART = "android.media.metadata.ART";
  public static final String METADATA_KEY_ARTIST = "android.media.metadata.ARTIST";
  public static final String METADATA_KEY_ART_URI = "android.media.metadata.ART_URI";
  public static final String METADATA_KEY_AUTHOR = "android.media.metadata.AUTHOR";
  public static final String METADATA_KEY_COMPILATION = "android.media.metadata.COMPILATION";
  public static final String METADATA_KEY_COMPOSER = "android.media.metadata.COMPOSER";
  public static final String METADATA_KEY_DATE = "android.media.metadata.DATE";
  public static final String METADATA_KEY_DISC_NUMBER = "android.media.metadata.DISC_NUMBER";
  public static final String METADATA_KEY_DISPLAY_DESCRIPTION = "android.media.metadata.DISPLAY_DESCRIPTION";
  public static final String METADATA_KEY_DISPLAY_ICON = "android.media.metadata.DISPLAY_ICON";
  public static final String METADATA_KEY_DISPLAY_ICON_URI = "android.media.metadata.DISPLAY_ICON_URI";
  public static final String METADATA_KEY_DISPLAY_SUBTITLE = "android.media.metadata.DISPLAY_SUBTITLE";
  public static final String METADATA_KEY_DISPLAY_TITLE = "android.media.metadata.DISPLAY_TITLE";
  public static final String METADATA_KEY_DURATION = "android.media.metadata.DURATION";
  public static final String METADATA_KEY_GENRE = "android.media.metadata.GENRE";
  public static final String METADATA_KEY_MEDIA_ID = "android.media.metadata.MEDIA_ID";
  public static final String METADATA_KEY_NUM_TRACKS = "android.media.metadata.NUM_TRACKS";
  public static final String METADATA_KEY_RATING = "android.media.metadata.RATING";
  public static final String METADATA_KEY_TITLE = "android.media.metadata.TITLE";
  public static final String METADATA_KEY_TRACK_NUMBER = "android.media.metadata.TRACK_NUMBER";
  public static final String METADATA_KEY_USER_RATING = "android.media.metadata.USER_RATING";
  public static final String METADATA_KEY_WRITER = "android.media.metadata.WRITER";
  public static final String METADATA_KEY_YEAR = "android.media.metadata.YEAR";
  private static final int METADATA_TYPE_BITMAP = 2;
  private static final int METADATA_TYPE_LONG = 0;
  private static final int METADATA_TYPE_RATING = 3;
  private static final int METADATA_TYPE_TEXT = 1;
  private static final String[] PREFERRED_BITMAP_ORDER;
  private static final String[] PREFERRED_DESCRIPTION_ORDER;
  private static final String[] PREFERRED_URI_ORDER;
  private static final String TAG = "MediaMetadata";
  private final Bundle mBundle;
  private MediaDescriptionCompat mDescription;
  private Object mMetadataObj;

  static
  {
    ArrayMap localArrayMap = new ArrayMap();
    METADATA_KEYS_TYPE = localArrayMap;
    localArrayMap.put("android.media.metadata.TITLE", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.ARTIST", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.DURATION", Integer.valueOf(0));
    METADATA_KEYS_TYPE.put("android.media.metadata.ALBUM", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.AUTHOR", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.WRITER", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.COMPOSER", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.COMPILATION", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.DATE", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.YEAR", Integer.valueOf(0));
    METADATA_KEYS_TYPE.put("android.media.metadata.GENRE", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.TRACK_NUMBER", Integer.valueOf(0));
    METADATA_KEYS_TYPE.put("android.media.metadata.NUM_TRACKS", Integer.valueOf(0));
    METADATA_KEYS_TYPE.put("android.media.metadata.DISC_NUMBER", Integer.valueOf(0));
    METADATA_KEYS_TYPE.put("android.media.metadata.ALBUM_ARTIST", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.ART", Integer.valueOf(2));
    METADATA_KEYS_TYPE.put("android.media.metadata.ART_URI", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.ALBUM_ART", Integer.valueOf(2));
    METADATA_KEYS_TYPE.put("android.media.metadata.ALBUM_ART_URI", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.USER_RATING", Integer.valueOf(3));
    METADATA_KEYS_TYPE.put("android.media.metadata.RATING", Integer.valueOf(3));
    METADATA_KEYS_TYPE.put("android.media.metadata.DISPLAY_TITLE", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.DISPLAY_SUBTITLE", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.DISPLAY_DESCRIPTION", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.DISPLAY_ICON", Integer.valueOf(2));
    METADATA_KEYS_TYPE.put("android.media.metadata.DISPLAY_ICON_URI", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.MEDIA_ID", Integer.valueOf(1));
    PREFERRED_DESCRIPTION_ORDER = new String[] { "android.media.metadata.TITLE", "android.media.metadata.ARTIST", "android.media.metadata.ALBUM", "android.media.metadata.ALBUM_ARTIST", "android.media.metadata.WRITER", "android.media.metadata.AUTHOR", "android.media.metadata.COMPOSER" };
    PREFERRED_BITMAP_ORDER = new String[] { "android.media.metadata.DISPLAY_ICON", "android.media.metadata.ART", "android.media.metadata.ALBUM_ART" };
    PREFERRED_URI_ORDER = new String[] { "android.media.metadata.DISPLAY_ICON_URI", "android.media.metadata.ART_URI", "android.media.metadata.ALBUM_ART_URI" };
    CREATOR = new MediaMetadataCompat.1();
  }

  private MediaMetadataCompat(Bundle paramBundle)
  {
    this.mBundle = new Bundle(paramBundle);
  }

  private MediaMetadataCompat(Parcel paramParcel)
  {
    this.mBundle = paramParcel.readBundle();
  }

  public static MediaMetadataCompat fromMediaMetadata(Object paramObject)
  {
    if ((paramObject == null) || (Build.VERSION.SDK_INT < 21))
      return null;
    MediaMetadataCompat.Builder localBuilder = new MediaMetadataCompat.Builder();
    Iterator localIterator = MediaMetadataCompatApi21.keySet(paramObject).iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Integer localInteger = (Integer)METADATA_KEYS_TYPE.get(str);
      if (localInteger == null)
        continue;
      switch (localInteger.intValue())
      {
      default:
        break;
      case 0:
        localBuilder.putLong(str, MediaMetadataCompatApi21.getLong(paramObject, str));
        break;
      case 2:
        localBuilder.putBitmap(str, MediaMetadataCompatApi21.getBitmap(paramObject, str));
        break;
      case 3:
        localBuilder.putRating(str, RatingCompat.fromRating(MediaMetadataCompatApi21.getRating(paramObject, str)));
        break;
      case 1:
        localBuilder.putText(str, MediaMetadataCompatApi21.getText(paramObject, str));
      }
    }
    MediaMetadataCompat localMediaMetadataCompat = localBuilder.build();
    localMediaMetadataCompat.mMetadataObj = paramObject;
    return localMediaMetadataCompat;
  }

  public final boolean containsKey(String paramString)
  {
    return this.mBundle.containsKey(paramString);
  }

  public final int describeContents()
  {
    return 0;
  }

  public final Bitmap getBitmap(String paramString)
  {
    try
    {
      Bitmap localBitmap = (Bitmap)this.mBundle.getParcelable(paramString);
      return localBitmap;
    }
    catch (Exception localException)
    {
      Log.w("MediaMetadata", "Failed to retrieve a key as Bitmap.", localException);
    }
    return null;
  }

  public final Bundle getBundle()
  {
    return this.mBundle;
  }

  public final MediaDescriptionCompat getDescription()
  {
    if (this.mDescription != null)
      return this.mDescription;
    String str1 = getString("android.media.metadata.MEDIA_ID");
    CharSequence[] arrayOfCharSequence = new CharSequence[3];
    CharSequence localCharSequence1 = getText("android.media.metadata.DISPLAY_TITLE");
    int n;
    label63: Bitmap localBitmap1;
    label93: int i1;
    label96: int i;
    int j;
    label218: int k;
    int m;
    if (!TextUtils.isEmpty(localCharSequence1))
    {
      arrayOfCharSequence[0] = localCharSequence1;
      arrayOfCharSequence[1] = getText("android.media.metadata.DISPLAY_SUBTITLE");
      arrayOfCharSequence[2] = getText("android.media.metadata.DISPLAY_DESCRIPTION");
      n = 0;
      if (n >= PREFERRED_BITMAP_ORDER.length)
        break label298;
      Bitmap localBitmap2 = getBitmap(PREFERRED_BITMAP_ORDER[n]);
      if (localBitmap2 != null)
      {
        localBitmap1 = localBitmap2;
        i1 = 0;
        int i2 = PREFERRED_URI_ORDER.length;
        Uri localUri = null;
        if (i1 < i2)
        {
          String str2 = getString(PREFERRED_URI_ORDER[i1]);
          if (TextUtils.isEmpty(str2))
            break label292;
          localUri = Uri.parse(str2);
        }
        MediaDescriptionCompat.Builder localBuilder = new MediaDescriptionCompat.Builder();
        localBuilder.setMediaId(str1);
        localBuilder.setTitle(arrayOfCharSequence[0]);
        localBuilder.setSubtitle(arrayOfCharSequence[1]);
        localBuilder.setDescription(arrayOfCharSequence[2]);
        localBuilder.setIconBitmap(localBitmap1);
        localBuilder.setIconUri(localUri);
        this.mDescription = localBuilder.build();
        return this.mDescription;
      }
    }
    else
    {
      i = 0;
      j = 0;
      if ((j < 3) && (i < PREFERRED_DESCRIPTION_ORDER.length))
      {
        String[] arrayOfString = PREFERRED_DESCRIPTION_ORDER;
        k = i + 1;
        CharSequence localCharSequence2 = getText(arrayOfString[i]);
        if (TextUtils.isEmpty(localCharSequence2))
          break label304;
        m = j + 1;
        arrayOfCharSequence[j] = localCharSequence2;
      }
    }
    while (true)
    {
      j = m;
      i = k;
      break label218;
      break;
      n++;
      break label63;
      label292: i1++;
      break label96;
      label298: localBitmap1 = null;
      break label93;
      label304: m = j;
    }
  }

  public final long getLong(String paramString)
  {
    return this.mBundle.getLong(paramString, 0L);
  }

  public final Object getMediaMetadata()
  {
    if ((this.mMetadataObj != null) || (Build.VERSION.SDK_INT < 21))
      return this.mMetadataObj;
    Object localObject = MediaMetadataCompatApi21.Builder.newInstance();
    Iterator localIterator = keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Integer localInteger = (Integer)METADATA_KEYS_TYPE.get(str);
      if (localInteger == null)
        continue;
      switch (localInteger.intValue())
      {
      default:
        break;
      case 0:
        MediaMetadataCompatApi21.Builder.putLong(localObject, str, getLong(str));
        break;
      case 2:
        MediaMetadataCompatApi21.Builder.putBitmap(localObject, str, getBitmap(str));
        break;
      case 3:
        MediaMetadataCompatApi21.Builder.putRating(localObject, str, getRating(str).getRating());
        break;
      case 1:
        MediaMetadataCompatApi21.Builder.putText(localObject, str, getText(str));
      }
    }
    this.mMetadataObj = MediaMetadataCompatApi21.Builder.build(localObject);
    return this.mMetadataObj;
  }

  public final RatingCompat getRating(String paramString)
  {
    try
    {
      RatingCompat localRatingCompat = (RatingCompat)this.mBundle.getParcelable(paramString);
      return localRatingCompat;
    }
    catch (Exception localException)
    {
      Log.w("MediaMetadata", "Failed to retrieve a key as Rating.", localException);
    }
    return null;
  }

  public final String getString(String paramString)
  {
    CharSequence localCharSequence = this.mBundle.getCharSequence(paramString);
    if (localCharSequence != null)
      return localCharSequence.toString();
    return null;
  }

  public final CharSequence getText(String paramString)
  {
    return this.mBundle.getCharSequence(paramString);
  }

  public final Set<String> keySet()
  {
    return this.mBundle.keySet();
  }

  public final int size()
  {
    return this.mBundle.size();
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeBundle(this.mBundle);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.MediaMetadataCompat
 * JD-Core Version:    0.6.0
 */