package android.support.v4.app;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;

class RemoteInput$ImplBase
  implements RemoteInput.Impl
{
  public void addResultsToIntent(RemoteInput[] paramArrayOfRemoteInput, Intent paramIntent, Bundle paramBundle)
  {
    Log.w("RemoteInput", "RemoteInput is only supported from API Level 16");
  }

  public Bundle getResultsFromIntent(Intent paramIntent)
  {
    Log.w("RemoteInput", "RemoteInput is only supported from API Level 16");
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.app.RemoteInput.ImplBase
 * JD-Core Version:    0.6.0
 */