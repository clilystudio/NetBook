package android.support.v4.media.session;

import android.os.Bundle;
import android.text.TextUtils;

public final class PlaybackStateCompat$CustomAction$Builder
{
  private final String mAction;
  private Bundle mExtras;
  private final int mIcon;
  private final CharSequence mName;

  public PlaybackStateCompat$CustomAction$Builder(String paramString, CharSequence paramCharSequence, int paramInt)
  {
    if (TextUtils.isEmpty(paramString))
      throw new IllegalArgumentException("You must specify an action to build a CustomAction.");
    if (TextUtils.isEmpty(paramCharSequence))
      throw new IllegalArgumentException("You must specify a name to build a CustomAction.");
    if (paramInt == 0)
      throw new IllegalArgumentException("You must specify an icon resource id to build a CustomAction.");
    this.mAction = paramString;
    this.mName = paramCharSequence;
    this.mIcon = paramInt;
  }

  public final PlaybackStateCompat.CustomAction build()
  {
    return new PlaybackStateCompat.CustomAction(this.mAction, this.mName, this.mIcon, this.mExtras, null);
  }

  public final Builder setExtras(Bundle paramBundle)
  {
    this.mExtras = paramBundle;
    return this;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.session.PlaybackStateCompat.CustomAction.Builder
 * JD-Core Version:    0.6.0
 */