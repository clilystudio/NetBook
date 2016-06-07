package com.ushaqi.zhuishushenqi.model;

public class NotificationRoot extends Root
{
  private NotificationItem[] notifications = new NotificationItem[0];

  public NotificationItem[] getNotifications()
  {
    return this.notifications;
  }

  public void setNotifications(NotificationItem[] paramArrayOfNotificationItem)
  {
    this.notifications = paramArrayOfNotificationItem;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.NotificationRoot
 * JD-Core Version:    0.6.0
 */