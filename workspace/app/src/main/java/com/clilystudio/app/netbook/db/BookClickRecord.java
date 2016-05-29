package com.clilystudio.app.netbook.db;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Delete;
import com.activeandroid.query.Select;

import java.util.List;

@Table(name = "BookClickRecords")
public class BookClickRecord extends Model {

    @Column(name = "book_id")
    public String book_id;

    @Column(name = "send_status")
    private boolean send_status = false;

    @Column(name = "today_time")
    public String today_time;

    public static BookClickRecord create(String paramString1, String paramString2, boolean paramBoolean) {
        BookClickRecord localBookClickRecord = new BookClickRecord();
        localBookClickRecord.book_id = paramString1;
        localBookClickRecord.today_time = paramString2;
        localBookClickRecord.send_status = paramBoolean;
        localBookClickRecord.save();
        return localBookClickRecord;
    }

    public static void deleteByBookId(String paramString) {
        if (paramString == null)
            return;
        new Delete().from(BookClickRecord.class).where("book_id = ?", new Object[]{paramString}).execute();
    }

    public static List<BookClickRecord> getBookClickRecords(String paramString) {
        if (paramString == null)
            return null;
        return new Select().from(BookClickRecord.class).where("book_id = ?", new Object[]{paramString}).execute();
    }

    public static List<BookClickRecord> getBookClickRecords(String paramString1, String paramString2) {
        if ((paramString1 == null) || (paramString2 == null))
            return null;
        return new Select().from(BookClickRecord.class).where("book_id = ? AND today_time = ?", new Object[]{paramString1, paramString2}).execute();
    }

    public boolean isSendStatus() {
        return this.send_status;
    }

    public void setSendStatus(boolean paramBoolean) {
        this.send_status = paramBoolean;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.db.BookClickRecord
 * JD-Core Version:    0.6.2
 */