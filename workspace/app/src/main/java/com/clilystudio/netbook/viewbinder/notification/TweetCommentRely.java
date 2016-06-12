
package com.clilystudio.netbook.viewbinder.notification;

import com.clilystudio.netbook.model.NotificationItem;

public class TweetCommentRely extends TweetBinder {

    public TweetCommentRely(NotificationItem NotificationItem1)
    {
        super( NotificationItem1 );
    }

    public static final String LABEL = "reply_comment";

    protected int getIconRes()
    {
        return 2130837914;
    }

    public String getLabel()
    {
        return "reply_comment";
    }
}
