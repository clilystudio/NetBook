package android.support.v7.app;

import android.app.Notification;
import android.support.v4.app.NotificationBuilderWithBuilderAccessor;
import android.support.v4.app.NotificationCompat.Builder;
import android.support.v4.app.NotificationCompat.BuilderExtender;

final class E extends NotificationCompat.BuilderExtender
{
  public final Notification build(NotificationCompat.Builder paramBuilder, NotificationBuilderWithBuilderAccessor paramNotificationBuilderWithBuilderAccessor)
  {
    NotificationCompat.a(paramNotificationBuilderWithBuilderAccessor, paramBuilder.mStyle);
    return paramNotificationBuilderWithBuilderAccessor.build();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.app.E
 * JD-Core Version:    0.6.0
 */