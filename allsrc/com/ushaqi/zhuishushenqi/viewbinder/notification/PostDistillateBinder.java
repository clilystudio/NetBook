package com.ushaqi.zhuishushenqi.viewbinder.notification;

import android.content.Context;
import android.content.Intent;
import com.ushaqi.zhuishushenqi.model.NotificationItem;
import com.ushaqi.zhuishushenqi.model.NotificationItem.NotifPost;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.viewbinder.notification.PostDistillateBinder
 * JD-Core Version:    0.6.0
 */