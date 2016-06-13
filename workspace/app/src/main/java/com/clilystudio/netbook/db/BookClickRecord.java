package com.clilystudio.netbook.db;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Delete;
import com.activeandroid.query.Select;

import java.util.List;

@Table(name = "BookClickRecords")
public class BookClickRecord
        extends Model {
    @Column(name = "book_id")
    public String book_id;
    @Column(name = "today_time")
    public String today_time;
    @Column(name = "send_status")
    private boolean send_status = false;

    public static BookClickRecord create(String string, String string2, boolean bl) {
        BookClickRecord bookClickRecord = new BookClickRecord();
        bookClickRecord.book_id = string;
        bookClickRecord.today_time = string2;
        bookClickRecord.send_status = bl;
        bookClickRecord.save();
        return bookClickRecord;
    }

    public static void deleteByBookId(String string) {
        if (string == null) {
            return;
        }
        new Delete().from(BookClickRecord.class).where("book_id = ?", string).execute();
    }

    public static List<BookClickRecord> getBookClickRecords(String string) {
        if (string == null) {
            return null;
        }
        return new Select().from(BookClickRecord.class).where("book_id = ?", string).execute();
    }

    public static List<BookClickRecord> getBookClickRecords(String string, String string2) {
        if (string == null || string2 == null) {
            return null;
        }
        return new Select().from(BookClickRecord.class).where("book_id = ? AND today_time = ?", string, string2).execute();
    }

    public boolean isSendStatus() {
        return this.send_status;
    }

    public void setSendStatus(boolean bl) {
        this.send_status = bl;
    }
}
