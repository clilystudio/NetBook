package android.support.v4.app;

import android.app.PendingIntent;
import android.os.Bundle;

public abstract class NotificationCompatBase$Action
{
  public abstract PendingIntent getActionIntent();

  public abstract Bundle getExtras();

  public abstract int getIcon();

  public abstract RemoteInputCompatBase.RemoteInput[] getRemoteInputs();

  public abstract CharSequence getTitle();
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.app.NotificationCompatBase.Action
 * JD-Core Version:    0.6.0
 */