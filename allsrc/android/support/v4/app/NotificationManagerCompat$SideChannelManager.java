package android.support.v4.app;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class NotificationManagerCompat$SideChannelManager
  implements ServiceConnection, Handler.Callback
{
  private static final String KEY_BINDER = "binder";
  private static final int MSG_QUEUE_TASK = 0;
  private static final int MSG_RETRY_LISTENER_QUEUE = 3;
  private static final int MSG_SERVICE_CONNECTED = 1;
  private static final int MSG_SERVICE_DISCONNECTED = 2;
  private Set<String> mCachedEnabledPackages = new HashSet();
  private final Context mContext;
  private final Handler mHandler;
  private final HandlerThread mHandlerThread;
  private final Map<ComponentName, NotificationManagerCompat.SideChannelManager.ListenerRecord> mRecordMap = new HashMap();

  public NotificationManagerCompat$SideChannelManager(Context paramContext)
  {
    this.mContext = paramContext;
    this.mHandlerThread = new HandlerThread("NotificationManagerCompat");
    this.mHandlerThread.start();
    this.mHandler = new Handler(this.mHandlerThread.getLooper(), this);
  }

  private boolean ensureServiceBound(NotificationManagerCompat.SideChannelManager.ListenerRecord paramListenerRecord)
  {
    if (paramListenerRecord.bound)
      return true;
    Intent localIntent = new Intent("android.support.BIND_NOTIFICATION_SIDE_CHANNEL").setComponent(paramListenerRecord.componentName);
    paramListenerRecord.bound = this.mContext.bindService(localIntent, this, NotificationManagerCompat.access$000());
    if (paramListenerRecord.bound)
      paramListenerRecord.retryCount = 0;
    while (true)
    {
      return paramListenerRecord.bound;
      Log.w("NotifManCompat", "Unable to bind to listener " + paramListenerRecord.componentName);
      this.mContext.unbindService(this);
    }
  }

  private void ensureServiceUnbound(NotificationManagerCompat.SideChannelManager.ListenerRecord paramListenerRecord)
  {
    if (paramListenerRecord.bound)
    {
      this.mContext.unbindService(this);
      paramListenerRecord.bound = false;
    }
    paramListenerRecord.service = null;
  }

  private void handleQueueTask(NotificationManagerCompat.Task paramTask)
  {
    updateListenerMap();
    Iterator localIterator = this.mRecordMap.values().iterator();
    while (localIterator.hasNext())
    {
      NotificationManagerCompat.SideChannelManager.ListenerRecord localListenerRecord = (NotificationManagerCompat.SideChannelManager.ListenerRecord)localIterator.next();
      localListenerRecord.taskQueue.add(paramTask);
      processListenerQueue(localListenerRecord);
    }
  }

  private void handleRetryListenerQueue(ComponentName paramComponentName)
  {
    NotificationManagerCompat.SideChannelManager.ListenerRecord localListenerRecord = (NotificationManagerCompat.SideChannelManager.ListenerRecord)this.mRecordMap.get(paramComponentName);
    if (localListenerRecord != null)
      processListenerQueue(localListenerRecord);
  }

  private void handleServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    NotificationManagerCompat.SideChannelManager.ListenerRecord localListenerRecord = (NotificationManagerCompat.SideChannelManager.ListenerRecord)this.mRecordMap.get(paramComponentName);
    if (localListenerRecord != null)
    {
      localListenerRecord.service = INotificationSideChannel.Stub.asInterface(paramIBinder);
      localListenerRecord.retryCount = 0;
      processListenerQueue(localListenerRecord);
    }
  }

  private void handleServiceDisconnected(ComponentName paramComponentName)
  {
    NotificationManagerCompat.SideChannelManager.ListenerRecord localListenerRecord = (NotificationManagerCompat.SideChannelManager.ListenerRecord)this.mRecordMap.get(paramComponentName);
    if (localListenerRecord != null)
      ensureServiceUnbound(localListenerRecord);
  }

  private void processListenerQueue(NotificationManagerCompat.SideChannelManager.ListenerRecord paramListenerRecord)
  {
    if (Log.isLoggable("NotifManCompat", 3))
      Log.d("NotifManCompat", "Processing component " + paramListenerRecord.componentName + ", " + paramListenerRecord.taskQueue.size() + " queued tasks");
    if (paramListenerRecord.taskQueue.isEmpty());
    while (true)
    {
      return;
      if ((!ensureServiceBound(paramListenerRecord)) || (paramListenerRecord.service == null))
      {
        scheduleListenerRetry(paramListenerRecord);
        return;
      }
      NotificationManagerCompat.Task localTask = (NotificationManagerCompat.Task)paramListenerRecord.taskQueue.peek();
      if (localTask != null);
      try
      {
        if (Log.isLoggable("NotifManCompat", 3))
          Log.d("NotifManCompat", "Sending task " + localTask);
        localTask.send(paramListenerRecord.service);
        paramListenerRecord.taskQueue.remove();
      }
      catch (DeadObjectException localDeadObjectException)
      {
        if (Log.isLoggable("NotifManCompat", 3))
          Log.d("NotifManCompat", "Remote service has died: " + paramListenerRecord.componentName);
        if (paramListenerRecord.taskQueue.isEmpty())
          continue;
        scheduleListenerRetry(paramListenerRecord);
        return;
      }
      catch (RemoteException localRemoteException)
      {
        while (true)
          Log.w("NotifManCompat", "RemoteException communicating with " + paramListenerRecord.componentName, localRemoteException);
      }
    }
  }

  private void scheduleListenerRetry(NotificationManagerCompat.SideChannelManager.ListenerRecord paramListenerRecord)
  {
    if (this.mHandler.hasMessages(3, paramListenerRecord.componentName))
      return;
    paramListenerRecord.retryCount = (1 + paramListenerRecord.retryCount);
    if (paramListenerRecord.retryCount > 6)
    {
      Log.w("NotifManCompat", "Giving up on delivering " + paramListenerRecord.taskQueue.size() + " tasks to " + paramListenerRecord.componentName + " after " + paramListenerRecord.retryCount + " retries");
      paramListenerRecord.taskQueue.clear();
      return;
    }
    int i = 1000 * (1 << -1 + paramListenerRecord.retryCount);
    if (Log.isLoggable("NotifManCompat", 3))
      Log.d("NotifManCompat", "Scheduling retry for " + i + " ms");
    Message localMessage = this.mHandler.obtainMessage(3, paramListenerRecord.componentName);
    this.mHandler.sendMessageDelayed(localMessage, i);
  }

  private void updateListenerMap()
  {
    Set localSet = NotificationManagerCompat.getEnabledListenerPackages(this.mContext);
    if (localSet.equals(this.mCachedEnabledPackages));
    while (true)
    {
      return;
      this.mCachedEnabledPackages = localSet;
      List localList = this.mContext.getPackageManager().queryIntentServices(new Intent().setAction("android.support.BIND_NOTIFICATION_SIDE_CHANNEL"), 4);
      HashSet localHashSet = new HashSet();
      Iterator localIterator1 = localList.iterator();
      while (localIterator1.hasNext())
      {
        ResolveInfo localResolveInfo = (ResolveInfo)localIterator1.next();
        if (!localSet.contains(localResolveInfo.serviceInfo.packageName))
          continue;
        ComponentName localComponentName2 = new ComponentName(localResolveInfo.serviceInfo.packageName, localResolveInfo.serviceInfo.name);
        if (localResolveInfo.serviceInfo.permission != null)
        {
          Log.w("NotifManCompat", "Permission present on component " + localComponentName2 + ", not adding listener record.");
          continue;
        }
        localHashSet.add(localComponentName2);
      }
      Iterator localIterator2 = localHashSet.iterator();
      while (localIterator2.hasNext())
      {
        ComponentName localComponentName1 = (ComponentName)localIterator2.next();
        if (this.mRecordMap.containsKey(localComponentName1))
          continue;
        if (Log.isLoggable("NotifManCompat", 3))
          Log.d("NotifManCompat", "Adding listener record for " + localComponentName1);
        this.mRecordMap.put(localComponentName1, new NotificationManagerCompat.SideChannelManager.ListenerRecord(localComponentName1));
      }
      Iterator localIterator3 = this.mRecordMap.entrySet().iterator();
      while (localIterator3.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator3.next();
        if (localHashSet.contains(localEntry.getKey()))
          continue;
        if (Log.isLoggable("NotifManCompat", 3))
          Log.d("NotifManCompat", "Removing listener record for " + localEntry.getKey());
        ensureServiceUnbound((NotificationManagerCompat.SideChannelManager.ListenerRecord)localEntry.getValue());
        localIterator3.remove();
      }
    }
  }

  public boolean handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      return false;
    case 0:
      handleQueueTask((NotificationManagerCompat.Task)paramMessage.obj);
      return true;
    case 1:
      NotificationManagerCompat.ServiceConnectedEvent localServiceConnectedEvent = (NotificationManagerCompat.ServiceConnectedEvent)paramMessage.obj;
      handleServiceConnected(localServiceConnectedEvent.componentName, localServiceConnectedEvent.iBinder);
      return true;
    case 2:
      handleServiceDisconnected((ComponentName)paramMessage.obj);
      return true;
    case 3:
    }
    handleRetryListenerQueue((ComponentName)paramMessage.obj);
    return true;
  }

  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    if (Log.isLoggable("NotifManCompat", 3))
      Log.d("NotifManCompat", "Connected to service " + paramComponentName);
    this.mHandler.obtainMessage(1, new NotificationManagerCompat.ServiceConnectedEvent(paramComponentName, paramIBinder)).sendToTarget();
  }

  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    if (Log.isLoggable("NotifManCompat", 3))
      Log.d("NotifManCompat", "Disconnected from service " + paramComponentName);
    this.mHandler.obtainMessage(2, paramComponentName).sendToTarget();
  }

  public void queueTask(NotificationManagerCompat.Task paramTask)
  {
    this.mHandler.obtainMessage(0, paramTask).sendToTarget();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.app.NotificationManagerCompat.SideChannelManager
 * JD-Core Version:    0.6.0
 */