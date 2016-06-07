package com.ushaqi.zhuishushenqi.viewbinder.notification;

import com.ushaqi.zhuishushenqi.model.NotificationItem;

public class TweetComment extends TweetBinder
{
  public static final String LABEL = "comment_tweet";

  public TweetComment(NotificationItem paramNotificationItem)
  {
    super(paramNotificationItem);
  }

  protected int getIconRes()
  {
    return 2130837916;
  }

  public String getLabel()
  {
    return "comment_tweet";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.viewbinder.notification.TweetComment
 * JD-Core Version:    0.6.0
 */