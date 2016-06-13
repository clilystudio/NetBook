package com.clilystudio.netbook.db;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Select;

import java.util.List;

@Table(name = "GameGiftRecord")
public class GameGiftRecord
        extends Model {
    @Column(name = "giftCode")
    public String giftCode;
    @Column(name = "giftId")
    public String giftId;
    @Column(name = "userId")
    public String userId;

    public static void create(String string, String string2, String string3) {
        GameGiftRecord gameGiftRecord = new GameGiftRecord();
        gameGiftRecord.userId = string;
        gameGiftRecord.giftId = string2;
        gameGiftRecord.giftCode = string3;
        gameGiftRecord.save();
    }

    public static List<GameGiftRecord> getRecords(String string, String string2) {
        return new Select().from(GameGiftRecord.class).where("userId = ? AND giftId = ?", string, string2).execute();
    }
}
