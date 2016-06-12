
package com.clilystudio.netbook.db;

import android.text.TextUtils;
import com.activeandroid.Model;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;
import java.util.List;

public class DownloadItem extends Model {

    public DownloadItem(String String1)
    {
        packageName = String1;
    }

    public String packageName;
    public String uid;

    public DownloadItem()
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static boolean existsInDb(String String1)
    {
    }
}
