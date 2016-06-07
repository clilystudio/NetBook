package com.clilystudio.netbook.db;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;
import java.util.List;

@Table(name="VoteRecords")
public class VoteRecord extends Model
{

  @Column(name="account_id")
  public String account_id;

  @Column(name="post_id")
  public String post_id;

  @Column(name="vote_item_index")
  public int vote_item_index = -1;

  public static void create(String paramString1, String paramString2, int paramInt)
  {
    VoteRecord localVoteRecord = new VoteRecord();
    localVoteRecord.account_id = paramString1;
    localVoteRecord.post_id = paramString2;
    localVoteRecord.vote_item_index = paramInt;
    localVoteRecord.save();
  }

  public static List<VoteRecord> getVoteRecords(String paramString1, String paramString2)
  {
    return new Select().from(VoteRecord.class).where("account_id = ? AND post_id = ?", new Object[] { paramString1, paramString2 }).execute();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.db.VoteRecord
 * JD-Core Version:    0.6.0
 */