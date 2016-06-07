package android.support.v4.app;

import android.app.Notification;
import android.graphics.Bitmap;
import android.os.Build.VERSION;
import android.os.Bundle;

public final class NotificationCompat$CarExtender
  implements NotificationCompat.Extender
{
  private static final String EXTRA_CAR_EXTENDER = "android.car.EXTENSIONS";
  private static final String EXTRA_COLOR = "app_color";
  private static final String EXTRA_CONVERSATION = "car_conversation";
  private static final String EXTRA_LARGE_ICON = "large_icon";
  private static final String TAG = "CarExtender";
  private int mColor = 0;
  private Bitmap mLargeIcon;
  private NotificationCompat.CarExtender.UnreadConversation mUnreadConversation;

  public NotificationCompat$CarExtender()
  {
  }

  public NotificationCompat$CarExtender(Notification paramNotification)
  {
    if (Build.VERSION.SDK_INT < 21);
    while (true)
    {
      return;
      if (NotificationCompat.getExtras(paramNotification) == null);
      for (Bundle localBundle1 = null; localBundle1 != null; localBundle1 = NotificationCompat.getExtras(paramNotification).getBundle("android.car.EXTENSIONS"))
      {
        this.mLargeIcon = ((Bitmap)localBundle1.getParcelable("large_icon"));
        this.mColor = localBundle1.getInt("app_color", 0);
        Bundle localBundle2 = localBundle1.getBundle("car_conversation");
        this.mUnreadConversation = ((NotificationCompat.CarExtender.UnreadConversation)NotificationCompat.access$200().getUnreadConversationFromBundle(localBundle2, NotificationCompat.CarExtender.UnreadConversation.FACTORY, RemoteInput.FACTORY));
        return;
      }
    }
  }

  public final NotificationCompat.Builder extend(NotificationCompat.Builder paramBuilder)
  {
    if (Build.VERSION.SDK_INT < 21)
      return paramBuilder;
    Bundle localBundle = new Bundle();
    if (this.mLargeIcon != null)
      localBundle.putParcelable("large_icon", this.mLargeIcon);
    if (this.mColor != 0)
      localBundle.putInt("app_color", this.mColor);
    if (this.mUnreadConversation != null)
      localBundle.putBundle("car_conversation", NotificationCompat.access$200().getBundleForUnreadConversation(this.mUnreadConversation));
    paramBuilder.getExtras().putBundle("android.car.EXTENSIONS", localBundle);
    return paramBuilder;
  }

  public final int getColor()
  {
    return this.mColor;
  }

  public final Bitmap getLargeIcon()
  {
    return this.mLargeIcon;
  }

  public final NotificationCompat.CarExtender.UnreadConversation getUnreadConversation()
  {
    return this.mUnreadConversation;
  }

  public final CarExtender setColor(int paramInt)
  {
    this.mColor = paramInt;
    return this;
  }

  public final CarExtender setLargeIcon(Bitmap paramBitmap)
  {
    this.mLargeIcon = paramBitmap;
    return this;
  }

  public final CarExtender setUnreadConversation(NotificationCompat.CarExtender.UnreadConversation paramUnreadConversation)
  {
    this.mUnreadConversation = paramUnreadConversation;
    return this;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.app.NotificationCompat.CarExtender
 * JD-Core Version:    0.6.0
 */