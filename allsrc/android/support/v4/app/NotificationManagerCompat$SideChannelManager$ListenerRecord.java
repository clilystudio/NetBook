package android.support.v4.app;

import android.content.ComponentName;
import java.util.LinkedList;

class NotificationManagerCompat$SideChannelManager$ListenerRecord
{
  public boolean bound = false;
  public final ComponentName componentName;
  public int retryCount = 0;
  public INotificationSideChannel service;
  public LinkedList<NotificationManagerCompat.Task> taskQueue = new LinkedList();

  public NotificationManagerCompat$SideChannelManager$ListenerRecord(ComponentName paramComponentName)
  {
    this.componentName = paramComponentName;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.app.NotificationManagerCompat.SideChannelManager.ListenerRecord
 * JD-Core Version:    0.6.0
 */