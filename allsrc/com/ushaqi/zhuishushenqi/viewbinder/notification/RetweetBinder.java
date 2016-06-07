package com.ushaqi.zhuishushenqi.viewbinder.notification;

import com.ushaqi.zhuishushenqi.model.NotificationItem;

public class RetweetBinder extends TweetBinder
{
  public static final String LABEL = "retweet";

  public RetweetBinder(NotificationItem paramNotificationItem)
  {
    super(paramNotificationItem);
  }

  protected int getIconRes()
  {
    return 2130837914;
  }

  public String getLabel()
  {
    return "retweet";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.viewbinder.notification.RetweetBinder
 * JD-Core Version:    0.6.0
 */