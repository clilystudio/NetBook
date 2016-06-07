package android.support.v4.app;

import android.app.Notification;
import android.app.Notification.BigPictureStyle;
import android.app.Notification.BigTextStyle;
import android.app.Notification.Builder;
import android.app.Notification.InboxStyle;
import android.app.PendingIntent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class NotificationCompatJellybean
{
  static final String EXTRA_ACTION_EXTRAS = "android.support.actionExtras";
  static final String EXTRA_GROUP_KEY = "android.support.groupKey";
  static final String EXTRA_GROUP_SUMMARY = "android.support.isGroupSummary";
  static final String EXTRA_LOCAL_ONLY = "android.support.localOnly";
  static final String EXTRA_REMOTE_INPUTS = "android.support.remoteInputs";
  static final String EXTRA_SORT_KEY = "android.support.sortKey";
  static final String EXTRA_USE_SIDE_CHANNEL = "android.support.useSideChannel";
  private static final String KEY_ACTION_INTENT = "actionIntent";
  private static final String KEY_EXTRAS = "extras";
  private static final String KEY_ICON = "icon";
  private static final String KEY_REMOTE_INPUTS = "remoteInputs";
  private static final String KEY_TITLE = "title";
  public static final String TAG = "NotificationCompat";
  private static Class<?> sActionClass;
  private static Field sActionIconField;
  private static Field sActionIntentField;
  private static Field sActionTitleField;
  private static boolean sActionsAccessFailed;
  private static Field sActionsField;
  private static final Object sActionsLock;
  private static Field sExtrasField;
  private static boolean sExtrasFieldAccessFailed;
  private static final Object sExtrasLock = new Object();

  static
  {
    sActionsLock = new Object();
  }

  public static void addBigPictureStyle(NotificationBuilderWithBuilderAccessor paramNotificationBuilderWithBuilderAccessor, CharSequence paramCharSequence1, boolean paramBoolean1, CharSequence paramCharSequence2, Bitmap paramBitmap1, Bitmap paramBitmap2, boolean paramBoolean2)
  {
    Notification.BigPictureStyle localBigPictureStyle = new Notification.BigPictureStyle(paramNotificationBuilderWithBuilderAccessor.getBuilder()).setBigContentTitle(paramCharSequence1).bigPicture(paramBitmap1);
    if (paramBoolean2)
      localBigPictureStyle.bigLargeIcon(paramBitmap2);
    if (paramBoolean1)
      localBigPictureStyle.setSummaryText(paramCharSequence2);
  }

  public static void addBigTextStyle(NotificationBuilderWithBuilderAccessor paramNotificationBuilderWithBuilderAccessor, CharSequence paramCharSequence1, boolean paramBoolean, CharSequence paramCharSequence2, CharSequence paramCharSequence3)
  {
    Notification.BigTextStyle localBigTextStyle = new Notification.BigTextStyle(paramNotificationBuilderWithBuilderAccessor.getBuilder()).setBigContentTitle(paramCharSequence1).bigText(paramCharSequence3);
    if (paramBoolean)
      localBigTextStyle.setSummaryText(paramCharSequence2);
  }

  public static void addInboxStyle(NotificationBuilderWithBuilderAccessor paramNotificationBuilderWithBuilderAccessor, CharSequence paramCharSequence1, boolean paramBoolean, CharSequence paramCharSequence2, ArrayList<CharSequence> paramArrayList)
  {
    Notification.InboxStyle localInboxStyle = new Notification.InboxStyle(paramNotificationBuilderWithBuilderAccessor.getBuilder()).setBigContentTitle(paramCharSequence1);
    if (paramBoolean)
      localInboxStyle.setSummaryText(paramCharSequence2);
    Iterator localIterator = paramArrayList.iterator();
    while (localIterator.hasNext())
      localInboxStyle.addLine((CharSequence)localIterator.next());
  }

  public static SparseArray<Bundle> buildActionExtrasMap(List<Bundle> paramList)
  {
    SparseArray localSparseArray = null;
    int i = paramList.size();
    for (int j = 0; j < i; j++)
    {
      Bundle localBundle = (Bundle)paramList.get(j);
      if (localBundle == null)
        continue;
      if (localSparseArray == null)
        localSparseArray = new SparseArray();
      localSparseArray.put(j, localBundle);
    }
    return localSparseArray;
  }

  private static boolean ensureActionReflectionReadyLocked()
  {
    if (sActionsAccessFailed);
    while (true)
    {
      return false;
      try
      {
        if (sActionsField == null)
        {
          Class localClass = Class.forName("android.app.Notification$Action");
          sActionClass = localClass;
          sActionIconField = localClass.getDeclaredField("icon");
          sActionTitleField = sActionClass.getDeclaredField("title");
          sActionIntentField = sActionClass.getDeclaredField("actionIntent");
          Field localField = Notification.class.getDeclaredField("actions");
          sActionsField = localField;
          localField.setAccessible(true);
        }
        if (sActionsAccessFailed)
          continue;
        return true;
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        while (true)
        {
          Log.e("NotificationCompat", "Unable to access notification actions", localClassNotFoundException);
          sActionsAccessFailed = true;
        }
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
        while (true)
        {
          Log.e("NotificationCompat", "Unable to access notification actions", localNoSuchFieldException);
          sActionsAccessFailed = true;
        }
      }
    }
  }

  public static NotificationCompatBase.Action getAction(Notification paramNotification, int paramInt, NotificationCompatBase.Action.Factory paramFactory, RemoteInputCompatBase.RemoteInput.Factory paramFactory1)
  {
    while (true)
    {
      synchronized (sActionsLock)
      {
        try
        {
          Object localObject3 = getActionObjectsLocked(paramNotification)[paramInt];
          Bundle localBundle1 = getExtras(paramNotification);
          if (localBundle1 != null)
          {
            SparseArray localSparseArray = localBundle1.getSparseParcelableArray("android.support.actionExtras");
            if (localSparseArray != null)
            {
              localBundle2 = (Bundle)localSparseArray.get(paramInt);
              NotificationCompatBase.Action localAction = readAction(paramFactory, paramFactory1, sActionIconField.getInt(localObject3), (CharSequence)sActionTitleField.get(localObject3), (PendingIntent)sActionIntentField.get(localObject3), localBundle2);
              return localAction;
            }
          }
        }
        catch (IllegalAccessException localIllegalAccessException)
        {
          Log.e("NotificationCompat", "Unable to access notification actions", localIllegalAccessException);
          sActionsAccessFailed = true;
          return null;
        }
      }
      Bundle localBundle2 = null;
    }
  }

  public static int getActionCount(Notification paramNotification)
  {
    while (true)
    {
      synchronized (sActionsLock)
      {
        Object[] arrayOfObject = getActionObjectsLocked(paramNotification);
        if (arrayOfObject != null)
        {
          i = arrayOfObject.length;
          return i;
        }
      }
      int i = 0;
    }
  }

  private static NotificationCompatBase.Action getActionFromBundle(Bundle paramBundle, NotificationCompatBase.Action.Factory paramFactory, RemoteInputCompatBase.RemoteInput.Factory paramFactory1)
  {
    return paramFactory.build(paramBundle.getInt("icon"), paramBundle.getCharSequence("title"), (PendingIntent)paramBundle.getParcelable("actionIntent"), paramBundle.getBundle("extras"), RemoteInputCompatJellybean.fromBundleArray(BundleUtil.getBundleArrayFromBundle(paramBundle, "remoteInputs"), paramFactory1));
  }

  private static Object[] getActionObjectsLocked(Notification paramNotification)
  {
    synchronized (sActionsLock)
    {
      if (!ensureActionReflectionReadyLocked())
        return null;
    }
    try
    {
      Object[] arrayOfObject = (Object[])sActionsField.get(paramNotification);
      monitorexit;
      return arrayOfObject;
      localObject2 = finally;
      monitorexit;
      throw localObject2;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      Log.e("NotificationCompat", "Unable to access notification actions", localIllegalAccessException);
      sActionsAccessFailed = true;
      monitorexit;
    }
    return null;
  }

  public static NotificationCompatBase.Action[] getActionsFromParcelableArrayList(ArrayList<Parcelable> paramArrayList, NotificationCompatBase.Action.Factory paramFactory, RemoteInputCompatBase.RemoteInput.Factory paramFactory1)
  {
    if (paramArrayList == null)
      return null;
    NotificationCompatBase.Action[] arrayOfAction = paramFactory.newArray(paramArrayList.size());
    for (int i = 0; i < arrayOfAction.length; i++)
      arrayOfAction[i] = getActionFromBundle((Bundle)paramArrayList.get(i), paramFactory, paramFactory1);
    return arrayOfAction;
  }

  private static Bundle getBundleForAction(NotificationCompatBase.Action paramAction)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("icon", paramAction.getIcon());
    localBundle.putCharSequence("title", paramAction.getTitle());
    localBundle.putParcelable("actionIntent", paramAction.getActionIntent());
    localBundle.putBundle("extras", paramAction.getExtras());
    localBundle.putParcelableArray("remoteInputs", RemoteInputCompatJellybean.toBundleArray(paramAction.getRemoteInputs()));
    return localBundle;
  }

  public static Bundle getExtras(Notification paramNotification)
  {
    synchronized (sExtrasLock)
    {
      if (sExtrasFieldAccessFailed)
        return null;
    }
    try
    {
      if (sExtrasField == null)
      {
        Field localField = Notification.class.getDeclaredField("extras");
        if (!Bundle.class.isAssignableFrom(localField.getType()))
        {
          Log.e("NotificationCompat", "Notification.extras field is not of type Bundle");
          sExtrasFieldAccessFailed = true;
          monitorexit;
          return null;
        }
        localField.setAccessible(true);
        sExtrasField = localField;
      }
      Bundle localBundle = (Bundle)sExtrasField.get(paramNotification);
      if (localBundle == null)
      {
        localBundle = new Bundle();
        sExtrasField.set(paramNotification, localBundle);
      }
      monitorexit;
      return localBundle;
      localObject2 = finally;
      monitorexit;
      throw localObject2;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      Log.e("NotificationCompat", "Unable to access notification extras", localIllegalAccessException);
      sExtrasFieldAccessFailed = true;
      monitorexit;
      return null;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      while (true)
        Log.e("NotificationCompat", "Unable to access notification extras", localNoSuchFieldException);
    }
  }

  public static String getGroup(Notification paramNotification)
  {
    return getExtras(paramNotification).getString("android.support.groupKey");
  }

  public static boolean getLocalOnly(Notification paramNotification)
  {
    return getExtras(paramNotification).getBoolean("android.support.localOnly");
  }

  public static ArrayList<Parcelable> getParcelableArrayListForActions(NotificationCompatBase.Action[] paramArrayOfAction)
  {
    ArrayList localArrayList;
    if (paramArrayOfAction == null)
      localArrayList = null;
    while (true)
    {
      return localArrayList;
      localArrayList = new ArrayList(paramArrayOfAction.length);
      int i = paramArrayOfAction.length;
      for (int j = 0; j < i; j++)
        localArrayList.add(getBundleForAction(paramArrayOfAction[j]));
    }
  }

  public static String getSortKey(Notification paramNotification)
  {
    return getExtras(paramNotification).getString("android.support.sortKey");
  }

  public static boolean isGroupSummary(Notification paramNotification)
  {
    return getExtras(paramNotification).getBoolean("android.support.isGroupSummary");
  }

  public static NotificationCompatBase.Action readAction(NotificationCompatBase.Action.Factory paramFactory, RemoteInputCompatBase.RemoteInput.Factory paramFactory1, int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent, Bundle paramBundle)
  {
    RemoteInputCompatBase.RemoteInput[] arrayOfRemoteInput = null;
    if (paramBundle != null)
      arrayOfRemoteInput = RemoteInputCompatJellybean.fromBundleArray(BundleUtil.getBundleArrayFromBundle(paramBundle, "android.support.remoteInputs"), paramFactory1);
    return paramFactory.build(paramInt, paramCharSequence, paramPendingIntent, paramBundle, arrayOfRemoteInput);
  }

  public static Bundle writeActionAndGetExtras(Notification.Builder paramBuilder, NotificationCompatBase.Action paramAction)
  {
    paramBuilder.addAction(paramAction.getIcon(), paramAction.getTitle(), paramAction.getActionIntent());
    Bundle localBundle = new Bundle(paramAction.getExtras());
    if (paramAction.getRemoteInputs() != null)
      localBundle.putParcelableArray("android.support.remoteInputs", RemoteInputCompatJellybean.toBundleArray(paramAction.getRemoteInputs()));
    return localBundle;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.app.NotificationCompatJellybean
 * JD-Core Version:    0.6.0
 */