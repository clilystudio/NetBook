package android.support.v4.media.session;

import android.os.Bundle;
import android.os.ResultReceiver;

final class MediaSessionCompat$MediaSessionImplBase$Command
{
  public final String command;
  public final Bundle extras;
  public final ResultReceiver stub;

  public MediaSessionCompat$MediaSessionImplBase$Command(String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver)
  {
    this.command = paramString;
    this.extras = paramBundle;
    this.stub = paramResultReceiver;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.Command
 * JD-Core Version:    0.6.0
 */