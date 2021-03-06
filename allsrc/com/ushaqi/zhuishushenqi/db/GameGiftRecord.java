package com.ushaqi.zhuishushenqi.db;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;
import java.util.List;

@Table(name="GameGiftRecord")
public class GameGiftRecord extends Model
{

  @Column(name="giftCode")
  public String giftCode;

  @Column(name="giftId")
  public String giftId;

  @Column(name="userId")
  public String userId;

  public static void create(String paramString1, String paramString2, String paramString3)
  {
    GameGiftRecord localGameGiftRecord = new GameGiftRecord();
    localGameGiftRecord.userId = paramString1;
    localGameGiftRecord.giftId = paramString2;
    localGameGiftRecord.giftCode = paramString3;
    localGameGiftRecord.save();
  }

  public static List<GameGiftRecord> getRecords(String paramString1, String paramString2)
  {
    return new Select().from(GameGiftRecord.class).where("userId = ? AND giftId = ?", new Object[] { paramString1, paramString2 }).execute();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.db.GameGiftRecord
 * JD-Core Version:    0.6.0
 */