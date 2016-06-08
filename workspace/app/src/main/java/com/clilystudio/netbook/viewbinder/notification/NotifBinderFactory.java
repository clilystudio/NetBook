package com.clilystudio.netbook.viewbinder.notification;

import com.clilystudio.netbook.model.NotificationItem;

import org.apache.commons.lang3.a.a;

import java.lang.reflect.InvocationTargetException;

public class NotifBinderFactory {
    private static final Class[] mNotifBinders = {PostReplyBinder.class, PostDistillateBinder.class, PostPushBinder.class, LinkPushBinder.class, CommentReplyBinder.class, PostHotBinder.class, TweetComment.class, TweetCommentRely.class, CommentLikeBinder.class, PostLikeBinder.class, PostVoteBinder.class, RetweetBinder.class, FollowBinder.class};

    public static NotifBinder create(NotificationItem paramNotificationItem) {
        if (paramNotificationItem == null)
            paramNotificationItem = new NotificationItem();
        String str = paramNotificationItem.getType();
        Class[] arrayOfClass = mNotifBinders;
        int i = arrayOfClass.length;
        int j = 0;
        while (true)
            if (j < i) {
                Class localClass = arrayOfClass[j];
                try {
                    if (((String) a.a(localClass, "LABEL", false).get(new String())).equals(str)) {
                        NotifBinder localNotifBinder = (NotifBinder) a.a(localClass, new Object[]{paramNotificationItem});
                        return localNotifBinder;
                    }
                } catch (IllegalAccessException localIllegalAccessException) {
                    throw new RuntimeException("Label field must be set for every NotifBinder.");
                } catch (NoSuchMethodException localNoSuchMethodException) {
                    localNoSuchMethodException.printStackTrace();
                    j++;
                } catch (InstantiationException localInstantiationException) {
                    while (true)
                        localInstantiationException.printStackTrace();
                } catch (InvocationTargetException localInvocationTargetException) {
                    while (true)
                        localInvocationTargetException.printStackTrace();
                }
            }
        return new UnknowBinder(paramNotificationItem);
    }
}

