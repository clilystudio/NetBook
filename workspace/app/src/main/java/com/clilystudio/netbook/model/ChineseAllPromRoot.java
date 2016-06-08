package com.clilystudio.netbook.model;

public class ChineseAllPromRoot extends Root {
    ChineseAllPromRoot.Prom prom;

    public ChineseAllPromRoot.Prom getProm() {
        return this.prom;
    }

    public class Prom {
        private int __v;
        private String _id;
        private String book_name;
        private String link;

        public String getBook_name() {
            return this.book_name;
        }

        public void setBook_name(String paramString) {
            this.book_name = paramString;
        }

        public String getLink() {
            return this.link;
        }

        public void setLink(String paramString) {
            this.link = paramString;
        }

        public int get__v() {
            return this.__v;
        }

        public void set__v(int paramInt) {
            this.__v = paramInt;
        }

        public String get_id() {
            return this._id;
        }

        public void set_id(String paramString) {
            this._id = paramString;
        }
    }
}

