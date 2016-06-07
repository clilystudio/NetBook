package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;
import com.clilystudio.netbook.model.NotificationItem;
import com.clilystudio.netbook.model.NotificationItem.NotifPost;
import com.clilystudio.netbook.model.NotificationItem.Trigger;

public class PostLikeBinder extends NotifBinder
{
  public static final String LABEL = "post_like";

  public PostLikeBinder(NotificationItem paramNotificationItem)
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
    return "post_like";
  }

  public String getMainText()
  {
    return getItem().getTrigger().getNickname() + " 同感了你的话题";
  }

  public String getSubText()
  {
    return getItem().getMyPost().getTitle();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.viewbinder.notification.PostLikeBinder
 * JD-Core Version:    0.6.0
 */