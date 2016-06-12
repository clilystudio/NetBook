
package com.clilystudio.netbook.db;

import com.activeandroid.Model;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;
import java.util.List;

public class GameGiftRecord extends Model {

    public String giftCode;
    public String giftId;
    public String userId;

    public static void create(String String1, String String2, String String3)
    {
        GameGiftRecord GameGiftRecord4 = new GameGiftRecord();

        GameGiftRecord4.userId = String1;
        GameGiftRecord4.giftId = String2;
        GameGiftRecord4.giftCode = String3;
        GameGiftRecord4.save();
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static List getRecords(String String1, String String2)
    {
    }
}
