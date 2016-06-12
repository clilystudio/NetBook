package com.clilystudio.netbook.db;

import com.activeandroid.Model;

public class DownloadItem extends Model {

    public String packageName;
    public String uid;
    public DownloadItem(String String1) {
        packageName = String1;
    }

    public DownloadItem() {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static boolean existsInDb(String String1) {
    }
}
