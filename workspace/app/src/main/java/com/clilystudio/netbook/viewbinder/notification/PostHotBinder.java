
package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;
import com.clilystudio.netbook.model.NotificationItem;
import com.clilystudio.netbook.model.NotificationItem$NotifPost;

public class PostHotBinder extends OfficialNotifBinder {

    public PostHotBinder(NotificationItem NotificationItem1)
    {
        super( NotificationItem1 );
    }

    public static final String LABEL = "post_hot";
    public static final String MAIN_TEXT = "\u4F60\u7684\u5E16\u5B50\u88AB\u8BBE\u4E3A\u70ED\u95E8\u5566\uFF0C\u793E\u533A\u79BB\u7A7A\u865A\u5BC2\u5BDE\u51B7\u66F4\u8FDC\u4E86\u4E00\u70B9~";

    protected int getIconRes()
    {
        return getPostIcon();
    }

    public Intent getIntent(Context Context1)
    {
        return getPostIntent( Context1, getItem().getMyPost() );
    }

    public String getLabel()
    {
        return "post_hot";
    }

    public String getMainText()
    {
        return "\u4F60\u7684\u5E16\u5B50\u88AB\u8BBE\u4E3A\u70ED\u95E8\u5566\uFF0C\u793E\u533A\u79BB\u7A7A\u865A\u5BC2\u5BDE\u51B7\u66F4\u8FDC\u4E86\u4E00\u70B9~";
    }

    public String getSubText()
    {
        return getItem().getMyPost().getTitle();
    }
}
