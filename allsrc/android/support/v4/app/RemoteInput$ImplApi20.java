package android.support.v4.app;

import android.content.Intent;
import android.os.Bundle;

class RemoteInput$ImplApi20
  implements RemoteInput.Impl
{
  public void addResultsToIntent(RemoteInput[] paramArrayOfRemoteInput, Intent paramIntent, Bundle paramBundle)
  {
    RemoteInputCompatApi20.addResultsToIntent(paramArrayOfRemoteInput, paramIntent, paramBundle);
  }

  public Bundle getResultsFromIntent(Intent paramIntent)
  {
    return RemoteInputCompatApi20.getResultsFromIntent(paramIntent);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.app.RemoteInput.ImplApi20
 * JD-Core Version:    0.6.0
 */