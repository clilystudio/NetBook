package com.clilystudio.netbook.model;

public class NotificationRoot extends Root {
    private NotificationItem[] notifications = new NotificationItem[0];

    public NotificationItem[] getNotifications() {
        return this.notifications;
    }

    public void setNotifications(NotificationItem[] arrnotificationItem) {
        this.notifications = arrnotificationItem;
    }

    public class NotifComment {
         private String _id;
        private String content;
        private int floor;

        public String getContent() {
            return this.content;
        }

        public void setContent(String string) {
            this.content = string;
        }

        public int getFloor() {
            return this.floor;
        }

        public void setFloor(int n) {
            this.floor = n;
        }

        public String get_id() {
            return this._id;
        }

        public void set_id(String string) {
            this._id = string;
        }
    }

}
