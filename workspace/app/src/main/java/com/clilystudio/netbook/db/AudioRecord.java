
package com.clilystudio.netbook.db;

import com.activeandroid.Model;
import com.activeandroid.query.Delete;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;
import com.activeandroid.util.SQLiteUtils;
import com.ximalaya.ting.android.opensdk.model.album.Album;
import java.util.Date;
import java.util.List;

public class AudioRecord extends Model {

    private String bookId;
    private String desc;
    private String imgUrl;
    private long lastRead;
    private long lastUpdate;
    private String name;
    private boolean top;
    private int track;
    private boolean updateReaded;
    private String userId;
// Error: Internal #201: 
// The following method may not be correct.

    public static void cancelFollow(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static AudioRecord find(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static List findAll()
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static boolean isFollowed(String String1)
    {
    }

    public static void save2DB(String String1, String String2, String String3, String String4, int int5, long long6)
    {
        AudioRecord AudioRecord8 = new AudioRecord();

        AudioRecord8.setBookId( String1 );
        AudioRecord8.setName( String2 );
        AudioRecord8.setDesc( String3 );
        AudioRecord8.setImgUrl( String4 );
        AudioRecord8.setTrack( int5 );
        AudioRecord8.setLastUpdate( long6 );
        AudioRecord8.setLastRead( new Date().getTime() );
        AudioRecord8.save();
    }

    public static void updateLastRead(String String1)
    {
        new SQLiteUtils();
        SQLiteUtils.execSql( new StringBuilder( "UPDATE AudioRecord SET lastRead = " ).append( new Date().getTime() ).append( " WHERE bookId =" ).append( String1 ).toString() );
    }

    public static void updateLastTime(String String1, long long2)
    {
        new SQLiteUtils();
        SQLiteUtils.execSql( new StringBuilder( "UPDATE AudioRecord SET lastUpdate =" ).append( long2 ).append( " WHERE bookId =" ).append( String1 ).toString() );
    }

    public static void updateRecordRead(String String1, boolean boolean2)
    {
        StringBuilder StringBuilder4;
        int int5;

        new SQLiteUtils();
        StringBuilder4 = new StringBuilder( "UPDATE AudioRecord SET updateReaded = " );
        if( boolean2 )
            int5 = 1;
        else
            int5 = 0;
        SQLiteUtils.execSql( StringBuilder4.append( int5 ).append( " WHERE bookId =" ).append( String1 ).toString() );
    }

    public static void updateTrack(String String1, int int2)
    {
        new SQLiteUtils();
        SQLiteUtils.execSql( new StringBuilder( "UPDATE AudioRecord SET track =" ).append( int2 ).append( " WHERE bookId =" ).append( String1 ).toString() );
    }

    public Album convert2Album()
    {
        Album Album1;

        try
        {
            Album1 = new Album();
        }
        catch( Exception Exception2 )
        {
            Album1 = null;
        }
        Album1.setId( (long) Integer.parseInt( bookId ) );
        Album1.setAlbumTitle( name );
        Album1.setAlbumIntro( desc );
        Album1.setCoverUrlSmall( imgUrl );
        return Album1;
    }

    public String getBookId()
    {
        return bookId;
    }

    public String getDesc()
    {
        return desc;
    }

    public String getImgUrl()
    {
        return imgUrl;
    }

    public long getLastRead()
    {
        return lastRead;
    }

    public long getLastUpdate()
    {
        return lastUpdate;
    }

    public String getName()
    {
        return name;
    }

    public int getTrack()
    {
        return track;
    }

    public String getUserId()
    {
        return userId;
    }

    public boolean isTop()
    {
        return top;
    }

    public boolean isUpdateReaded()
    {
        return updateReaded;
    }

    public void setBookId(String String1)
    {
        bookId = String1;
    }

    public void setDesc(String String1)
    {
        desc = String1;
    }

    public void setImgUrl(String String1)
    {
        imgUrl = String1;
    }

    public void setLastRead(long long1)
    {
        lastRead = long1;
    }

    public void setLastUpdate(long long1)
    {
        lastUpdate = long1;
    }

    public void setName(String String1)
    {
        name = String1;
    }

    public void setTop(boolean boolean1)
    {
        top = boolean1;
    }

    public void setTrack(int int1)
    {
        track = int1;
    }

    public void setUpdateReaded(boolean boolean1)
    {
        updateReaded = boolean1;
    }

    public void setUserId(String String1)
    {
        userId = String1;
    }
}
