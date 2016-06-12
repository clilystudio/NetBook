
package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;
import com.clilystudio.netbook.model.NotificationItem;
import com.clilystudio.netbook.model.NotificationItem$NotifPost;

public class PostPushBinder extends OfficialNotifBinder {

    public PostPushBinder(NotificationItem NotificationItem1)
    {
        super( NotificationItem1 );
    }

    public static final String LABEL = "post_push";

    protected int getIconRes()
    {
        return getPostIcon();
    }

    public Intent getIntent(Context Context1)
    {
        return getPostIntent( Context1, getItem().getPost() );
    }

    public String getLabel()
    {
        return "post_push";
    }

    public String getMainText()
    {
        return getItem().getTitle();
    }

    public String getSubText()
    {
        return getItem().getPost().getTitle();
    }
}
