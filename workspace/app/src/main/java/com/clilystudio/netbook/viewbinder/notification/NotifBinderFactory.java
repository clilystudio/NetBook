package com.clilystudio.netbook.viewbinder.notification;

import com.clilystudio.netbook.model.NotificationItem;


import java.lang.reflect.InvocationTargetException;

public class NotifBinderFactory {
    private static final Class[] mNotifBinders = new Class[]{PostReplyBinder.class, PostDistillateBinder.class, PostPushBinder.class, LinkPushBinder.class, CommentReplyBinder.class, PostHotBinder.class, TweetComment.class, TweetCommentRely.class, CommentLikeBinder.class, PostLikeBinder.class, PostVoteBinder.class, RetweetBinder.class, FollowBinder.class};

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static NotifBinder create(NotificationItem notificationItem) {
        if (notificationItem == null) {
            notificationItem = new NotificationItem();
        }
        String string = notificationItem.getType();
        Class[] arrclass = mNotifBinders;
        int n = arrclass.length;
        int n2 = 0;
        while (n2 < n) {
            Class class_ = arrclass[n2];
            try {
                if (((String) a.a(class_, "LABEL", false).get(new String())).equals(string)) {
                    return (NotifBinder) a.a(class_, notificationItem);
                }
            } catch (IllegalAccessException var9_10) {
                throw new RuntimeException("Label field must be set for every NotifBinder.");
            } catch (NoSuchMethodException var8_8) {
                var8_8.printStackTrace();
            } catch (InstantiationException var7_7) {
                var7_7.printStackTrace();
            } catch (InvocationTargetException var6_6) {
                var6_6.printStackTrace();
            }
            ++n2;
        }
        return new UnknowBinder(notificationItem);
    }
}
