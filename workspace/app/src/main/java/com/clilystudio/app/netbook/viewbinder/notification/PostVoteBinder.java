package com.clilystudio.app.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;
import com.clilystudio.app.netbook.model.NotificationItem;
import com.clilystudio.app.netbook.model.NotificationItem.NotifPost;
import com.clilystudio.app.netbook.model.NotificationItem.Trigger;

public class PostVoteBinder extends NotifBinder
{
  public static final String LABEL = "post_vote";

  public PostVoteBinder(NotificationItem paramNotificationItem)
  {
    super(paramNotificationItem);
  }

  protected int getIconRes()
  {
    return 2130837917;
  }

  public Intent getIntent(Context paramContext)
  {
    return getPostIntent(paramContext, getItem().getMyPost());
  }

  public String getLabel()
  {
    return "post_vote";
  }

  public String getMainText()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = getItem().getTrigger().getNickname();
    return String.format("%s 参与了投票", arrayOfObject);
  }

  public String getSubText()
  {
    return getItem().getMyPost().getTitle();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.viewbinder.notification.PostVoteBinder
 * JD-Core Version:    0.6.2
 */