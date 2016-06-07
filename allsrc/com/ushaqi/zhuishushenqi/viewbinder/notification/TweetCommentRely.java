package com.ushaqi.zhuishushenqi.viewbinder.notification;

import com.ushaqi.zhuishushenqi.model.NotificationItem;

public class TweetCommentRely extends TweetBinder
{
  public static final String LABEL = "reply_comment";

  public TweetCommentRely(NotificationItem paramNotificationItem)
  {
    super(paramNotificationItem);
  }

  protected int getIconRes()
  {
    return 2130837914;
  }

  public String getLabel()
  {
    return "reply_comment";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.viewbinder.notification.TweetCommentRely
 * JD-Core Version:    0.6.0
 */