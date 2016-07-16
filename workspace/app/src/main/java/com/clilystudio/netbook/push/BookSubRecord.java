package com.clilystudio.netbook.push;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Delete;
import com.activeandroid.query.Select;
import com.clilystudio.netbook.util.TempUtil;

import java.util.List;

@Table(name = "BookSubRecords")
public class BookSubRecord extends Model {
    @Column(name = "pushId")
    public String pushId;

    public static void create(String string) {
        if (BookSubRecord.get(string) == null) {
            BookSubRecord bookSubRecord = new BookSubRecord();
            bookSubRecord.pushId = string;
            bookSubRecord.save();
        }
    }

    public static void delete(String string) {
        new Delete().from(BookSubRecord.class).where("pushId = ?", string).execute();
    }

    public static BookSubRecord get(String string) {
        if (string == null) {
            return null;
        }
        return (BookSubRecord) new Select().from(BookSubRecord.class).where("pushId = ?", string).executeSingle();
    }

    public static List<BookSubRecord> getAll() {
        return new Select().from(BookSubRecord.class).execute();
    }

    public static BookSubRecord getBookId(String string) {
        return BookSubRecord.get(TempUtil.getPushId(string));
    }
}
