package com.clilystudio.netbook.push;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Delete;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;
import com.arcsoft.hpay100.a.a;
import java.util.List;

@Table(name="BookSubRecords")
public class BookSubRecord extends Model
{

  @Column(name="pushId", unique=true)
  public String pushId;

  public static void create(String paramString)
  {
    if (get(paramString) == null)
    {
      BookSubRecord localBookSubRecord = new BookSubRecord();
      localBookSubRecord.pushId = paramString;
      localBookSubRecord.save();
    }
  }

  public static void delete(String paramString)
  {
    new Delete().from(BookSubRecord.class).where("pushId = ?", new Object[] { paramString }).execute();
  }

  public static BookSubRecord get(String paramString)
  {
    if (paramString == null)
      return null;
    return (BookSubRecord)new Select().from(BookSubRecord.class).where("pushId = ?", new Object[] { paramString }).executeSingle();
  }

  public static List<BookSubRecord> getAll()
  {
    return new Select().from(BookSubRecord.class).execute();
  }

  public static BookSubRecord getBookId(String paramString)
  {
    return get(a.s(paramString));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.push.BookSubRecord
 * JD-Core Version:    0.6.0
 */