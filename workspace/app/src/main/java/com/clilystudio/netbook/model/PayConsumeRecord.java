package com.clilystudio.netbook.model;

import java.util.Date;

public class PayConsumeRecord {
    private boolean ok;
    private PayConsumeRecord.Order[] orders;

    public PayConsumeRecord.Order[] getOrders() {
        return this.orders;
    }

    public void setOrders(PayConsumeRecord.Order[] paramArrayOfOrder) {
        this.orders = paramArrayOfOrder;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }

    public class Order {
        PayConsumeRecord.OrderItem[] items;
        private String _id;
        private Date created;
        private PayConsumeRecord.PayType payType;
        private int price;
        private String type;
        private int useCurrency;
        private int useVoucher;

        public String getBookName() {
            if ((this.items == null) || (this.items.length == 0))
                return "";
            return this.items[0].getBookName();
        }

        public String getChapterTitle() {
            if ((this.items == null) || (this.items.length == 0))
                return "";
            return this.items[0].getChapterTitle();
        }

        public Date getCreated() {
            return this.created;
        }

        public void setCreated(Date paramDate) {
            this.created = paramDate;
        }

        public PayConsumeRecord.OrderItem[] getItems() {
            return this.items;
        }

        public void setItems(PayConsumeRecord.OrderItem[] paramArrayOfOrderItem) {
            this.items = paramArrayOfOrderItem;
        }

        public PayConsumeRecord.PayType getPayType() {
            if (this.payType == null) {
                if (this.type.equals("single")) {
                    this.payType = PayConsumeRecord.PayType.SINGLE_CHAPTER;
                } else if (this.type.equals("auto")) {
                    this.payType = PayConsumeRecord.PayType.AUTO_PURCHASE;
                } else if (this.type.equals("vip")) {
                    this.payType = PayConsumeRecord.PayType.VIP_SERVICE;
                }
            }
            return this.payType;
        }

        public String getPayTypeString() {
            if (getPayType() == PayType.SINGLE_CHAPTER) {
                return "单章购买";
            } else if (getPayType() == PayType.MULTIPLE_CHAPTERS) {
                return "批量购买";
            } else if (getPayType() == PayType.AUTO_PURCHASE) {
                return "自动购买";
            } else if (getPayType() == PayType.WHOLE_BOOK) {
                return "整本购买";
            } else {
                return "";
            }
        }

        public int getPrice() {
            return this.price;
        }

        public void setPrice(int paramInt) {
            this.price = paramInt;
        }

        public String[] getTitles() {
            String[] arrayOfString = new String[this.items.length];
            for (int i = 0; i < this.items.length; i++)
                arrayOfString[i] = this.items[i].getChapterTitle();
            return arrayOfString;
        }

        public String getType() {
            return this.type;
        }

        public void setType(String paramString) {
            this.type = paramString;
        }

        public int getUseCurrency() {
            return this.useCurrency;
        }

        public void setUseCurrency(int paramInt) {
            this.useCurrency = paramInt;
        }

        public int getUseVoucher() {
            return this.useVoucher;
        }

        public void setUseVoucher(int paramInt) {
            this.useVoucher = paramInt;
        }

        public String get_id() {
            return this._id;
        }

        public void set_id(String paramString) {
            this._id = paramString;
        }
    }


    public class OrderItem {
        private String book;
        private String bookName;
        private String chapterTitle;
        private int price;

        public String getBook() {
            return this.book;
        }

        public void setBook(String paramString) {
            this.book = paramString;
        }

        public String getBookName() {
            return this.bookName;
        }

        public void setBookName(String paramString) {
            this.bookName = paramString;
        }

        public String getChapterTitle() {
            return this.chapterTitle;
        }

        public void setChapterTitle(String paramString) {
            this.chapterTitle = paramString;
        }

        public int getPrice() {
            return this.price;
        }

        public void setPrice(int paramInt) {
            this.price = paramInt;
        }
    }

    public enum PayType {
        SINGLE_CHAPTER, AUTO_PURCHASE, WHOLE_BOOK, MULTIPLE_CHAPTERS, VIP_SERVICE;
    }
}

