package com.clilystudio.app.netbook.db;

import android.text.TextUtils;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Select;

@Table(name = "DownloadItem")
public class DownloadItem extends Model {

    @Column(name = "package_name")
    public String packageName;

    @Column(name = "uid")
    public String uid;

    public DownloadItem() {
    }

    public DownloadItem(String paramString) {
        this.packageName = paramString;
    }

    public static boolean existsInDb(String paramString) {
        if (TextUtils.isEmpty(paramString)) ;
        while (new Select().from(DownloadItem.class).where("package_name=?", new Object[]{paramString}).execute().size() == 0)
            return false;
        return true;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.db.DownloadItem
 * JD-Core Version:    0.6.2
 */