package com.clilystudio.netbook.model;

public class TopicSummary {
    private TopicSummary$TopicSummaryBook[] books;
    private boolean ok;

    public TopicSummary$TopicSummaryBook[] getBooks() {
        for (int i = 0; i < this.books.length; ++i) {
            if (this.books[i] != null) continue;
            this.books[i] = new TopicSummary$TopicSummaryBook(this);
            this.books[i].set_id("");
        }
        return this.books;
    }

    public void setBooks(TopicSummary$TopicSummaryBook[] arrtopicSummary$TopicSummaryBook) {
        this.books = arrtopicSummary$TopicSummaryBook;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
