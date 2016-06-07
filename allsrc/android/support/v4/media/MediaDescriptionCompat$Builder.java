package android.support.v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;

public final class MediaDescriptionCompat$Builder
{
  private CharSequence mDescription;
  private Bundle mExtras;
  private Bitmap mIcon;
  private Uri mIconUri;
  private String mMediaId;
  private CharSequence mSubtitle;
  private CharSequence mTitle;

  public final MediaDescriptionCompat build()
  {
    return new MediaDescriptionCompat(this.mMediaId, this.mTitle, this.mSubtitle, this.mDescription, this.mIcon, this.mIconUri, this.mExtras, null);
  }

  public final Builder setDescription(CharSequence paramCharSequence)
  {
    this.mDescription = paramCharSequence;
    return this;
  }

  public final Builder setExtras(Bundle paramBundle)
  {
    this.mExtras = paramBundle;
    return this;
  }

  public final Builder setIconBitmap(Bitmap paramBitmap)
  {
    this.mIcon = paramBitmap;
    return this;
  }

  public final Builder setIconUri(Uri paramUri)
  {
    this.mIconUri = paramUri;
    return this;
  }

  public final Builder setMediaId(String paramString)
  {
    this.mMediaId = paramString;
    return this;
  }

  public final Builder setSubtitle(CharSequence paramCharSequence)
  {
    this.mSubtitle = paramCharSequence;
    return this;
  }

  public final Builder setTitle(CharSequence paramCharSequence)
  {
    this.mTitle = paramCharSequence;
    return this;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.MediaDescriptionCompat.Builder
 * JD-Core Version:    0.6.0
 */