package com.clilystudio.netbook.db;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Select;

import java.util.Date;
import java.util.List;

@Table(name = "BookTopicEnterRecord")
public class BookTopicEnterRecord
        extends Model {
    @Column(name = "book_id")
    public String book_id;
    @Column(name = "time")
    public Date time;
    @Column(name = "visit_count")
    private int visitCount;

    public BookTopicEnterRecord() {
    }

    public BookTopicEnterRecord(String string) {
        this();
        this.book_id = string;
    }

    public static BookTopicEnterRecord get(String string) {
        if (string == null) {
            return null;
        }
        List list = new Select().from(BookTopicEnterRecord.class).where("book_id = ?", string).execute();
        if (list.size() > 0) {
            return (BookTopicEnterRecord) list.get(0);
        }
        return new BookTopicEnterRecord(string);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void updateCount(String string, int n) {
        BookTopicEnterRecord bookTopicEnterRecord;
        if (n == 0 || (bookTopicEnterRecord = BookTopicEnterRecord.get(string)) == null || n <= bookTopicEnterRecord.getVisitCount()) {
            return;
        }
        bookTopicEnterRecord.setVisitCount(n);
        bookTopicEnterRecord.save();
    }

    public String getBook_id() {
        return this.book_id;
    }

    public void setBook_id(String string) {
        this.book_id = string;
    }

    @Deprecated
    public Date getTime() {
        return this.time;
    }

    @Deprecated
    public void setTime(Date date) {
        this.time = date;
    }

    public int getVisitCount() {
        return this.visitCount;
    }

    public void setVisitCount(int n) {
        this.visitCount = n;
    }
}
