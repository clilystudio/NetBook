package com.clilystudio.netbook.push;

import com.activeandroid.Model;
import com.clilystudio.netbook.hpay100.a.a;

import java.util.List;

public class BookSubRecord extends Model {

    public String pushId;

    public static void create(String String1) {
        if (get(String1) == null) {
            BookSubRecord BookSubRecord2 = new BookSubRecord();

            BookSubRecord2.pushId = String1;
            BookSubRecord2.save();
        }
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static void delete(String String1) {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static BookSubRecord get(String String1) {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static List getAll() {
    }

    public static BookSubRecord getBookId(String String1) {
        return get(a.s(String1));
    }
}
