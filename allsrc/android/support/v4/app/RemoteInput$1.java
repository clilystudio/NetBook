package android.support.v4.app;

import android.os.Bundle;

final class RemoteInput$1
  implements RemoteInputCompatBase.RemoteInput.Factory
{
  public final RemoteInput build(String paramString, CharSequence paramCharSequence, CharSequence[] paramArrayOfCharSequence, boolean paramBoolean, Bundle paramBundle)
  {
    return new RemoteInput(paramString, paramCharSequence, paramArrayOfCharSequence, paramBoolean, paramBundle);
  }

  public final RemoteInput[] newArray(int paramInt)
  {
    return new RemoteInput[paramInt];
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.app.RemoteInput.1
 * JD-Core Version:    0.6.0
 */