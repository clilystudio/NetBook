package android.support.v4.app;

import android.os.Bundle;

public final class RemoteInput$Builder
{
  private boolean mAllowFreeFormInput = true;
  private CharSequence[] mChoices;
  private Bundle mExtras = new Bundle();
  private CharSequence mLabel;
  private final String mResultKey;

  public RemoteInput$Builder(String paramString)
  {
    if (paramString == null)
      throw new IllegalArgumentException("Result key can't be null");
    this.mResultKey = paramString;
  }

  public final Builder addExtras(Bundle paramBundle)
  {
    if (paramBundle != null)
      this.mExtras.putAll(paramBundle);
    return this;
  }

  public final RemoteInput build()
  {
    return new RemoteInput(this.mResultKey, this.mLabel, this.mChoices, this.mAllowFreeFormInput, this.mExtras);
  }

  public final Bundle getExtras()
  {
    return this.mExtras;
  }

  public final Builder setAllowFreeFormInput(boolean paramBoolean)
  {
    this.mAllowFreeFormInput = paramBoolean;
    return this;
  }

  public final Builder setChoices(CharSequence[] paramArrayOfCharSequence)
  {
    this.mChoices = paramArrayOfCharSequence;
    return this;
  }

  public final Builder setLabel(CharSequence paramCharSequence)
  {
    this.mLabel = paramCharSequence;
    return this;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.app.RemoteInput.Builder
 * JD-Core Version:    0.6.0
 */