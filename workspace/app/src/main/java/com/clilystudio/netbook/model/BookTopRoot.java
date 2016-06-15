package com.clilystudio.netbook.model;

public class BookTopRoot extends Root {
    Favorite favorite;

    public Favorite getFavorite() {
        return this.favorite;
    }

    public class Favorite {
        private String bookID;
        private String checksum;
        private String tocID;

        public String getBookID() {
            return this.bookID;
        }

        public void setBookID(String string) {
            this.bookID = string;
        }

        public String getChecksum() {
            return this.checksum;
        }

        public void setChecksum(String string) {
            this.checksum = string;
        }

        public String getTocID() {
            return this.tocID;
        }

        public void setTocID(String string) {
            this.tocID = string;
        }
    }
}
