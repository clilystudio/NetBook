package com.clilystudio.netbook.model;

public class TopicSummary {
    private TopicSummaryBook[] books;
    private boolean ok;

    public TopicSummaryBook[] getBooks() {
        for (int i = 0; i < this.books.length; ++i) {
            if (this.books[i] != null) continue;
            this.books[i] = new TopicSummaryBook(this);
            this.books[i].set_id("");
        }
        return this.books;
    }

    public void setBooks(TopicSummaryBook[] topicSummaryBooks) {
        this.books = topicSummaryBooks;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }

    public class TopicSummaryBook {
        private String _id;
        private int postCount;

        public int getPostCount() {
            return this.postCount;
        }

        public void setPostCount(int n) {
            this.postCount = n;
        }

        public String get_id() {
            return this._id;
        }

        public void set_id(String string) {
            this._id = string;
        }
    }

}
