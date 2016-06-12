package com.clilystudio.netbook.viewbinder.notification;

import com.clilystudio.netbook.model.NotificationItem;

public class NotifBinderFactory {
// Error: Internal #201: 
// The following method may not be correct.

    private static final Class[] mNotifBinders = null;

    static {
    }

    public static NotifBinder create(NotificationItem NotificationItem1) {
        String String2;
        Class[] Class_1darray3;
        int int4;
        int int5;
        Object Object12;

        if (NotificationItem1 == null)
            Object12 = new NotificationItem();
        String2 = ((NotificationItem) Object12).getType();
        Class_1darray3 = mNotifBinders;
        int4 = Class_1darray3.length;
        for (int5 = 0; int5 < int4; ++int5) {
            Class Class6 = Class_1darray3[int5];

            try {
                NotifBinder NotifBinder11;

                if (!((String) org.apache.commons.lang3.a.a.a(Class6, "LABEL", false).get(new String())).equals(String2))
                    continue;
                NotifBinder11 = (NotifBinder) org.apache.commons.lang3.a.a.a(Class6, new Object[]{Object12});
            } catch (IllegalAccessException IllegalAccessException10) {
                throw new RuntimeException("Label field must be set for every NotifBinder.");
            } catch (NoSuchMethodException NoSuchMethodException9) {
                NoSuchMethodException9.printStackTrace();
            } catch (InstantiationException InstantiationException8) {
                InstantiationException8.printStackTrace();
            } catch (reflect.InvocationTargetException InvocationTargetException7) {
                InvocationTargetException7.printStackTrace();
            }
        }
        return (NotifBinder) new UnknowBinder((NotificationItem) Object12);
    }
}
