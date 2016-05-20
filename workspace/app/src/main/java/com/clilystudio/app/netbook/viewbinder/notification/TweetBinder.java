package com.clilystudio.app.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;
import com.clilystudio.app.netbook.model.NotificationItem;
import com.clilystudio.app.netbook.model.NotificationItem.Trigger;
import com.clilystudio.app.netbook.ui.post.TweetDetailActivity;

public abstract class TweetBinder extends NotifBinder
{
  public TweetBinder(NotificationItem paramNotificationItem)
  {
    super(paramNotificationItem);
  }

  public Intent getIntent(Context paramContext)
  {
    return TweetDetailActivity.a(paramContext, getItem().getJumpTo());
  }

  public String getMainText()
  {
    return getItem().getTrigger().getNickname() + ": " + getItem().getHeader();
  }

  public String getSubText()
  {
    return getItem().getSubTitle();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.viewbinder.notification.TweetBinder
 * JD-Core Version:    0.6.2
 */