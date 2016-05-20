package com.clilystudio.app.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;
import com.clilystudio.app.netbook.model.NotificationItem;
import com.clilystudio.app.netbook.model.NotificationItem.NotifPost;

public class PostDistillateBinder extends OfficialNotifBinder
{
  public static final String LABEL = "post_distillate";
  public static final String MAIN_TEXT = "你的帖子被设为精华啦，社区离内涵高大上又近了一点~";

  public PostDistillateBinder(NotificationItem paramNotificationItem)
  {
    super(paramNotificationItem);
  }

  protected int getIconRes()
  {
    return getPostIcon();
  }

  public Intent getIntent(Context paramContext)
  {
    return getPostIntent(paramContext, getItem().getMyPost());
  }

  public String getLabel()
  {
    return "post_distillate";
  }

  public String getMainText()
  {
    return "你的帖子被设为精华啦，社区离内涵高大上又近了一点~";
  }

  public String getSubText()
  {
    return getItem().getMyPost().getTitle();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.viewbinder.notification.PostDistillateBinder
 * JD-Core Version:    0.6.2
 */