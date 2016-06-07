package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;
import com.clilystudio.netbook.model.NotificationItem;
import com.clilystudio.netbook.model.NotificationItem.Trigger;
import com.clilystudio.netbook.ui.post.TweetDetailActivity;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.viewbinder.notification.TweetBinder
 * JD-Core Version:    0.6.0
 */