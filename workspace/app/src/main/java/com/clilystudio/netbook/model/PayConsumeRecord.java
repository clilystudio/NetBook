package com.clilystudio.netbook.model;

import java.util.Date;

public class PayConsumeRecord {
    private boolean ok;
    private Order[] orders;

    public Order[] getOrders() {
        return this.orders;
    }

    public void setOrders(Order[] orders) {
        this.orders = orders;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
    public class OrderItem {
        private String book;
        private String bookName;
        private String chapterTitle;
        private int price;

        public String getBook() {
            return this.book;
        }

        public void setBook(String string) {
            this.book = string;
        }

        public String getBookName() {
            return this.bookName;
        }

        public void setBookName(String string) {
            this.bookName = string;
        }

        public String getChapterTitle() {
            return this.chapterTitle;
        }

        public void setChapterTitle(String string) {
            this.chapterTitle = string;
        }

        public int getPrice() {
            return this.price;
        }

        public void setPrice(int n) {
            this.price = n;
        }
    }
    public class Order {
        OrderItem[] items;
        private String _id;
        private Date created;
        private PayType payType;
        private int price;
        private String type;
        private int useCurrency;
        private int useVoucher;

        public String getBookName() {
            if (this.items == null || this.items.length == 0) {
                return "";
            }
            return this.items[0].getBookName();
        }

        public String getChapterTitle() {
            if (this.items == null || this.items.length == 0) {
                return "";
            }
            return this.items[0].getChapterTitle();
        }

        public Date getCreated() {
            return this.created;
        }

        public void setCreated(Date date) {
            this.created = date;
        }

        public OrderItem[] getItems() {
            return this.items;
        }

        public void setItems(OrderItem[] orderItems) {
            this.items = orderItems;
        }

        /*
         * Enabled aggressive block sorting
         */
        public PayConsumeRecord.PayType getPayType() {
            if (this.payType != null) return this.payType;
            if (!this.type.equals("single")) {
                if (this.type.equals("auto")) {
                    this.payType = PayType.AUTO_PURCHASE;
                    return this.payType;
                }
                if (this.type.equals("vip")) {
                    this.payType = PayType.VIP_SERVICE;
                    return this.payType;
                }
            }
            this.payType = PayType.SINGLE_CHAPTER;
            return this.payType;
        }

        public String getPayTypeString() {
            switch (1.$SwitchMap$com$ushaqi$zhuishushenqi$model$PayType[this.getPayType().ordinal()]) {
                default: {
                    return "";
                }
                case 1: {
                    return "\u5355\u7ae0\u8d2d\u4e70";
                }
                case 2: {
                    return "\u6279\u91cf\u8d2d\u4e70";
                }
                case 3: {
                    return "\u81ea\u52a8\u8d2d\u4e70";
                }
                case 4:
            }
            return "\u6574\u672c\u8d2d\u4e70";
        }

        public int getPrice() {
            return this.price;
        }

        public void setPrice(int n) {
            this.price = n;
        }

        public String[] getTitles() {
            String[] arrstring = new String[this.items.length];
            for (int i = 0; i < this.items.length; ++i) {
                arrstring[i] = this.items[i].getChapterTitle();
            }
            return arrstring;
        }

        public String getType() {
            return this.type;
        }

        public void setType(String string) {
            this.type = string;
        }

        public int getUseCurrency() {
            return this.useCurrency;
        }

        public void setUseCurrency(int n) {
            this.useCurrency = n;
        }

        public int getUseVoucher() {
            return this.useVoucher;
        }

        public void setUseVoucher(int n) {
            this.useVoucher = n;
        }

        public String get_id() {
            return this._id;
        }

        public void set_id(String string) {
            this._id = string;
        }
    }

    public enum PayType {
        SINGLE_CHAPTER, AUTO_PURCHASE, WHOLE_BOOK, MULTIPLE_CHAPTERS, VIP_SERVICE;
    }
}
