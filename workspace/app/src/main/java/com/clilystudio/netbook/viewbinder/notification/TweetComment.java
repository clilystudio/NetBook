
package com.clilystudio.netbook.viewbinder.notification;

import com.clilystudio.netbook.model.NotificationItem;

public class TweetComment extends TweetBinder {

    public TweetComment(NotificationItem NotificationItem1)
    {
        super( NotificationItem1 );
    }

    public static final String LABEL = "comment_tweet";

    protected int getIconRes()
    {
        return 2130837916;
    }

    public String getLabel()
    {
        return "comment_tweet";
    }
}
