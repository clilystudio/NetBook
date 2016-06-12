
package com.clilystudio.netbook.umeng.update;

import android.content.Context;
import java.io.Serializable;
import org.json.JSONObject;
import u.a.f;
import u.a.g;

public class UpdateResponse extends f implements Serializable {

    public UpdateResponse(JSONObject JSONObject1)
    {
        super( JSONObject1 );
        try
        {
            hasUpdate = "Yes".equalsIgnoreCase( JSONObject1.optString( "update" ) );
            if( hasUpdate )
            {
                updateLog = JSONObject1.getString( "update_log" );
                version = JSONObject1.getString( "version" );
                path = JSONObject1.getString( "path" );
                target_size = JSONObject1.optString( "target_size" );
                new_md5 = JSONObject1.optString( "new_md5" );
                delta = JSONObject1.optBoolean( "delta" );
                if( delta )
                {
                    patch_md5 = JSONObject1.optString( "patch_md5" );
                    size = JSONObject1.optString( "size" );
                    origin = JSONObject1.optString( "origin" );
                }
            }
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
            return;
        }
    }

    public String new_md5;
    public String origin;
    public String patch_md5;
    public String path;
    public String proto_ver;
    public String size;
    public String target_size;
    public boolean hasUpdate = false;
    public String updateLog = null;
    public String version = null;
    public boolean delta = false;

    public String a(Context Context1, boolean boolean2)
    {
        String String3 = Context1.getString( u.a.c.a( Context1 ).d( "UMNewVersion" ) );
        String String4 = Context1.getString( u.a.c.a( Context1 ).d( "UMTargetSize" ) );
        String String5 = Context1.getString( u.a.c.a( Context1 ).d( "UMUpdateSize" ) );
        String String6 = Context1.getString( u.a.c.a( Context1 ).d( "UMUpdateContent" ) );
        String String7 = Context1.getString( u.a.c.a( Context1 ).d( "UMDialog_InstallAPK" ) );

        if( boolean2 )
        {
            Object[] Object_1darray11 = new Object[5];

            Object_1darray11[0] = String3;
            Object_1darray11[1] = version;
            Object_1darray11[2] = String7;
            Object_1darray11[3] = String6;
            Object_1darray11[4] = updateLog;
            return String.format( "%s %s\n%s\n\n%s\n%s\n", Object_1darray11 );
        }
        else
        {
            String String8;
            Object[] Object_1darray9;

            if( delta )
            {
                Object[] Object_1darray10 = new Object[2];

                Object_1darray10[0] = String5;
                Object_1darray10[1] = g.c( size );
                String8 = String.format( "\n%s %s", Object_1darray10 );
            }
            else
                String8 = "";
            Object_1darray9 = new Object[7];
            Object_1darray9[0] = String3;
            Object_1darray9[1] = version;
            Object_1darray9[2] = String4;
            Object_1darray9[3] = g.c( target_size );
            Object_1darray9[4] = String8;
            Object_1darray9[5] = String6;
            Object_1darray9[6] = updateLog;
            return String.format( "%s %s\n%s %s%s\n\n%s\n%s\n", Object_1darray9 );
        }
    }
}
