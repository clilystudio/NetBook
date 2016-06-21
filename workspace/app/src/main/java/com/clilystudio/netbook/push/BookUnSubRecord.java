package com.clilystudio.netbook.push;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Delete;
import com.activeandroid.query.Select;
import com.clilystudio.netbook.hpay100.a.a;

import java.util.List;

@Table(name = "BookUnSubRecords")
public class BookUnSubRecord extends Model {
    @Column(name = "pushId")
    public String pushId;

    public static void create(String string) {
        if (BookUnSubRecord.get(string) == null) {
            BookUnSubRecord bookUnSubRecord = new BookUnSubRecord();
            bookUnSubRecord.pushId = string;
            bookUnSubRecord.save();
        }
    }

    public static void delete(String string) {
        new Delete().from(BookUnSubRecord.class).where("pushId = ?", string).execute();
    }

    public static BookUnSubRecord get(String string) {
        if (string == null) {
            return null;
        }
        return (BookUnSubRecord) new Select().from(BookUnSubRecord.class).where("pushId = ?", string).executeSingle();
    }

    public static List<BookUnSubRecord> getAll() {
        return new Select().from(BookUnSubRecord.class).execute();
    }

    public static BookUnSubRecord getBookId(String string) {
        return BookUnSubRecord.get(a.s(string));
    }
}
