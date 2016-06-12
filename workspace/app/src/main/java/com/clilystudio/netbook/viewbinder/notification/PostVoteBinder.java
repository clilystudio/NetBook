
package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;
import com.clilystudio.netbook.model.NotificationItem;
import com.clilystudio.netbook.model.NotificationItem$NotifPost;
import com.clilystudio.netbook.model.NotificationItem$Trigger;

public class PostVoteBinder extends NotifBinder {

    public PostVoteBinder(NotificationItem NotificationItem1)
    {
        super( NotificationItem1 );
    }

    public static final String LABEL = "post_vote";

    protected int getIconRes()
    {
        return 2130837917;
    }

    public Intent getIntent(Context Context1)
    {
        return getPostIntent( Context1, getItem().getMyPost() );
    }

    public String getLabel()
    {
        return "post_vote";
    }

    public String getMainText()
    {
        Object[] Object_1darray1 = new Object[1];

        Object_1darray1[0] = getItem().getTrigger().getNickname();
        return String.format( "%s \u53C2\u4E0E\u4E86\u6295\u7968", Object_1darray1 );
    }

    public String getSubText()
    {
        return getItem().getMyPost().getTitle();
    }
}
