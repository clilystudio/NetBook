package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.app.RemoteInput.Builder;
import android.os.Bundle;
import android.os.Parcelable;

class NotificationCompatApi21
{
  public static final String CATEGORY_ALARM = "alarm";
  public static final String CATEGORY_CALL = "call";
  public static final String CATEGORY_EMAIL = "email";
  public static final String CATEGORY_ERROR = "err";
  public static final String CATEGORY_EVENT = "event";
  public static final String CATEGORY_MESSAGE = "msg";
  public static final String CATEGORY_PROGRESS = "progress";
  public static final String CATEGORY_PROMO = "promo";
  public static final String CATEGORY_RECOMMENDATION = "recommendation";
  public static final String CATEGORY_SERVICE = "service";
  public static final String CATEGORY_SOCIAL = "social";
  public static final String CATEGORY_STATUS = "status";
  public static final String CATEGORY_SYSTEM = "sys";
  public static final String CATEGORY_TRANSPORT = "transport";
  private static final String KEY_AUTHOR = "author";
  private static final String KEY_MESSAGES = "messages";
  private static final String KEY_ON_READ = "on_read";
  private static final String KEY_ON_REPLY = "on_reply";
  private static final String KEY_PARTICIPANTS = "participants";
  private static final String KEY_REMOTE_INPUT = "remote_input";
  private static final String KEY_TEXT = "text";
  private static final String KEY_TIMESTAMP = "timestamp";

  private static RemoteInput fromCompatRemoteInput(RemoteInputCompatBase.RemoteInput paramRemoteInput)
  {
    return new RemoteInput.Builder(paramRemoteInput.getResultKey()).setLabel(paramRemoteInput.getLabel()).setChoices(paramRemoteInput.getChoices()).setAllowFreeFormInput(paramRemoteInput.getAllowFreeFormInput()).addExtras(paramRemoteInput.getExtras()).build();
  }

  static Bundle getBundleForUnreadConversation(NotificationCompatBase.UnreadConversation paramUnreadConversation)
  {
    int i = 0;
    if (paramUnreadConversation == null)
      return null;
    Bundle localBundle1 = new Bundle();
    String[] arrayOfString = paramUnreadConversation.getParticipants();
    String str = null;
    if (arrayOfString != null)
    {
      int j = paramUnreadConversation.getParticipants().length;
      str = null;
      if (j > 1)
        str = paramUnreadConversation.getParticipants()[0];
    }
    Parcelable[] arrayOfParcelable = new Parcelable[paramUnreadConversation.getMessages().length];
    while (i < arrayOfParcelable.length)
    {
      Bundle localBundle2 = new Bundle();
      localBundle2.putString("text", paramUnreadConversation.getMessages()[i]);
      localBundle2.putString("author", str);
      arrayOfParcelable[i] = localBundle2;
      i++;
    }
    localBundle1.putParcelableArray("messages", arrayOfParcelable);
    RemoteInputCompatBase.RemoteInput localRemoteInput = paramUnreadConversation.getRemoteInput();
    if (localRemoteInput != null)
      localBundle1.putParcelable("remote_input", fromCompatRemoteInput(localRemoteInput));
    localBundle1.putParcelable("on_reply", paramUnreadConversation.getReplyPendingIntent());
    localBundle1.putParcelable("on_read", paramUnreadConversation.getReadPendingIntent());
    localBundle1.putStringArray("participants", paramUnreadConversation.getParticipants());
    localBundle1.putLong("timestamp", paramUnreadConversation.getLatestTimestamp());
    return localBundle1;
  }

  public static String getCategory(Notification paramNotification)
  {
    return paramNotification.category;
  }

  static NotificationCompatBase.UnreadConversation getUnreadConversationFromBundle(Bundle paramBundle, NotificationCompatBase.UnreadConversation.Factory paramFactory, RemoteInputCompatBase.RemoteInput.Factory paramFactory1)
  {
    if (paramBundle == null)
      return null;
    Parcelable[] arrayOfParcelable = paramBundle.getParcelableArray("messages");
    String[] arrayOfString3;
    int i;
    int j;
    if (arrayOfParcelable != null)
    {
      arrayOfString3 = new String[arrayOfParcelable.length];
      i = 0;
      if (i < arrayOfString3.length)
      {
        boolean bool = arrayOfParcelable[i] instanceof Bundle;
        j = 0;
        if (!bool)
          label52: if (j == 0)
            break label198;
      }
    }
    for (String[] arrayOfString1 = arrayOfString3; ; arrayOfString1 = null)
    {
      PendingIntent localPendingIntent1 = (PendingIntent)paramBundle.getParcelable("on_read");
      PendingIntent localPendingIntent2 = (PendingIntent)paramBundle.getParcelable("on_reply");
      RemoteInput localRemoteInput = (RemoteInput)paramBundle.getParcelable("remote_input");
      String[] arrayOfString2 = paramBundle.getStringArray("participants");
      if ((arrayOfString2 == null) || (arrayOfString2.length != 1))
        break;
      if (localRemoteInput != null);
      for (RemoteInputCompatBase.RemoteInput localRemoteInput1 = toCompatRemoteInput(localRemoteInput, paramFactory1); ; localRemoteInput1 = null)
      {
        return paramFactory.build(arrayOfString1, localRemoteInput1, localPendingIntent2, localPendingIntent1, arrayOfString2, paramBundle.getLong("timestamp"));
        arrayOfString3[i] = ((Bundle)arrayOfParcelable[i]).getString("text");
        String str = arrayOfString3[i];
        j = 0;
        if (str == null)
          break label52;
        i++;
        break;
      }
      j = 1;
      break label52;
      label198: break;
    }
  }

  private static RemoteInputCompatBase.RemoteInput toCompatRemoteInput(RemoteInput paramRemoteInput, RemoteInputCompatBase.RemoteInput.Factory paramFactory)
  {
    return paramFactory.build(paramRemoteInput.getResultKey(), paramRemoteInput.getLabel(), paramRemoteInput.getChoices(), paramRemoteInput.getAllowFreeFormInput(), paramRemoteInput.getExtras());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.app.NotificationCompatApi21
 * JD-Core Version:    0.6.0
 */