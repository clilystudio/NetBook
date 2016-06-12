
package com.clilystudio.netbook.model;

public class NotificationRoot extends Root {

    private NotificationItem[] notifications = new NotificationItem[0];

    public NotificationItem[] getNotifications()
    {
        return notifications;
    }

    public void setNotifications(NotificationItem[] NotificationItem_1darray1)
    {
        notifications = NotificationItem_1darray1;
    }
}
