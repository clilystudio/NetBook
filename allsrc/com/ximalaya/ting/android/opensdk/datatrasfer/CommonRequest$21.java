package com.ximalaya.ting.android.opensdk.datatrasfer;

import com.google.gson.Gson;
import com.squareup.okhttp.I;
import com.squareup.okhttp.K;
import com.ximalaya.ting.android.opensdk.httputil.ExecutorDelivery;
import com.ximalaya.ting.android.opensdk.httputil.IHttpCallBack;
import com.ximalaya.ting.android.opensdk.model.column.ColumnDetailAlbum;
import com.ximalaya.ting.android.opensdk.model.column.ColumnDetailTrack;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

class CommonRequest$21
  implements IHttpCallBack
{
  public void onFailure(int paramInt, String paramString)
  {
    CommonRequest.access$0().postError(paramInt, paramString, this.val$callback);
  }

  public void onResponse(I paramI)
  {
    String str;
    JSONObject localJSONObject;
    Gson localGson;
    try
    {
      str = paramI.g().f();
      localJSONObject = new JSONObject(str);
      localGson = new Gson();
      if (localJSONObject.optInt("column_content_type", 0) == 1)
      {
        ColumnDetailAlbum localColumnDetailAlbum = (ColumnDetailAlbum)localGson.fromJson(str, new CommonRequest.21.1(this).getType());
        CommonRequest.access$0().postSuccess(this.val$callback, localColumnDetailAlbum);
        return;
      }
    }
    catch (JSONException localJSONException)
    {
      CommonRequest.access$0().postError(603, "parse data error", this.val$callback);
      return;
    }
    catch (IOException localIOException)
    {
      CommonRequest.access$0().postError(603, "parse data error", this.val$callback);
      return;
    }
    if (localJSONObject.optInt("column_content_type", 0) == 2)
    {
      ColumnDetailTrack localColumnDetailTrack = (ColumnDetailTrack)localGson.fromJson(str, new CommonRequest.21.2(this).getType());
      CommonRequest.access$0().postSuccess(this.val$callback, localColumnDetailTrack);
      return;
    }
    CommonRequest.access$0().postError(603, "parse data error", this.val$callback);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.datatrasfer.CommonRequest.21
 * JD-Core Version:    0.6.0
 */