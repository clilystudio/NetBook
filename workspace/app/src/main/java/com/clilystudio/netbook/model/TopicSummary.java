package com.clilystudio.netbook.model;

public class TopicSummary {
    private TopicSummary.TopicSummaryBook[] books;
    private boolean ok;

    public TopicSummary.TopicSummaryBook[] getBooks() {
        for (int i = 0; i < this.books.length; i++) {
            if (this.books[i] != null)
                continue;
            this.books[i] = new TopicSummary.TopicSummaryBook(this);
            this.books[i].set_id("");
        }
        return this.books;
    }

    public void setBooks(TopicSummary.TopicSummaryBook[] paramArrayOfTopicSummaryBook) {
        this.books = paramArrayOfTopicSummaryBook;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }

    public class TopicSummaryBook {
        private String _id;
        private int postCount;

        public TopicSummaryBook(TopicSummary paramTopicSummary) {
        }

        public int getPostCount() {
            return this.postCount;
        }

        public void setPostCount(int paramInt) {
            this.postCount = paramInt;
        }

        public String get_id() {
            return this._id;
        }

        public void set_id(String paramString) {
            this._id = paramString;
        }
    }
}

