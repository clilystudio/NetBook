package com.clilystudio.netbook.db;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Select;

import java.util.List;

@Table(name = "VoteRecords")
public class VoteRecord extends Model {
    @Column(name = "account_id")
    public String account_id;
    @Column(name = "post_id")
    public String post_id;
    @Column(name = "vote_item_index")
    public int vote_item_index = -1;

    public static void create(String string, String string2, int n) {
        VoteRecord voteRecord = new VoteRecord();
        voteRecord.account_id = string;
        voteRecord.post_id = string2;
        voteRecord.vote_item_index = n;
        voteRecord.save();
    }

    public static List<VoteRecord> getVoteRecords(String string, String string2) {
        return new Select().from(VoteRecord.class).where("account_id = ? AND post_id = ?", string, string2).execute();
    }
}
