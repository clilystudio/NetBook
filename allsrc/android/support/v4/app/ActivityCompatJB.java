package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

class ActivityCompatJB
{
  public static void finishAffinity(Activity paramActivity)
  {
    paramActivity.finishAffinity();
  }

  public static void startActivity(Context paramContext, Intent paramIntent, Bundle paramBundle)
  {
    paramContext.startActivity(paramIntent, paramBundle);
  }

  public static void startActivityForResult(Activity paramActivity, Intent paramIntent, int paramInt, Bundle paramBundle)
  {
    paramActivity.startActivityForResult(paramIntent, paramInt, paramBundle);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.app.ActivityCompatJB
 * JD-Core Version:    0.6.0
 */