package com.clilystudio.app.netbook.viewbinder.notification;

import com.clilystudio.app.netbook.model.NotificationItem;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.viewbinder.notification.RetweetBinder
 * JD-Core Version:    0.6.2
 */