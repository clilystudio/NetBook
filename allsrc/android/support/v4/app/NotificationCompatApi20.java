package android.support.v4.app;

import android.app.Notification;
import android.app.Notification.Action;
import android.app.Notification.Action.Builder;
import android.app.Notification.Builder;
import android.app.RemoteInput;
import android.os.Parcelable;
import java.util.ArrayList;

class NotificationCompatApi20
{
  public static void addAction(Notification.Builder paramBuilder, NotificationCompatBase.Action paramAction)
  {
    Notification.Action.Builder localBuilder = new Notification.Action.Builder(paramAction.getIcon(), paramAction.getTitle(), paramAction.getActionIntent());
    if (paramAction.getRemoteInputs() != null)
    {
      RemoteInput[] arrayOfRemoteInput = RemoteInputCompatApi20.fromCompat(paramAction.getRemoteInputs());
      int i = arrayOfRemoteInput.length;
      for (int j = 0; j < i; j++)
        localBuilder.addRemoteInput(arrayOfRemoteInput[j]);
    }
    if (paramAction.getExtras() != null)
      localBuilder.addExtras(paramAction.getExtras());
    paramBuilder.addAction(localBuilder.build());
  }

  public static NotificationCompatBase.Action getAction(Notification paramNotification, int paramInt, NotificationCompatBase.Action.Factory paramFactory, RemoteInputCompatBase.RemoteInput.Factory paramFactory1)
  {
    return getActionCompatFromAction(paramNotification.actions[paramInt], paramFactory, paramFactory1);
  }

  private static NotificationCompatBase.Action getActionCompatFromAction(Notification.Action paramAction, NotificationCompatBase.Action.Factory paramFactory, RemoteInputCompatBase.RemoteInput.Factory paramFactory1)
  {
    RemoteInputCompatBase.RemoteInput[] arrayOfRemoteInput = RemoteInputCompatApi20.toCompat(paramAction.getRemoteInputs(), paramFactory1);
    return paramFactory.build(paramAction.icon, paramAction.title, paramAction.actionIntent, paramAction.getExtras(), arrayOfRemoteInput);
  }

  private static Notification.Action getActionFromActionCompat(NotificationCompatBase.Action paramAction)
  {
    Notification.Action.Builder localBuilder = new Notification.Action.Builder(paramAction.getIcon(), paramAction.getTitle(), paramAction.getActionIntent()).addExtras(paramAction.getExtras());
    RemoteInputCompatBase.RemoteInput[] arrayOfRemoteInput = paramAction.getRemoteInputs();
    if (arrayOfRemoteInput != null)
    {
      RemoteInput[] arrayOfRemoteInput1 = RemoteInputCompatApi20.fromCompat(arrayOfRemoteInput);
      int i = arrayOfRemoteInput1.length;
      for (int j = 0; j < i; j++)
        localBuilder.addRemoteInput(arrayOfRemoteInput1[j]);
    }
    return localBuilder.build();
  }

  public static NotificationCompatBase.Action[] getActionsFromParcelableArrayList(ArrayList<Parcelable> paramArrayList, NotificationCompatBase.Action.Factory paramFactory, RemoteInputCompatBase.RemoteInput.Factory paramFactory1)
  {
    if (paramArrayList == null)
      return null;
    NotificationCompatBase.Action[] arrayOfAction = paramFactory.newArray(paramArrayList.size());
    for (int i = 0; i < arrayOfAction.length; i++)
      arrayOfAction[i] = getActionCompatFromAction((Notification.Action)paramArrayList.get(i), paramFactory, paramFactory1);
    return arrayOfAction;
  }

  public static String getGroup(Notification paramNotification)
  {
    return paramNotification.getGroup();
  }

  public static boolean getLocalOnly(Notification paramNotification)
  {
    return (0x100 & paramNotification.flags) != 0;
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
        localArrayList.add(getActionFromActionCompat(paramArrayOfAction[j]));
    }
  }

  public static String getSortKey(Notification paramNotification)
  {
    return paramNotification.getSortKey();
  }

  public static boolean isGroupSummary(Notification paramNotification)
  {
    return (0x200 & paramNotification.flags) != 0;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.app.NotificationCompatApi20
 * JD-Core Version:    0.6.0
 */