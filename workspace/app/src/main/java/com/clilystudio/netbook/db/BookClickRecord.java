
package com.clilystudio.netbook.db;

import com.activeandroid.Model;
import com.activeandroid.query.Delete;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;
import java.util.List;

public class BookClickRecord extends Model {

    public String book_id;
    public String today_time;
    private boolean send_status = false;

    public static BookClickRecord create(String String1, String String2, boolean boolean3)
    {
        BookClickRecord BookClickRecord4 = new BookClickRecord();

        BookClickRecord4.book_id = String1;
        BookClickRecord4.today_time = String2;
        BookClickRecord4.send_status = boolean3;
        BookClickRecord4.save();
        return BookClickRecord4;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static void deleteByBookId(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static List getBookClickRecords(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static List getBookClickRecords(String String1, String String2)
    {
    }

    public boolean isSendStatus()
    {
        return send_status;
    }

    public void setSendStatus(boolean boolean1)
    {
        send_status = boolean1;
    }
}
