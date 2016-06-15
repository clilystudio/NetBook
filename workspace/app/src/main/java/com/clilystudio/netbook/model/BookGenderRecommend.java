package com.clilystudio.netbook.model;

import java.util.Date;

public class BookGenderRecommend {
    private BookGenderRecommend$RecommendBook[] books;
    private boolean ok;

    public BookGenderRecommend$RecommendBook[] getBooks() {
        return this.books;
    }

    public void setBooks(BookGenderRecommend$RecommendBook[] arrbookGenderRecommend$RecommendBook) {
        this.books = arrbookGenderRecommend$RecommendBook;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }

    public class BookGenderRecommend$RecommendBook {
        final /* synthetic */ BookGenderRecommend this$0;
        private String _id;
        private String author;
        private int chaptersCount;
        private String cover;
        private String lastChapter;
        private int latelyFollower;
        private double retentionRatio;
        private String shortIntro;
        private String title;
        private Date updated;

        public BookGenderRecommend$RecommendBook(BookGenderRecommend bookGenderRecommend) {
            this.this$0 = bookGenderRecommend;
        }

        public String getAuthor() {
            return this.author;
        }

        public void setAuthor(String string) {
            this.author = string;
        }

        public int getChaptersCount() {
            return this.chaptersCount;
        }

        public void setChaptersCount(int n) {
            this.chaptersCount = n;
        }

        public String getCover() {
            return this.cover;
        }

        public void setCover(String string) {
            this.cover = string;
        }

        public String getLastChapter() {
            return this.lastChapter;
        }

        public void setLastChapter(String string) {
            this.lastChapter = string;
        }

        public int getLatelyFollower() {
            return this.latelyFollower;
        }

        public void setLatelyFollower(int n) {
            this.latelyFollower = n;
        }

        public double getRetentionRatio() {
            return this.retentionRatio;
        }

        public void setRetentionRatio(double d) {
            this.retentionRatio = d;
        }

        public String getShortIntro() {
            return this.shortIntro;
        }

        public void setShortIntro(String string) {
            this.shortIntro = string;
        }

        public String getTitle() {
            return this.title;
        }

        public void setTitle(String string) {
            this.title = string;
        }

        public Date getUpdated() {
            return this.updated;
        }

        public void setUpdated(Date date) {
            this.updated = date;
        }

        public String get_id() {
            return this._id;
        }

        public void set_id(String string) {
            this._id = string;
        }
    }

}
